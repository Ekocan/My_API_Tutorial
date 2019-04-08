SELECT * FROM INFORMATION_SCHEMA.COLUMNS;
-- THIs we need to know all table names and they values. here we can find everything for this connection

SELECT DISTINCT(table_name) FROM INFORMATION_SCHEMA.COLUMNS;
-- this one give to us ALL table names. Distinct help us to delete duplicates;

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = 'employees';
-- this one will give all information about employees table;

------------------------------------------------------------------------- WE CAN START TO LEARN FROM HERE -------------------------------------------------------------------------

SELECT * FROM employees;
-- selecting all information from employees able;

SELECT first_name, last_name FROM employees;
-- selecting just name and last name from employees;

SELECT first_name || ' ' || last_name AS full_name FROM employees;
-- || ' ' || like + " " + space in String. AS means creating new column. || is mean + . '' is mean ""

SELECT first_name || ' ' || last_name full_name FROM employees;
-- || ' ' || like + " " + space in String. without AS also we can create like new column full_name. || is mean + . '' is mean ""

SELECT email || '@gmail.com' AS email FROM employees;
-- selecting email and adding @gmail to all of them. we also need to add AS because if we do not add it its gonna be column without name like ?column?

SELECT email || '@gmail.com' AS email FROM employees WHERE employee_id = 114;
-- selecting email adding value gmail.com WHERE employee id equals to 114
 
SELECT first_name || ' ' || last_name AS Full_Name, salary AS W2, job_id AS Position, email || '@yahoo.com' AS NEW_EMAIL FROM employees WHERE employee_id = 111;
--  so i create from first and last names one fll name ad also save other AS in new table name also add yahoo and create new email || yahoo.com oznochaet kak + "@yahoo.com" naprimer String name. a potom name + "@yahoo.com"

SELECT last_name || ' ' || first_name AS full_name, email || '@Yusif.li' AS Mr_Y_email, job_id FROM employees ORDER BY full_name;
-- Order BY gonna sort it by full name. by default it is always like in AScending order

SELECT last_name || ' ' || first_name AS full_name, email || '@Yusif.li' AS Mr_Y_email, job_id FROM employees ORDER BY Mr_Y_email asc;
-- Order By ASC sorting on ascending order

SELECT email || ' ' || first_name AS email_name, email || '@Yusif.li' AS email, job_id FROM employees ORDER BY 2 asc;
-- number 2 gonna sort it by the second table which is email. if to put there number 3 it is gonna sort it on asc with the column name which in position 3 and it is job_id

SELECT first_name || ' ' || first_name AS email_name, email || '@Yusif.li' AS email, job_id FROM employees ORDER BY email desc;
-- the same logic is going to be here. but now in descending order

SELECT first_name || ' ' || first_name AS email_name, email || '@Yusif.li' AS email, job_id FROM employees ORDER BY 3 desc;
-- the same logic is going to be here. but now in descending order so ORDER BY number 3 means in columnt 3 we have job_id, so sort it by job_id on descending order

SELECT first_name || ' ' || last_name  || ' ' || job_id || ' ' || salary AS List_Of_Columns FROM employees;
-- we can add multiply column and create new column LIST OF COLUMNS, all column Names always lower case

SELECT * FROM employees WHERE salary > 5000 ORDER BY salary ASC;
-- salary > 5000 means we ask to keep only where salary more than 5000

SELECT first_name || ' ' || last_name AS full_name, salary * 12 AS full_time_position FROM employees ORDER BY 2 DESC;
-- here we create full name and also create full_time_position AS salary multiplite to 12. for example if it is 5000 * 12 = 60000 under new table with name Full time and sorted DESC which means from Largest to Less 2 is Second COlumn

SELECT first_name || ' ' || last_name AS Full_name, ROUND(salary * 12) AS annual, ROUND (salary) AS monthly, ROUND(salary/4) AS weekly, ROUND(salary/20) AS daily, ROUND(salary/30) AS hourly FROM employees ORDER BY salary desc;
-- in this query we create new columns which get salary and multiply to 12 to get annual and after devide to 4 for week to 20 for days and to 30 for days. by default salary was monthly. ROUND we did to make int from double. before was 50.00 now 50

