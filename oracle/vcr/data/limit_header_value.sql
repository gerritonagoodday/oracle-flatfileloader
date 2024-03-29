------------------------------------------------------------------------------
-- $Header: vcr/data/limit_header_value.sql 1.3 2005/07/08 12:24:10BST apenney DEV  $
------------------------------------------------------------------------------
-- Data population script for table vcr.limit_header_value.
-- WARNING: *** This script overwrites the entire table! ***
--          *** Save important content before running.   ***
-- To run this script from the command line:
--   $ sqlplus "vcr/[password]@[instance]" @limit_header_value.sql
-- This file was generated from database instance VCRD1.
--   Database Time    : 26APR2005 09:43:44
--   IP address       : 10.44.0.228
--   Database Language: AMERICAN_AMERICA.WE8ISO8859P1
--   Client Machine   : misqux42
--   O/S user         : vcrdev
------------------------------------------------------------------------------
set feedback off;
prompt Populating 15 records into table vcr.limit_header_value.

-- Truncate the table:
delete from vcr.limit_header_value;

------------------------------------------------------------------------------
-- Populating the table:
------------------------------------------------------------------------------

--{{BEGIN AUTOGENERATED CODE}}

insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(3,
      'MGS',2,
      'MGS'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(1,
      '1',1,
      'Man Global Quant Alpha Master Fund Ltd.'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(2,
      'MGS',2,
      'MGS'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(4,
      '2',1,
      'Man MAC Jackobshorn 8B Limited'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(5,
      '3',1,
      'Man MAC Lucendro 5B Limited'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(6,
      '4',1,
      'Man MAC Montfort 7A Limited'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(7,
      '5',1,
      'Man MAC Nordend 4A Limited'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(8,
      '6',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(9,
      '7',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(10,
      '8',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(11,
      '9',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(12,
      '10',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(13,
      '11',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(14,
      '12',1,
      'fund'
      );
insert into vcr.limit_header_value
      (LIMIT_ID,VALUE,HEADER_PARAMETER_ID,CHANGE_REASON)
values(15,
      '13',1,
      'fund'
      );
--{{END AUTOGENERATED CODE}}

commit;
set feedback on;
------------------------------------------------------------------------------
-- end of file
------------------------------------------------------------------------------

