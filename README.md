# Migrating Grafana's database from sqlite3 to postgresql
The main problem in migrating Grafana to Postgresql is that sqlite3 doesn't support boolean column types, therefore the columns will be bigint, while Grafana expects boolean type and fails to start. Pgloader cannot modify your data to the required type, so I had to write a script to fix the tables after the migration happened.

This script will need an example database that works with grafana. It is created in the 2. section in a database called **`grafananew`**.

We will use pgloader to migrate the grafana.db file to postgresql into a freshly created emptydatabase called **`grafana`**.

After that, the script will scan both database and find the differences in all the table's columns types and tries to alter the tables to the right type.

### Prerequisites
Installed dependencies:
- postgresql, to run psql command
- pgloader (optional), or you can use pgloader.sh file to run it with podman
- Podman or docker (optional)

### 1. Prepare postgresql
- Create a user called grafana in your postgresql
- Create a new database called **`grafana`**, with the owner: grafana
- Create a new database called **`grafananew`**, with the owner: grafana

### 2. Creating a working, empty database for Grafana in the **grafananew** db
- Stop your Grafana instance
- **Modify Grafana's configuration** to use your **postgresql** as the database, with the freshly created **`grafananew`** database.
- **Start** up your grafana.
- **Open Grafana in your browser.** While Grafana is setting up the database, the login screen will be not available, it will just timeout. **Wait until grafana's login page is available.**
- **Stop** your grafana.

### 3. Migrate sqlite to **grafana** db
Use pgloader to migrate Grafana's sqlite3 database to the **`grafana`** database created in the first section.
- Copy main.load to you computer.
- Open the file and fill in the placeholders.

If you installed pgloader:
- Run `pgloader main.load`

If you want to use pgloader in a container image:
- Copy pgloader.sh to your computer.
- Open the file and fill in the placeholders.
- Run pgloader.sh
- Inside the container, run pgloader main.load

It should run without problems, it takes a while and it will report you the amount of data affected in the process.

- Exit the container

### 4. Fix the migrated database
- Copy fix_db.sh to your computer
- chmod +x fix_db.sh
- Open the file and fill in the placeholders.
- Run the file. It should not give you any errors.

### 5. Starting up grafana with the new db
- **Modify Grafana's configuration** to use the **`grafana`** database.
- Start grafana.
- ???
- Profit