SELECT DISTINCT salary FROM employees ORDER BY salary DESC;
-- DISTINCT like SET from Collections. keeping only unique value. deleting all repiting values. so if i have 3 salary with 5000 its gonna keep only 1;

SELECT * FROM employees WHERE job_id = 'IT_PROG';
-- we select all columns from employees where job_id equal to IT_PROG

SELECT * FROM employees WHERE job_id = 'IT_PROG' OR job_id = 'PU_CLERK';
-- we select now all columns where job id IT prog or PU clerk

SELECT * FROM employees WHERE job_id = 'IT_PROG' OR job_id = 'PU_CLERK' OR salary = 6000 OR manager_id > 100 AND manager_id < 120 ORDER BY salary ASC;
-- we select now all columns where job id IT prog or PU clerk OR Salary equal to 6000 or manager id more than 100 and less than 120

SELECT * FROM employees WHERE job_id IN ('IT_PROG','PU_CLERK');
-- IN doing the same thing with OR

SELECT * FROM employees WHERE salary IN (6000,9000,14000,4200);
-- select all from employees where salary IN 6000, 9000 means salary = 6000 or 9000 or 14000

SELECT * FROM employees WHERE job_id NOT IN ('IT_PROG','FI_MGR') ORDER BY salary;
-- so we select all columns where job id IS NOT It prog or FI mgr IN is mea OR so we say NOT it prog or FI mgr

SELECT * FROM employees WHERE first_name LIKE 'S%';
-- we select all columns from employee WHERE first Letter of first name is S. sign % used like end of substring.

SELECT * FROM employees WHERE last_name LIKE 'Ba%';
-- in this case we chose 2 letters. and the first one must upper case and second one lower case. it is case sensetive

SELECT * FROM employees WHERE first_name LIKE '_s%';
-- when we add _ it is mean we skip one letter and starts from second one in this case output gonna be Ismail where second ltter s

SELECT * FROM employees WHERE first_name LIKE 'A__m%';
-- in this case i choose first names where first letter A second and third one skipped and last one is m. so output Adam

SELECT * FROM employees WHERE job_id LIKE '%PR%';
-- we select all columns from employees where job id INCLUDES PR. so % sign at the beginning and % at the end means no matter where you find this PR show it to me

SELECT * FROM employees WHERE last_Name LIKE '%ll%';
-- the sam here SHOW ME all last name where you have ll 

SELECT first_name FROM employees WHERE first_name LIKE '%al%';
-- selecting only first name from employees table where first_name includes in anywhere %al%

SELECT * FROM employees WHERE TO_CHAR (hire_date, 'mon') = 'jun';
-- so here we select all columns where hire_date mon equal to june;

SELECT * FROM employees WHERE TO_CHAR (hire_date, 'DD') = '14';
-- here we select hire_date where DAY equal to 14; it can be DD or dd

SELECT * FROM employees WHERE TO_CHAR (hire_Date, 'YYYY') = '1997';
-- the same logic is here. it can be YYYY or yyyy. we ask if year is 1997 show it;

SELECT * FROM employees WHERE TO_CHAR (hire_date, 'mon') = 'jun' AND TO_CHAR (hire_date, 'DD') = '14';
-- we ask to show all columns where month is jun and day is 14;

SELECT first_name, TO_CHAR (hire_date, 'MONTH DD, YYYY') NEW_Date, TO_CHAR (salary, '$999999.99') NEW_Salary FROM employees ORDER BY NEW_Date asc;
-- here we just change the format of hire date and give to him new name and the same with salary we add new format with & sign and new column name

SELECT * FROM employees WHERE salary BETWEEN 3000 AND 5000 ORDER BY salary desc;
-- we get salary between 3000 and 5000

SELECT * FROM employees WHERE salary > 3000 and salary < 3500 ORDER BY salary desc;
-- doing the same thing but without BETWEEN and we put more and less signs

