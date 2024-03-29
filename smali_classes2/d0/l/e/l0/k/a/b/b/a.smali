.class public Ld0/l/e/l0/k/a/b/b/a;
.super Ljava/lang/Object;
.source "DestructiveMigration.java"

# interfaces
.implements Ld0/l/e/l0/k/a/b/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "DROP TABLE IF EXISTS instabug_logs"

    const-string v1, "DROP TABLE IF EXISTS network_logs"

    const-string v2, "DROP TABLE IF EXISTS announcement_assets_table"

    const-string v3, "DROP TABLE IF EXISTS feature_requests_table"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_attributes_table"

    const-string v1, "DROP TABLE IF EXISTS announcement_table"

    const-string v2, "DROP TABLE IF EXISTS user_interaction"

    const-string v3, "DROP TABLE IF EXISTS attachments"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_events_logs"

    const-string v1, "DROP TABLE IF EXISTS sdk_event"

    const-string v2, "DROP TABLE IF EXISTS session_table"

    const-string v3, "DROP TABLE IF EXISTS surveys_table"

    .line 3
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS sdk_api"

    const-string v1, "DROP TABLE IF EXISTS user"

    const-string v2, "DROP TABLE IF EXISTS crashes_table"

    const-string v3, "DROP TABLE IF EXISTS anrs_table"

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS bugs_table"

    const-string v1, "DROP TABLE IF EXISTS execution_traces"

    const-string v2, "DROP TABLE IF EXISTS execution_traces_attributes"

    const-string v3, "DROP TABLE IF EXISTS app_launch"

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS app_launch_attributes"

    const-string v1, "DROP TABLE IF EXISTS apm_network_log"

    const-string v2, "DROP TABLE IF EXISTS apm_session_table"

    const-string v3, "DROP TABLE IF EXISTS apm_session_meta_data"

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS apm_ui_traces"

    const-string v1, "DROP TABLE IF EXISTS dangling_apm_network_log"

    const-string v2, "DROP TABLE IF EXISTS dangling_execution_traces"

    const-string v3, "DROP TABLE IF EXISTS dangling_execution_traces_attributes"

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS experiments_table"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Ld0/l/e/l0/k/a/b/b/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "CREATE TABLE IF NOT EXISTS bugs_table ( id TEXT,temporary_server_token TEXT,type TEXT,message TEXT,state TEXT,bug_state TEXT,view_hierarchy TEXT,categories_list TEXT )"

    const-string v1, "CREATE TABLE IF NOT EXISTS crashes_table ( crash_id TEXT, temporary_server_token TEXT, crash_message TEXT, crash_state TEXT, state TEXT, handled INTEGER, retry_count INTEGER )"

    const-string v2, "CREATE TABLE IF NOT EXISTS anrs_table ( anr_id TEXT, anr_main_thread_data TEXT, anr_rest_of_threads_data TEXT, anr_upload_state INTEGER, temporary_server_token TEXT, state TEXT, long_message TEXT DEFAULT \"\")"

    const-string v3, "CREATE TABLE IF NOT EXISTS user ( uuid TEXT PRIMARY KEY,last_seen INTEGER,session_count INTEGER )"

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS sdk_api ( time_stamp TEXT, api_name TEXT, count INTEGER, is_deprecated TEXT, parameters TEXT )"

    const-string v1, "CREATE TABLE IF NOT EXISTS surveys_table ( survey_id INTEGER PRIMARY KEY,survey_type INTEGER,in_app_rating INTEGER,survey_title TEXT,survey_token TEXT,conditions_operator TEXT,answered INTEGER,dismissed_at INTEGER,shown_at INTEGER,isCancelled INTEGER,attemptCount INTEGER,eventIndex INTEGER,shouldShowAgain INTEGER,paused INTEGER,sessionCounter INTEGER,questions TEXT,thanks_list TEXT,targetAudiences TEXT,customAttributes TEXT,userEvents TEXT,surveyState TEXT,surveyTargeting TEXT,surveyTriggerEvent TEXT,isLocalized BOOLEAN,currentLocale TEXT,supportedLocales TEXT)"

    const-string v2, "CREATE TABLE IF NOT EXISTS session_table ( session_id TEXT,started_at INTEGER,duration INTEGER,user_events TEXT,user_attributes TEXT,user_events_keys TEXT,user_attributes_keys TEXT,user_email TEXT,uuid TEXT,user_name TEXT,os TEXT,app_token TEXT,device TEXT,sdk_version TEXT,app_version TEXT,crash_reporting_enabled INTEGER,users_page_enabled INTEGER,sync_status INTEGER )"

    const-string v3, "CREATE TABLE IF NOT EXISTS sdk_event ( event_identifier TEXT,time_stamp TEXT,extra_attributes TEXT )"

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS user_events_logs ( uuid TEXT,is_anonymous BOOLEAN,event_identifier TEXT,event_logging_count INTEGER, CONSTRAINT uuid     FOREIGN KEY (uuid)     REFERENCES user (uuid)     ON DELETE CASCADE, PRIMARY KEY (uuid,event_identifier))"

    const-string v1, "CREATE TABLE IF NOT EXISTS attachments ( _id INTEGER PRIMARY KEY, name TEXT, local_path TEXT, url TEXT, type TEXT, attachment_state TEXT, video_encoded INTEGER, duration TEXT, encrypted INTEGER, report_id TEXT )"

    const-string v2, "CREATE TABLE IF NOT EXISTS user_interaction ( survey_id INTEGER,uuid TEXT,surveyTargeting TEXT,action_on_type INTEGER,answered INTEGER,dismissed_at INTEGER,shown_at INTEGER,isCancelled INTEGER,attemptCount INTEGER,eventIndex INTEGER,shouldShowAgain INTEGER,sessionCounter INTEGER,is_already_shown INTEGER,CONSTRAINT uuid     FOREIGN KEY (uuid)     REFERENCES user (uuid)     ON DELETE CASCADE,  PRIMARY KEY (survey_id,uuid,action_on_type))"

    const-string v3, "CREATE TABLE IF NOT EXISTS announcement_table ( announcement_id INTEGER PRIMARY KEY,announcement_title TEXT,announcement_type INTEGER,conditions_operator TEXT,answered INTEGER,dismissed_at INTEGER,shown_at INTEGER,isCancelled INTEGER,eventIndex INTEGER,shouldShowAgain INTEGER,paused INTEGER,sessionCounter INTEGER,announcement TEXT,isAlreadyShown INTEGER,targetAudiences TEXT,surveyEvents TEXT,announceAssetsStatus INTEGER,surveyState TEXT,isLocalized BOOLEAN,supportedLocales TEXT,currentLocale TEXT)"

    .line 3
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS user_attributes_table ( uuid TEXT,key TEXT,value TEXT,type INTEGER,is_anonymous BOOLEAN,CONSTRAINT uuid     FOREIGN KEY (uuid)     REFERENCES user (uuid)     ON DELETE CASCADE, PRIMARY KEY (uuid,key ))"

    const-string v1, "CREATE TABLE IF NOT EXISTS feature_requests_table ( _id INTEGER PRIMARY KEY,title TEXT,description TEXT,status TEXT,likes_count INTEGER,comments_count INTEGER,liked INTEGER,date INTEGER,color_code TEXT,creator_name TEXT,ib_user_vote_status TEXT )"

    const-string v2, "CREATE TABLE IF NOT EXISTS announcement_assets_table ( asset_id INTEGER PRIMARY KEY,announcement_item_id INTEGER,asset_path TEXT)"

    const-string v3, "CREATE TABLE IF NOT EXISTS network_logs (_id INTEGER PRIMARY KEY,url TEXT,request TEXT,method TEXT,response TEXT,status INTEGER,headers TEXT,response_headers TEXT,date TEXT,response_time INTEGER )"

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS instabug_logs (log_message TEXT,log_level TEXT,log_date TEXT )"

    const-string v1, "CREATE TABLE IF NOT EXISTS execution_traces ( trace_id INTEGER PRIMARY KEY,name TEXT,session_id INTEGER,start_time INTEGER,started_on_background INTEGER,ended_on_background INTEGER,duration INTEGER default -1, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

    const-string v2, "CREATE TABLE IF NOT EXISTS execution_traces_attributes ( attribute_id INTEGER PRIMARY KEY AUTOINCREMENT,trace_id INTEGER,attribute_key TEXT,attribute_value TEXT,CONSTRAINT trace_id FOREIGN KEY (trace_id) REFERENCES execution_traces(trace_id) ON DELETE CASCADE )"

    const-string v3, "CREATE TABLE IF NOT EXISTS app_launch ( app_launch_id INTEGER PRIMARY KEY AUTOINCREMENT,session_id INTEGER,name TEXT,screen_name TEXT,start_time INTEGER,duration INTEGER default -1, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS app_launch_attributes ( attribute_id INTEGER PRIMARY KEY AUTOINCREMENT,app_launch_id INTEGER,attribute_key TEXT,attribute_value TEXT,CONSTRAINT app_launch_id FOREIGN KEY (app_launch_id) REFERENCES app_launch (app_launch_id) ON DELETE CASCADE )"

    const-string v1, "CREATE TABLE IF NOT EXISTS apm_network_log ( log_id INTEGER PRIMARY KEY AUTOINCREMENT,session_id INTEGER,start_time INTEGER,executed_on_background INTEGER,url TEXT,method TEXT,request_headers TEXT,response_headers TEXT,request_content_type TEXT,response_content_type TEXT,duration INTEGER,response_code INTEGER,request_body_size INTEGER,response_body_size INTEGER,radio TEXT,error_message TEXT,carrier TEXT, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

    const-string v2, "CREATE TABLE IF NOT EXISTS apm_ui_traces (id INTEGER PRIMARY KEY AUTOINCREMENT,session_id INTEGER,trace_name TEXT,screen_title TEXT,duration INTEGER,small_drops_duration INTEGER,large_drop_duration INTEGER,batter_level INTEGER,power_save_more_enabled BOOLEAN,display_refresh_rate INTEGER,container_name TEXT,module_name TEXT,orientation TEXT,user_defined BOOLEAN,start_time INTEGER, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

    const-string v3, "CREATE TABLE IF NOT EXISTS apm_session_table ( session_id INTEGER PRIMARY KEY AUTOINCREMENT,core_session_id TEXT,os TEXT,uuid TEXT,app_version TEXT,started_at INTEGER,duration INTEGER,termination_code INTEGER,sync_status INTEGER default -1 )"

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS apm_session_meta_data ( session_id INTEGER NOT NULL UNIQUE,traces_total_count INTEGER default 0,app_launch_total_count INTEGER default 0,network_logs_total_count INTEGER default 0,ui_traces_total_count INTEGER default 0,traces_dropped_count INTEGER default 0,app_launch_dropped_count INTEGER default 0,network_logs_dropped_count INTEGER default 0,ui_traces_dropped_count INTEGER default 0, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

    const-string v1, "CREATE TABLE IF NOT EXISTS dangling_apm_network_log ( log_id INTEGER PRIMARY KEY AUTOINCREMENT,start_time INTEGER,executed_on_background INTEGER,url TEXT,method TEXT,request_headers TEXT,response_headers TEXT,request_content_type TEXT,response_content_type TEXT,duration INTEGER,response_code INTEGER,request_body_size INTEGER,response_body_size INTEGER,radio TEXT,error_message TEXT,carrier TEXT )"

    const-string v2, "CREATE TABLE IF NOT EXISTS dangling_execution_traces ( trace_id INTEGER PRIMARY KEY,name TEXT,start_time INTEGER,started_on_background INTEGER,ended_on_background INTEGER,duration INTEGER default -1 )"

    const-string v3, "CREATE TABLE IF NOT EXISTS dangling_execution_traces_attributes ( attribute_id INTEGER PRIMARY KEY AUTOINCREMENT,trace_id INTEGER,attribute_key TEXT,attribute_value TEXT,CONSTRAINT trace_id FOREIGN KEY (trace_id) REFERENCES dangling_execution_traces(trace_id) ON DELETE CASCADE )"

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Ld0/e/a/a/a;->P(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS experiments_table ( experiment_id INTEGER PRIMARY KEY AUTOINCREMENT,experiment TEXT)"

    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
