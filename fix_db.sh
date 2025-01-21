#!/bin/bash

# Database connection details
# Database's name where you migrated your sqlite
DB1="grafana"
# Database's name with a new, populated grafana database
DB2="grafananew"

USER="postgres_username"
PASSWORD="postgres_user_password"

HOST="localhost"
PORT="5432"

# CSV files to store column information
COLUMNS_DB1="columns_${DB1}.csv"
COLUMNS_DB2="columns_${DB2}.csv"

# Function to extract column information and save as CSV
extract_columns() {
  local db=$1
  local output_file=$2
  PGPASSWORD=$PASSWORD psql -h $HOST -p $PORT -U $USER -d $db -t -A -F"," -c "
    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_schema = 'public'
    ORDER BY table_name, column_name;" > $output_file
}

# Extract column information from both databases
extract_columns $DB1 $COLUMNS_DB1
extract_columns $DB2 $COLUMNS_DB2

# File to store the ALTER TABLE statements
ALTER_STATEMENTS="alter_statements.sql"

# Function to quote identifiers if necessary
quote_identifier() {
  local identifier=$1
  echo "\"$identifier\""
}

# Compare the column information and generate ALTER TABLE statements
echo "Comparing column types between $DB1 and $DB2..."
awk -F"," -v DB1=$DB1 -v DB2=$DB2 -v ALTER_STATEMENTS=$ALTER_STATEMENTS '
  function quote_identifier(identifier) {
    return "\"" identifier "\""
  }
  NR==FNR {a[$1","$2]=$3; next}
  {
    key = $1","$2
    if (a[key] && a[key] != $3) {
      table_name = quote_identifier($1)
      column_name = quote_identifier($2)
      if (a[key] == "bigint" && $3 == "boolean") {
        print "ALTER TABLE " table_name " ALTER COLUMN " column_name " DROP DEFAULT;" >> ALTER_STATEMENTS
        print "ALTER TABLE " table_name " ALTER COLUMN " column_name " TYPE " $3 " USING CASE WHEN " column_name " = 0 THEN FALSE ELSE TRUE END;" >> ALTER_STATEMENTS
        print "ALTER TABLE " table_name " ALTER COLUMN " column_name " SET DEFAULT FALSE;" >> ALTER_STATEMENTS
      } else {
        print "ALTER TABLE " table_name " ALTER COLUMN " column_name " TYPE " $3 " USING " column_name "::" $3 ";" >> ALTER_STATEMENTS
      }
    }
  }
' $COLUMNS_DB1 $COLUMNS_DB2

# Execute the ALTER TABLE statements on the grafana database
if [ -s $ALTER_STATEMENTS ]; then
  echo "Applying changes to $DB1..."
  PGPASSWORD=$PASSWORD psql -h $HOST -p $PORT -U $USER -d $DB1 -f $ALTER_STATEMENTS
else
  echo "No differences found between $DB1 and $DB2."
fi

# Clean up
rm $COLUMNS_DB1 $COLUMNS_DB2 $ALTER_STATEMENTS