SELECT UPPER(email) FROM employees;
-- in java to lowercase

SELECT LOWER(email) FROM employees;
-- in java to uppercase

SELECT UPPER(email) || ' ' || LOWER(email) AS new_email FROM employees;
-- first email in upper case and second one in lower case under new column new_email

SELECT UPPER(SUBSTR(first_name, 1,3)) || LOWER(SUBSTR(last_name, 1,3)) AS password, LOWER(email) || '@gmail.com' AS email FROM employees;
-- so in this case we use UPPER and LOWER. UPPER doing to UpperCase Lower to Lower case. Substr like Substring in java. and save it AS Password. and also toLowerCase email with added gmail as a email.

SELECT INITCAP (first_name),last_name, INITCAP(email) FROM employees ORDER BY salary DESC;
-- INITCAP converts first letter of each word to Upper Case and rest it lower case;

SELECT UPPER(SUBSTR(first_name, 1,3)) || LOWER(SUBSTR(last_name, 1,3)) AS employee_password, LOWER(email) || '@Yusif.li' AS email, '[ ' || first_name || ' * ' || last_name || ' ]' AS Full_name FROM employees ORDER BY full_name asc FETCH FIRST 10 ROWS ONLY;
-- so Upper do toUpperCase first name first 3 letters lower do toLowerCase. each || i use as + on java. i NEED to use it very often. FETCH FIRST 10 

SELECT * FROM employees FETCH FIRST 5 ROWS ONLY;
-- i am giving comand to take first 5 rows only

SELECT * FROM employees ORDER BY employee_ID DESC FETCH NEXT 4 ROWS ONLY;
-- next also DO like give me first 4 rows 

SELECT * FROM employees ORDER BY employee_id ASC LIMIT 10 OFFSET 0;
--in this case LIMIT 10 means we need just 10 rows. offset 0 means starting from the 1 value;

SELECT * FROM employees ORDER BY employee_id ASC LIMIT 6 OFFSET 12;
-- and here we say start from 12 and give just 6 rows

SELECT first_name FROM employees LIMIT 7 OFFSET 2;
-- selecting 7 first names starting from the 2 second line 

SELECT first_name, COUNT (DISTINCT(first_name)) FROM employees GROUP BY first_name;
-- we choose name and count it distinc keep only uniq names not duplicated one. all numbers here gonna be 1. IF YOU HAVE FIRST_NAME THERE in GROUP BY MUST BE FIRST NAME

SELECT first_name, COUNT ((first_name)) FROM employees GROUP BY first_name ORDER BY first_name;
-- we count all names and duplicates some names gonna have count 2 

SELECT job_id, COUNT ((job_id)) FROM employees GROUP BY job_id;
-- counting JOB id with out show

SELECT (first_name, job_id) AS NAme_AND_ID, COUNT (DISTINCT(job_id)) FROM employees GROUP BY (first_name,job_id);
-- selecting first name and job id together output gonna be with () like (Adam, ST_MAN) count 1

SELECT first_name, job_id, COUNT ((first_name,job_id)) FROM employees GROUP BY first_name,job_id;
-- this one is the same with previous one 

SELECT COUNT (job_id) FROM employees;
-- so if we have only COUNT and we gonna count only JOB_ID how many total we have. we do not need GROUP BY we add GROUP when there is any value

SELECT COUNT (DISTINCT(job_id)) FROM employees;
-- here we are counting only UNIQ job_ID its mean without duplicating which is 18

SELECT AVG (salary) FROM employees;
-- AVG means AVARAGE its mean if we have total 106 salary and SUM of this salaries 679100.00 we devide this sum to 106 and output 6406.60377

SELECT ROUND (AVG ( SALARY)) FROM employees;
-- doing this the same but we are getting just ROUNDED number without remains (ostatki)

SELECT MIN (salary) AS minimum_salary FROM employees;
-- MIN getting minimum salary and we need always ()

SELECT MAX (salary) AS maximum_salary FROM employees;
-- MAX getting maximum salary

