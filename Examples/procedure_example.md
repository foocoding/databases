# Short example on how to create and use triggers 

We're going to create a procedure for calculating the total salary for an employee
This way, we can easily see the total salary for an employee for a certain sales amount

## Pre-requisits:
- access to a mysql-database, as a user with grants 
-- create/drop database
-- create/drop/execute procedures

#### Import database dump from [hr_schema.sql](https://github.com/foocoding/databases/blob/master/Examples/hr_schema.sql), if it doesn't exist

#### Open a client connection the the database
Verify that the database hr exists
```
 show databases;
 show tables from database hr;
```

Create the procedure :
```
drop procedure if exists hr.total_salary;

# set the delimiter from ';' to something else, in this case '$$'
delimiter $$

CREATE PROCEDURE hr.total_salary (
  in_empid int,
  in_sales int
)

begin
  declare v_empname varchar(255);
  declare v_commission_amt float(5.2);
  declare v_salary int;
  if not exists (
    select employee_id from employees where employee_id = in_empid
  ) then
    signal sqlstate '45000' set message_text = 'Employee not found';
  end if;

  select concat(first_name, ' ', last_name), salary, in_sales*commission_pct
    into v_empname, v_salary, v_commission_amt 
  from employees where employee_id = in_empid;

  if v_commission_amt > 0
  then
    select concat( 'Total salary for ',v_empname,' is ',v_salary + v_commission_amt,' (salary ',v_salary,' plus commission ',v_commission_amt,')');
  else
    select concat( 'Total salary for ',v_empname,' is ',v_salary,' (salary ',v_salary,', and no commission)');
  end if;
end;

# reset delimiter 
delimiter ;
```

Code , with explanations:
```

CREATE PROCEDURE hr.total_salary (
  in_empid int,                                              ---- inparameters, in this case
  in_sales int                                               ---- employee id and sales amount
)
begin
  declare v_empname varchar(255);                            ---- variables for storing results
  declare v_commission_amt float(5.2);                       ---- from selects, here full name,
  declare v_salary int;                                      ---- commission and salary
  if not exists (
    select employee_id from employees where employee_id = in_empid
  ) then
    signal sqlstate '45000' set message_text = 'Employee not found';
  end if;                                                    ---- return error if the empno isnt found

  select concat(first_name, ' ', last_name), salary, in_sales*commission_pct
    into v_empname, v_salary, v_commission_amt               ---- store the select results
  from employees where employee_id = in_empid;

  if v_commission_amt > 0                                    ---- check if theres any commission amount
  then
    select concat( 'Total salary for ',v_empname,' is ',v_salary + v_commission_amt,' (salary ',v_salary,' plus commission ',v_commission_amt,')');
  else
    select concat( 'Total salary for ',v_empname,' is ',v_salary,' (salary ',v_salary,', and no commission)');
  end if;
end;
$$
```

Test and see if the commission is calculated 
```
call total_salary(151,1000);
+-----------------------------------------------------------------------------------------------------------------------------------------+
| concat( 'Total salary for ',v_empname,' is ',v_salary + v_commission_amt,' (salary ',v_salary,' plus commission ',v_commission_amt,')') |
+-----------------------------------------------------------------------------------------------------------------------------------------+
| Total salary for David Bernstein is 9750 (salary 9500 plus commission 250)                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0,00 sec)
```

### Cleanup:
```
 drop procedure hr.total_salary;
 drop database hr;;
```


