create or replace package body vcr.pkg_prime_broker_mod as
-- $Header: vcr/packages/pkg_prime_broker_mod.plb 1.3 2005/09/27 13:15:51BST apenney DEV  $
 
  procedure insert_detail(
    p_description                  in prime_broker.description%type,
    p_change_reason                in prime_broker.change_reason%type
  )
  is
    c_proc_name   constant varchar2(100) := pc_schema||'.'||pc_package||'.insert_detail';
    pragma autonomous_transaction;
  begin
    dbms_application_info.set_module(c_proc_name, null);  
    if p_change_reason is null then
      raise_application_error(utl.pkg_exceptions.gc_no_change_reason, 'A change reason must be entered');
    end if;
    insert into prime_broker(    
           prime_broker_id,  
           description,
           change_reason)
    values(sq_prime_broker.nextval,
           p_description,
           p_change_reason);
    commit;
    dbms_application_info.set_module(null, null);    
  exception
    when others then
      utl.pkg_errorhandler.handle;
      utl.pkg_errorhandler.log_sqlerror(p_incident=>false);
      raise;
  end insert_detail;
    
  procedure update_detail(
    p_prime_broker_id              in prime_broker.prime_broker_id%type,  
    p_description                  in prime_broker.description%type,
    p_change_reason                in prime_broker.change_reason%type
  )
  is 
    c_proc_name   constant varchar2(100) := pc_schema||'.'||pc_package||'.update_detail';
    pragma autonomous_transaction;
  begin
    dbms_application_info.set_module(c_proc_name, null);  
    if p_change_reason is null then
      raise_application_error(utl.pkg_exceptions.gc_no_change_reason, 'A change reason must be entered');
    end if;
    -- Update non-PK values      
    update prime_broker
       set description   = p_description,
           change_reason = p_change_reason
     where prime_broker_id=p_prime_broker_id;
    commit;
    dbms_application_info.set_module(null, null);  
  exception
    when others then
      utl.pkg_errorhandler.handle;
      utl.pkg_errorhandler.log_sqlerror(p_incident=>false);
      raise;
  end update_detail;  
  
end pkg_prime_broker_mod;      
/