SELECT SUM (salary) AS total_amount FROM employees;
-- SUM giving total amount of salaries

SELECT first_name, ROUND (salary) AS rounded_salary FROM employees;
--getting first names and ROUNDED salaries without doubles like intiger

SELECT * FROM employees WHERE salary > (SELECT ROUND(AVG(salary)) FROM employees) ORDER BY salary ASC;
-- we are asking about all salaries where salary more than avg salary which is 6406 and ordering by salary asc

SELECT * FROM employees WHERE salary < (SELECT AVG(salary) FROM employees) ORDER BY salary DESC;
-- doing the same but this time choosing salaries which less than 6406 and ordering desc

SELECT * FROM employees WHERE hire_date BETWEEN '1999-01-01' AND '2004-02-01' ORDER BY hire_date;
-- selecting all employees which hire date between those dates

SELECT * FROM employees WHERE hire_date BETWEEN '01-JAN-99' AND '01-FEB-04' ORDER BY hire_date;
-- selecting all employees which hire date between those dates in different format

SELECT first_name || ' ' || last_name AS full_Name FROM employees WHERE last_name LIKE '%a%y%';
-- if i have % sign in the beginning and at the end its mean all letters inside of thise sings must be. for Nayer i have A and Y

SELECT AVG(salary) FROM employees WHERE commission_pct IS NOT NULL;
-- getting avg slary where commisison is not NULL

SELECT first_name, commission_pct, MAX(SALARY) FROM employees WHERE commission_pct IS NULL GROUP BY (first_name, commission_pct);
-- getting name commision and MAX salary where commsion NULL

SELECT first_name, commission_pct FROM employees WHERE commission_pct = 0.40;
-- we are selecting all first names and commision part from employes where comision part equal to 0.40

SELECT salary, first_name, commission_pct FROM employees WHERE commission_pct != 0;
-- in this situation we chose all of them where is not null 

SELECT * FROM employees WHERE commission_pct <> '0.40';
-- in this situtation <> sign means EXCEPT. so we ask to show all info EXCEPT commission_pct 0.40

SELECT first_name, last_name, job_id, salary, COUNT ((job_id, first_name,last_name, salary)) FROM employees WHERE job_id <> 'SA_MAN' GROUP BY (job_id, first_name, salary,last_name);
-- when WE COUNT DOUBLE or couple or neskolko WORDS we need to put for each one (paranthesi) so even if we have 3 or 4 words we just need 2 paranthesis for count and 1 for group by

SELECT first_name, last_name, job_id, salary, COUNT (*) FROM employees WHERE job_id <> 'AD_VP' AND job_id <> 'SA_MAN' GROUP BY (job_id, first_name, salary, last_name);
-- so i select name last name job id and salary and count them as before but now i just put * to count. so i do not need to type all of them

SELECT first_name, salary, job_id FROM employees WHERE job_id != 'AD_VP' AND salary IS NOT NULL AND salary <> 9000 AND first_name = 'John';
-- in this query we ask for first name salary and job id where job_id is not AD_VP and salary except 9000 and first name JOHN

SELECT ROUND (AVG(salary * commission_pct + salary)) FROM employees WHERE commission_pct IS not NULL;
-- so here i ROUND avg of salary multiply to comission + salary where comission is not null;

SELECT MAX (salary * commission_pct + salary) FROM employees WHERE commission_pct != 0;
-- here i found MAX number

SELECT ROUND ( MIN( SALARY * manager_id  + commission_pct)) FROM employees WHERE commission_pct > 0;
-- so here we ROUND number MIN of salary multiply to manager id and plus commission pct where commission pct more than 0;

SELECT job_id, COUNT(*) FROM employees GROUP BY job_id ;
-- we take all job id counts what we have and group by always come with count if there column name

SELECT COUNT (job_id) From employees;
-- we count just job id so we do not need group by

