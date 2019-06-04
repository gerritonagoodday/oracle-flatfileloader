------------------------------------------------------------------------------
-- $Header: vcr/data/ie_target_column.sql 1.7 2005/04/15 08:11:08BST apenney PRODUCTION  $
------------------------------------------------------------------------------
-- Data population script for table vcr.ie_target_column.
-- WARNING: *** This script overwrites the entire table! ***
--          *** Save important content before running.   ***
-- To run this script from the command line:
--   $ sqlplus "vcr/[password]@[instance]" @ie_target_column.sql
-- This file was generated from database instance CPAD.
--   Database Time    : 28FEB2005 17:04:44
--   IP address       : 192.5.20.64
--   Database Language: AMERICAN_AMERICA.WE8ISO8859P1
--   Client Machine   : ahl64
--   O/S user         : vcr
------------------------------------------------------------------------------
set feedback off;
prompt Populating 22 records into table vcr.ie_target_column.

-- empty table:
delete from vcr.ie_target_column;

------------------------------------------------------------------------------
-- Populating the table:
------------------------------------------------------------------------------

--{{BEGIN AUTOGENERATED CODE}}

insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','asset_class');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','country');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','date_of_price');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','fund');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_holding');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_id');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_price');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_price_local');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_type');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_unit_cost_local');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','instrument_value');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','position_sign');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','reporting_currency');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','strategy');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','sub_strategy');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','total_income_daily');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','total_income_mtd');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','total_income_ytd');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','total_pnl_daily');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','total_pnl_mtd');
insert into vcr.ie_target_column
  (IE_ID,TABLE_NAME,COLUMN_NAME)
  values
  ('MGS','source_position','total_pnl_ytd');
--insert into vcr.ie_target_column
--  (IE_ID,TABLE_NAME,COLUMN_NAME)
--  values
--  ('MGS','source_position','underlying_base_instrument');
--insert into vcr.ie_target_column
--  (IE_ID,TABLE_NAME,COLUMN_NAME)
--  values
--  ('MGS','source_position','underlying_instrument');


--{{END AUTOGENERATED CODE}}

commit;
set feedback on;
------------------------------------------------------------------------------
-- end of file
------------------------------------------------------------------------------

