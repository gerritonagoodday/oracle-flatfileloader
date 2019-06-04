------------------------------------------------------------------------------
-- $Header: vcr/data/source_fund.sql 1.2 2005/04/08 10:35:06BST apenney PRODUCTION  $
------------------------------------------------------------------------------
-- Data population script for table vcr.source_fund.
-- WARNING: *** This script overwrites the entire table! ***
--          *** Save important content before running.   ***
-- To run this script from the command line:
--   $ sqlplus "vcr/[password]@[instance]" @source_fund.sql
-- This file was generated from database instance VCRU1.
--   Database Time    : 07APR2005 10:48:12
--   IP address       : 10.44.0.228
--   Database Language: AMERICAN_AMERICA.WE8ISO8859P1
--   Client Machine   : misqux42
--   O/S user         : vcrdev
------------------------------------------------------------------------------
set feedback off;
prompt Populating 8 records into table vcr.source_fund.

-- empty the table:
delete from vcr.source_fund;

------------------------------------------------------------------------------
-- Populating the table:
------------------------------------------------------------------------------

--{{BEGIN AUTOGENERATED CODE}}

insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man Global Quant Alpha Master Fund Ltd.',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'Initial Mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man MAC Jackobshorn 8B Limited',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'Initial UAT Mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man MAC Lucendro 5B Limited',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'Initial UAT Mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man MAC Montfort 7A Limited',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'Initial UAT Mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man MAC Nordend 4A Limited',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'Initial UAT Mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man MAC Rellerli 10A Limited',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'Initial UAT Mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man Mac Rigi 4B Ltd.',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'mapping'
      );
insert into vcr.source_fund
      (SOURCE_FUND_ID,FUND,SOURCE_ID,IE_ID,IE_PLATFORM,ME_FUND_ID,ACTIVE_IND,ME_BENCHMARK_FUND_ID,CHANGE_REASON)
values(vcr.sq_source_fund.nextval,
      'Man Barnegat Fund Limited',4,
      'MGS',NULL,NULL,
      'Y',NULL,
      'UAT Mapping'
      );

--{{END AUTOGENERATED CODE}}

commit;
set feedback on;
------------------------------------------------------------------------------
-- end of file
------------------------------------------------------------------------------