SELECT job_id, COUNT(*) FROM employees GROUP BY job_id HAVING COUNT(*) > 2;
-- now we gwe add HAVING so we need just job ids where count of job ids  more > than 2
-- Having oznochaet esli v nashem kode est kakoe to oboznechenie naprimer COUNT to mi mozhem dat utochnee . naprimer mi delaem sperva count a potom govorit pokazhi tolko te gde count bolshe 2
-- eto znachit v kompanii est 10 raznix job id. 30 rabotnikov. mi budem pechatat tolko te ID kotorie bolshe 2. naprimer SDET = 3 raspecataem QA = 2 to ne pecataem. tak kak prosat bolshe 2 ponatno ? 

SELECT salary, COUNT(*) FROM employees GROUP BY salary;
-- here count salaries

SELECT salary, COUNT(*) FROM employees GROUP BY salary HAVING salary != '2100' ORDER BY salary asc;
-- in this situation we work with salary and ask to ignor salary 2100 it was not must be 2100;

SELECT salary, COUNT(salary) FROM employees GROUP BY salary HAVING salary != 24000 ORDER BY salary DESC;
-- so here we do the same but numbers with out '' just like number


SELECT salary, COUNT(salary) FROM employees GROUP BY salary HAVING salary = 15000 ORDER BY salary DESC;
-- here we choose only where slaary 15000

SELECT manager_id, COUNT(*) FROM employees GROUP BY manager_id HAVING manager_id > 100 AND manager_id < 123;
-- we select just manager id wheree i between 100 and 123

SELECT manager_id, COUNT(*) FROM employees GROUP BY manager_id HAVING manager_id BETWEEN 100 AND 123;
-- the same logic with BETWEEN

SELECT * FROM employees employeeTable JOIN job_history jobHistroyTable on EmployeeTable  . employee_id = jobHistroyTable.employee_id;
-- i create empl which will help me to easier manager my employees table because when there is to much information i can be confuse and also. and this dote are not SPACE sensetive so you can have space between . and after dote

SELECT e.first_name || ' ' || e.last_name AS FULL_NAME, r.region_name -- tut mi pishem chto shem. ima familiya i strana
FROM employees e                                           -- e oznochoaet pervaya bukva slovo employeed, kak bi mi sozdaem obj of employee kak e.
JOIN departments d ON d.department_id = e.department_id     -- tozhe samoe s d 
JOIN locations l ON l.location_id = d.location_id           -- tozhe samoe s l
JOIN countries c ON c.country_id = l.country_id             -- tozhe samoe s c
JOIN regions r ON r.region_id = c.region_id                 -- tozhe samoe s r.
WHERE e.employee_id = 113;                                  -- where mi dayom komandu raspecata ima familiya i strana s nomerom id 113 v employee id file pod tables

SELECT e.first_name || ' ' || e.last_name AS FULL_NAME, r.region_name -- tut mi pishem chto shem. ima familiya i strana
FROM employees e                                           -- e oznochoaet pervaya bukva slovo employeed, kak bi mi sozdaem obj of employee kak e.
JOIN departments d ON d.department_id = e.department_id     -- tozhe samoe s d 
JOIN locations l ON l.location_id = d.location_id           -- tozhe samoe s l
JOIN countries c ON c.country_id = l.country_id             -- tozhe samoe s c
JOIN regions r ON r.region_id = c.region_id                -- tozhe samoe s r
WHERE region_name = 'Europe';

SELECT e.first_name || ' ' || e.last_name AS FULL_NAME, r.region_name -- tut mi pishem chto shem. ima familiya i strana
FROM employees e                                           -- e oznochoaet pervaya bukva slovo employeed, kak bi mi sozdaem obj of employee kak e.
JOIN departments d ON d.department_id = e.department_id     -- tozhe samoe s d 
JOIN locations l ON l.location_id = d.location_id           -- tozhe samoe s l
JOIN countries c ON c.country_id = l.country_id             -- tozhe samoe s c
JOIN regions r ON r.region_id = c.region_id                -- tozhe samoe s r 
WHERE region_name = 'Europe';                              -- WE DO THE SAME but we get information ONLY where REGION is EUROPE

