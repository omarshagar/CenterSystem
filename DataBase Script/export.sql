--------------------------------------------------------
--  File created - Sunday-May-30-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View MGV_ALL_CAPTURED_SQL
--------------------------------------------------------

  CREATE OR REPLACE VIEW "HR"."MGV_ALL_CAPTURED_SQL" ("ID", "OBJTYPE", "OBJECTNAME", "NATIVE_SQL") AS 
  WITH
captured_schema AS
(SELECT SCHEMA_ID
   FROM mgv_all_schema
  WHERE connection_id IN
  (SELECT ID FROM md_connections WHERE NVL(type,'Captured') != 'CONVERTED')),
captured_connections AS
(SELECT ID FROM md_connections WHERE NVL(type,'Captured') != 'CONVERTED') ,
captured_view_trigger AS
(SELECT v.trigger_id vt
   FROM mgv_all_view_triggers v
  WHERE v.connection_id IN
  (SELECT * FROM captured_connections)) ,
captured_table_trigger AS
(SELECT t.trigger_id tt
   FROM mgv_all_table_triggers t
  WHERE t.connection_id IN
  (SELECT * FROM captured_connections))
SELECT ID,'md_stored_programs' ObjType, Name objectName, native_sql
 FROM md_stored_programs,
captured_schema
WHERE language = 'MSTSQL'
  AND SCHEMA_ID_FK = captured_schema.schema_id
UNION ALL
SELECT ID,'md_views' ObjType, view_Name objectName, native_sql
 FROM md_views,
captured_schema
WHERE language = 'MSTSQL'
  AND SCHEMA_ID_FK = captured_schema.schema_id
UNION ALL
SELECT ID,'md_triggers' ObjType, trigger_Name objectName, native_sql
 FROM md_triggers
WHERE language = 'MSTSQL'
  AND (md_triggers.id in (select vt from captured_view_trigger union select tt from captured_table_trigger  ));
