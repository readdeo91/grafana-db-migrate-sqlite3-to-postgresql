CREATE SEQUENCE public.provenance_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.provenance_type_id_seq OWNER TO grafana;
ALTER SEQUENCE public.provenance_type_id_seq OWNED BY public.provenance_type.id;
ALTER TABLE ONLY public.provenance_type ALTER COLUMN id SET DEFAULT nextval('public.provenance_type_id_seq'::regclass);
SELECT pg_catalog.setval('public.provenance_type_id_seq', 120, true);
-- Name: temp_user_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.temp_user_id_seq;
ALTER SEQUENCE public.temp_user_id_seq OWNER TO grafana;
-- Name: temp_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.temp_user_id_seq OWNED BY public.temp_user.id;
ALTER TABLE ONLY public.temp_user ALTER COLUMN id SET DEFAULT nextval('public.temp_user_id_seq'::regclass);
-- Name: temp_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.temp_user_id_seq', 1, false);
-- Name: dashboard_provisioning_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.dashboard_provisioning_id_seq;
ALTER SEQUENCE public.dashboard_provisioning_id_seq OWNER TO grafana;
-- Name: dashboard_provisioning_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.dashboard_provisioning_id_seq OWNED BY public.dashboard_provisioning.id;
ALTER TABLE ONLY public.dashboard_provisioning ALTER COLUMN id SET DEFAULT nextval('public.dashboard_provisioning_id_seq'::regclass);
-- Name: dashboard_provisioning_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.dashboard_provisioning_id_seq', 1, false);
-- Name: dashboard_snapshot_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.dashboard_snapshot_id_seq;
ALTER SEQUENCE public.dashboard_snapshot_id_seq OWNER TO grafana;
-- Name: dashboard_snapshot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.dashboard_snapshot_id_seq OWNED BY public.dashboard_snapshot.id;
ALTER TABLE ONLY public.dashboard_snapshot ALTER COLUMN id SET DEFAULT nextval('public.dashboard_snapshot_id_seq'::regclass);
-- Name: dashboard_snapshot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.dashboard_snapshot_id_seq', 1, false);
-- Name: quota_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.quota_id_seq;
ALTER SEQUENCE public.quota_id_seq OWNER TO grafana;
-- Name: quota_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.quota_id_seq OWNED BY public.quota.id;
ALTER TABLE ONLY public.quota ALTER COLUMN id SET DEFAULT nextval('public.quota_id_seq'::regclass);
-- Name: quota_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.quota_id_seq', 1, false);
-- Name: plugin_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.plugin_setting_id_seq;
ALTER SEQUENCE public.plugin_setting_id_seq OWNER TO grafana;
-- Name: plugin_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.plugin_setting_id_seq OWNED BY public.plugin_setting.id;
ALTER TABLE ONLY public.plugin_setting ALTER COLUMN id SET DEFAULT nextval('public.plugin_setting_id_seq'::regclass);
-- Name: plugin_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.plugin_setting_id_seq', 1, false);
-- Name: playlist_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.playlist_id_seq;
ALTER SEQUENCE public.playlist_id_seq OWNER TO grafana;
-- Name: playlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.playlist_id_seq OWNED BY public.playlist.id;
ALTER TABLE ONLY public.playlist ALTER COLUMN id SET DEFAULT nextval('public.playlist_id_seq'::regclass);
-- Name: playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.playlist_id_seq', 1, false);
-- Name: playlist_item_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.playlist_item_id_seq;
ALTER SEQUENCE public.playlist_item_id_seq OWNER TO grafana;
-- Name: playlist_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.playlist_item_id_seq OWNED BY public.playlist_item.id;
ALTER TABLE ONLY public.playlist_item ALTER COLUMN id SET DEFAULT nextval('public.playlist_item_id_seq'::regclass);
-- Name: playlist_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.playlist_item_id_seq', 1, false);
-- Name: alert_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.alert_id_seq;
ALTER SEQUENCE public.alert_id_seq OWNER TO grafana;
-- Name: alert_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.alert_id_seq OWNED BY public.alert.id;
ALTER TABLE ONLY public.alert ALTER COLUMN id SET DEFAULT nextval('public.alert_id_seq'::regclass);
-- Name: alert_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.alert_id_seq', 1, false);
-- Name: alert_rule_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.alert_rule_tag_id_seq;
ALTER SEQUENCE public.alert_rule_tag_id_seq OWNER TO grafana;
-- Name: alert_rule_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.alert_rule_tag_id_seq OWNED BY public.alert_rule_tag.id;
ALTER TABLE ONLY public.alert_rule_tag ALTER COLUMN id SET DEFAULT nextval('public.alert_rule_tag_id_seq'::regclass);
-- Name: alert_rule_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.alert_rule_tag_id_seq', 1, false);
-- Name: alert_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.alert_notification_id_seq;
ALTER SEQUENCE public.alert_notification_id_seq OWNER TO grafana;
-- Name: alert_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.alert_notification_id_seq OWNED BY public.alert_notification.id;
ALTER TABLE ONLY public.alert_notification ALTER COLUMN id SET DEFAULT nextval('public.alert_notification_id_seq'::regclass);
-- Name: alert_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.alert_notification_id_seq', 1, false);
-- Name: alert_notification_state_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.alert_notification_state_id_seq;
ALTER SEQUENCE public.alert_notification_state_id_seq OWNER TO grafana;
-- Name: alert_notification_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.alert_notification_state_id_seq OWNED BY public.alert_notification_state.id;
ALTER TABLE ONLY public.alert_notification_state ALTER COLUMN id SET DEFAULT nextval('public.alert_notification_state_id_seq'::regclass);
-- Name: alert_notification_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.alert_notification_state_id_seq', 1, false);
-- Name: annotation_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.annotation_tag_id_seq;
ALTER SEQUENCE public.annotation_tag_id_seq OWNER TO grafana;
-- Name: annotation_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.annotation_tag_id_seq OWNED BY public.annotation_tag.id;
ALTER TABLE ONLY public.annotation_tag ALTER COLUMN id SET DEFAULT nextval('public.annotation_tag_id_seq'::regclass);
-- Name: annotation_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.annotation_tag_id_seq', 1, false);
-- Name: test_data_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.test_data_id_seq;
ALTER SEQUENCE public.test_data_id_seq OWNER TO grafana;
-- Name: test_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.test_data_id_seq OWNED BY public.test_data.id;
ALTER TABLE ONLY public.test_data ALTER COLUMN id SET DEFAULT nextval('public.test_data_id_seq'::regclass);
-- Name: test_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.test_data_id_seq', 1, false);
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.tag_id_seq;
ALTER SEQUENCE public.tag_id_seq OWNER TO grafana;
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;
ALTER TABLE ONLY public.alert_rule_tag ALTER COLUMN id SET DEFAULT nextval('public.alert_rule_tag_id_seq'::regclass);
ALTER TABLE ONLY public.annotation_tag ALTER COLUMN id SET DEFAULT nextval('public.annotation_tag_id_seq'::regclass);
ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);
-- Name: alert_rule_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.alert_rule_tag_id_seq', 1, false);
-- Name: annotation_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.annotation_tag_id_seq', 1, false);
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.tag_id_seq', 1, false);
-- Name: ngalert_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.ngalert_configuration_id_seq;
ALTER SEQUENCE public.ngalert_configuration_id_seq OWNER TO grafana;
-- Name: ngalert_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.ngalert_configuration_id_seq OWNED BY public.ngalert_configuration.id;
ALTER TABLE ONLY public.ngalert_configuration ALTER COLUMN id SET DEFAULT nextval('public.ngalert_configuration_id_seq'::regclass);
-- Name: ngalert_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.ngalert_configuration_id_seq', 1, false);
-- Name: alert_image_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.alert_image_id_seq;
ALTER SEQUENCE public.alert_image_id_seq OWNER TO grafana;
-- Name: alert_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.alert_image_id_seq OWNED BY public.alert_image.id;
ALTER TABLE ONLY public.alert_image ALTER COLUMN id SET DEFAULT nextval('public.alert_image_id_seq'::regclass);
-- Name: alert_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.alert_image_id_seq', 1, false);
-- Name: library_element_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.library_element_id_seq;
ALTER SEQUENCE public.library_element_id_seq OWNER TO grafana;
-- Name: library_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.library_element_id_seq OWNED BY public.library_element.id;
ALTER TABLE ONLY public.library_element ALTER COLUMN id SET DEFAULT nextval('public.library_element_id_seq'::regclass);
-- Name: library_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.library_element_id_seq', 1, false);
-- Name: library_element_connection_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.library_element_connection_id_seq;
ALTER SEQUENCE public.library_element_connection_id_seq OWNER TO grafana;
-- Name: library_element_connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.library_element_connection_id_seq OWNED BY public.library_element_connection.id;
ALTER TABLE ONLY public.library_element_connection ALTER COLUMN id SET DEFAULT nextval('public.library_element_connection_id_seq'::regclass);
-- Name: library_element_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.library_element_connection_id_seq', 1, false);
-- Name: query_history_details_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.query_history_details_id_seq;
ALTER SEQUENCE public.query_history_details_id_seq OWNER TO grafana;
-- Name: query_history_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.query_history_details_id_seq OWNED BY public.query_history_details.id;
ALTER TABLE ONLY public.query_history_details ALTER COLUMN id SET DEFAULT nextval('public.query_history_details_id_seq'::regclass);
-- Name: query_history_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.query_history_details_id_seq', 1, false);
-- Name: query_history_star_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.query_history_star_id_seq;
ALTER SEQUENCE public.query_history_star_id_seq OWNER TO grafana;
-- Name: query_history_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.query_history_star_id_seq OWNED BY public.query_history_star.id;
ALTER TABLE ONLY public.query_history_star ALTER COLUMN id SET DEFAULT nextval('public.query_history_star_id_seq'::regclass);
-- Name: query_history_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.query_history_star_id_seq', 1, false);
-- Name: entity_event_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.entity_event_id_seq;
ALTER SEQUENCE public.entity_event_id_seq OWNER TO grafana;
-- Name: entity_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.entity_event_id_seq OWNED BY public.entity_event.id;
ALTER TABLE ONLY public.entity_event ALTER COLUMN id SET DEFAULT nextval('public.entity_event_id_seq'::regclass);
-- Name: entity_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.entity_event_id_seq', 1, false);
-- Name: seed_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.seed_assignment_id_seq;
ALTER SEQUENCE public.seed_assignment_id_seq OWNER TO grafana;
-- Name: seed_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.seed_assignment_id_seq OWNED BY public.seed_assignment.id;
ALTER TABLE ONLY public.seed_assignment ALTER COLUMN id SET DEFAULT nextval('public.seed_assignment_id_seq'::regclass);
-- Name: seed_assignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.seed_assignment_id_seq', 1, false);
-- Name: anon_device_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.anon_device_id_seq;
ALTER SEQUENCE public.anon_device_id_seq OWNER TO grafana;
-- Name: anon_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.anon_device_id_seq OWNED BY public.anon_device.id;
ALTER TABLE ONLY public.anon_device ALTER COLUMN id SET DEFAULT nextval('public.anon_device_id_seq'::regclass);
-- Name: anon_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.anon_device_id_seq', 1, false);
-- Name: cloud_migration_session_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.cloud_migration_session_id_seq;
ALTER SEQUENCE public.cloud_migration_session_id_seq OWNER TO grafana;
-- Name: cloud_migration_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.cloud_migration_session_id_seq OWNED BY public.cloud_migration_session.id;
ALTER TABLE ONLY public.cloud_migration_session ALTER COLUMN id SET DEFAULT nextval('public.cloud_migration_session_id_seq'::regclass);
-- Name: cloud_migration_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.cloud_migration_session_id_seq', 1, false);
-- Name: cloud_migration_snapshot_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.cloud_migration_snapshot_id_seq;
ALTER SEQUENCE public.cloud_migration_snapshot_id_seq OWNER TO grafana;
-- Name: cloud_migration_snapshot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.cloud_migration_snapshot_id_seq OWNED BY public.cloud_migration_snapshot.id;
ALTER TABLE ONLY public.cloud_migration_snapshot ALTER COLUMN id SET DEFAULT nextval('public.cloud_migration_snapshot_id_seq'::regclass);
-- Name: cloud_migration_snapshot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.cloud_migration_snapshot_id_seq', 1, false);
-- Name: cloud_migration_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.cloud_migration_resource_id_seq;
ALTER SEQUENCE public.cloud_migration_resource_id_seq OWNER TO grafana;
-- Name: cloud_migration_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.cloud_migration_resource_id_seq OWNED BY public.cloud_migration_resource.id;
ALTER TABLE ONLY public.cloud_migration_resource ALTER COLUMN id SET DEFAULT nextval('public.cloud_migration_resource_id_seq'::regclass);
-- Name: cloud_migration_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.cloud_migration_resource_id_seq', 1, false);
-- Name: user_external_session_id_seq; Type: SEQUENCE; Schema: public; Owner: grafana
CREATE SEQUENCE public.user_external_session_id_seq;
ALTER SEQUENCE public.user_external_session_id_seq OWNER TO grafana;
-- Name: user_external_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grafana
ALTER SEQUENCE public.user_external_session_id_seq OWNED BY public.user_external_session.id;
ALTER TABLE ONLY public.user_external_session ALTER COLUMN id SET DEFAULT nextval('public.user_external_session_id_seq'::regclass);
-- Name: user_external_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grafana
SELECT pg_catalog.setval('public.user_external_session_id_seq', 1, false);