SELECT first_name FROM employees e LEFT JOIN job_history j ON e.employee_id = j.employee_id;
-- i did LEFT JOIN and take all first_names from left tale output 109

SELECT first_name FROM employees e LEFT JOIN job_history j ON e.employee_id = j.employee_id WHERE j.employee_id IS NULL;
-- here i take only left side where in other table first_names is null its not showed here. or in other words i didnot take matching once. output 99

SELECT * FROM employees e LEFT JOIN job_history j ON e.employee_id = j.employee_id WHERE salary = 11000;
-- so here i do LEFT join where salary is 11 000 and output is 3. so if in left side i have 109 rows only 3 match it
-- LEFT JOIN return to us ALL INFORATION FROM THE LEFT TABLE, even matching ONE

SELECT * FROM employees e RIGHT JOIN job_history j ON e.employee_id = j.employee_id WHERE salary = 11000;
-- here i do RIGHT join and i have just 1 match whic is DEN with id 114;
-- RIGHT JOIN return to us ALL information FROM the RIGHT TABLE, even matching one

SELECT * FROM employees e INNER JOIN job_history j ON e.employee_id = j.employee_id WHERE salary = 11000;
-- INNER JOIN return to us only matching information with LEFT and RIGHT side which is only DEN

SELECT * FROM employees e INNER JOIN job_history j ON e.employee_id = j.employee_id;
-- here i delete WHERE salary 11000 and get all matching informations of both tables

SELECT e.first_name, ROUND (MAX(salary)) FROM employees e JOIN jobs j ON e.job_id = j.job_id WHERE commission_pct IS NULL AND job_title LIKE 'Programmer' GROUP BY first_name;
-- i take max salary and first name without double where comission is nul and job title like programmer.  when we use ROUND not alone we need to do GROUP BY

SELECT * FROM employees e FULL JOIN job_history j ON e.employee_id = j.employee_id;
-- FULL JOIN or FULL OUTER JOIN the same thing which return to us all information from left right and matching one

SELECT * FROM employees e FULL OUTER JOIN job_history j ON e.employee_id = j.employee_id WHERE e.employee_id IS NULL OR j.employee_id IS NULL;
-- in this FULL OUTTER JOIN i only return information FROM left and RIGHT side but not MATCHING one

SELECT first_name, last_name, department_id FROM employees WHERE department_id IN(100,50)
UNION        
SELECT first_name, last_name, department_id FROM employees WHERE department_id IN(60,100) ORDER BY first_name asc;
-- UNION show to us all information from BOTH QUERIES  without DUPLICATES.  for connectiong two queries and remove duplicates (with out duplicates)
-- ORACLE sorts UNION

SELECT first_name, last_name, department_id FROM employees WHERE department_id IN(100,40)
UNION ALL
SELECT first_name, last_name, department_id FROM employees WHERE department_id IN(60,100) ORDER BY first_name asc;
-- UNION ALL show to us everything FROM both QUERIES with Duplicates. be careful we are talking about QUERIEs no tables.       for connectiong two queries WITH duplicates
-- POSTGRESSQL sorts UNION ALL

SELECT first_name, last_name, department_id FROM employees WHERE department_id IN(100,60,80,10,40,50,90,70)
INTERSECT
SELECT first_name, last_name, department_id FROM employees WHERE department_id IN(60,100,70) ORDER BY first_name asc;
-- returns ONLY matching information. its mean KEEP only rows in COMMON to BOTH queries. odnim slovom INTERSECT vozvrashaet tolko ODINAKOVOE S DVUX querry a ne table. doing the same like FULL InNER JOIN in table. but again this one for QUERIES join for TABLEs

SELECT first_name, last_name, department_id FROM employees WHERE department_id BETWEEN 10 AND 100
EXCEPT          
SELECT first_name, last_name, department_id FROM employees WHERE department_id BETWEEN 10 AND 80 ORDER BY first_name asc;
 -- or MINUS in oracle KEEPs ROWS only from left QUERY that aren't included in the right query. again we areworking with QUERIES not tables. its doing the same like left inner join, but join for table EXCEPT for query



