------------------------------------------------------------------------------
-- $Header: vcr/views/vw_validation_missing_position.sql 1.2 2005/08/22 17:46:45BST ghoekstra DEV  $
------------------------------------------------------------------------------
-- Creation script for view VCR.VW_VALIDATION_MISSING_POSITION
--
-- This file was generated from database instance VCRD1.
--   Database Time    : 22AUG2005 17:00:57
--   IP address       : 10.44.0.228
--   Database Language: AMERICAN_AMERICA.WE8ISO8859P1
--   Client Machine   : misqux42
--   O/S user         : vcrdev
-- To run this script from the command line:
-- sqlplus VCR/[password]@[instance] @vw_validation_missing_position.sql
------------------------------------------------------------------------------
set feedback off;
prompt Creating view VCR.VW_VALIDATION_MISSING_POSITION

------------------------------------------------------------------------------
-- Create view
------------------------------------------------------------------------------

create or replace view VCR.VW_VALIDATION_MISSING_POSITION (
  SOURCE_ID
, AS_OF_DATE
, BASIS
, KEY
, SEQ_ID
, SOURCE_FUND_ID
, IE_ID
, SOURCE_STRATEGY_ID
, SOURCE_BROKER_ID
, SOURCE_INSTRUMENT_TYPE_ID
, SUB_STRATEGY
, CURRENCY
, INSTRUMENT
, INSTRUMENT_ID
, INSTRUMENT_HOLDING
, INSTRUMENT_PRICE_LOCAL
, INSTRUMENT_VALUE
, TOTAL_PNL_MTD
, TOTAL_PNL_DAILY
, BB_PRICE
, REF_NOTIONAL
, IE_INSTRUMENT_TYPE_ID
, CATEGORY
) as 
SELECT 
last.source_id,
last.as_of_date,
last.basis,
last.key,
last.seq_id,
last.source_fund_id,
last.ie_id,
last.source_strategy_id,
last.source_broker_id,
last.source_instrument_type_id,
last.sub_strategy,
last.currency,
last.instrument,
last.instrument_id,
null,
null,
null,
null,
null,
null,
last.ref_notional,
last.ie_instrument_type_id,
last.category
FROM (
      SELECT  
        sp.source_id,        
        sp.basis,
        sp.key,
        sp.seq_id,
        (
         SELECT sf.source_fund_id 
         FROM   source_fund sf 
         WHERE  sf.source_id = sp.source_id 
         AND    sf.fund = sp.fund
        ) source_fund_id,
        (
         SELECT sf.ie_id 
         FROM   source_fund sf 
         WHERE  sf.source_id = sp.source_id 
         AND sf.fund = sp.fund
        ) ie_id,
        (
         SELECT ss.source_strategy_id
         FROM   source_strategy ss
         WHERE  sp.source_id = ss.source_id
         AND    sp.fund      = ss.fund
         AND     sp.strategy = ss.strategy
        ) source_strategy_id,
        (
         SELECT sb.source_broker_id
         FROM   source_broker sb
         WHERE  sb.source_id = sp.source_id
         AND    sb.broker    = sp.broker
        ) source_broker_id,
        (
         SELECT sit.source_instrument_type_id
         FROM   source_instrument_type sit
         WHERE  sit.source_id = sp.source_id
         AND    sit.instrument_type = sp.instrument_type
        ) source_instrument_type_id,
        sp.sub_strategy,
        sp.currency,
        sp.instrument,
        sp.instrument_id,
        sp.instrument_holding,
        sp.instrument_price_local,
        sp.instrument_value,
        sp.total_pnl_mtd,
        sp.total_pnl_daily,
       (
        SELECT pr.price
        FROM   source_position_security_price spsp, security_price pr
        WHERE  spsp.as_of_date   = pr.as_of_date
        AND    spsp.request_id   = pr.request_id
        AND    spsp.request_seq  = pr.request_seq
        AND    sp.as_of_date     = spsp.as_of_date
        AND    sp.source_id      = spsp.source_id
        AND    sp.basis          = spsp.basis 
        AND    sp.key            = spsp.key   
        AND    sp.seq_id         = spsp.seq_id
       ) bb_price,
       ( 
        SELECT rmv.value
        FROM   ref_measure_value rmv, source_fund sf
        WHERE  rmv.as_of_date = sp.as_of_date
        AND    rmv.ref_object_id = sf.me_fund_id
        AND    rmv.measure = 'NOTIONAL'
        AND    sf.source_id = sp.source_id
        AND    sf.fund      = sp.fund
       ) ref_notional,
       (
        SELECT ieit.ie_instrument_type_id
        FROM   ie_instrument_type ieit, source_fund sf, source_ie_ins_type sieit, source_instrument_type sit
        WHERE  sf.fund      = sp.fund
        AND    sf.source_id = sp.source_id
        AND    sf.ie_id     = ieit.ie_id
        AND    sit.source_id  = sp.source_id
        AND    sit.instrument_type = sp.instrument_type
        AND    sit.source_instrument_type_id = sieit.source_instrument_type_id
        AND    sieit.ie_instrument_type_id = ieit.ie_instrument_type_id
       ) ie_instrument_type_id,
       (
        SELECT ieit.category
        FROM   ie_instrument_type ieit, source_fund sf, source_ie_ins_type sieit, source_instrument_type sit
        WHERE  sf.fund      = sp.fund
        AND    sf.source_id = sp.source_id
        AND    sf.ie_id     = ieit.ie_id
        AND    sit.source_id  = sp.source_id
        AND    sit.instrument_type = sp.instrument_type
        AND    sit.source_instrument_type_id = sieit.source_instrument_type_id
        AND    sieit.ie_instrument_type_id = ieit.ie_instrument_type_id
       ) category,
       slr.as_of_date       
       FROM source_position sp,
            ( 
             SELECT thisrun.source_id, 
                    thisrun.basis, 
                    thisrun.as_of_date, 
                    MAX(lastrun.as_of_date) last_as_of_date
             FROM   source_load_run thisrun
                  , source_load_run lastrun
             WHERE  thisrun.source_id     = lastrun.source_id
             AND    thisrun.basis         = lastrun.basis
             AND    thisrun.as_of_date    > lastrun.as_of_date
             AND    lastrun.status = 'COM'
             GROUP BY thisrun.source_id, thisrun.basis, thisrun.as_of_date
            ) slr
       WHERE sp.source_id  = slr.source_id
       AND   sp.basis      = slr.basis
       AND   sp.as_of_date = slr.last_as_of_date
      ) last, 
source_position this
WHERE last.source_id  = this.source_id  (+)
AND   last.basis      = this.basis      (+)
AND   last.key        = this.key        (+)
AND   last.seq_id     = this.seq_id     (+)
AND   last.as_of_date = this.as_of_date (+)
AND   this.key IS NULL
;
/

------------------------------------------------------------------------------
-- end of file
------------------------------------------------------------------------------

