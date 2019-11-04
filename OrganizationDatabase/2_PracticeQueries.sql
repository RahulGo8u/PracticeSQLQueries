--1. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
SELECT FIRST_NAME FROM WORKER

--2 Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
SELECT UPPER(FIRST_NAME) FROM WORKER

--3 Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
SELECT DISTINCT DEPARTMENT FROM WORKER

--4 Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Worker Table.
SELECT SUBSTRING(FIRST_NAME, 1,3) AS FName FROM WORKER

--5 Write An SQL Query To Find The Position Of The Alphabet (‘a’) In The First Name Column ‘Amitabh’ From Worker Table.
SELECT CHARINDEX('a', FIRST_NAME COLLATE Latin1_General_CS_AS)  FROM WORKER WHERE FIRST_NAME='Amitabh'

--6 Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
SELECT RTRIM(FIRST_NAME) FROM Worker

--7 Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
SELECT LTRIM(DEPARTMENT) FROM WORKER

--8 Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
SELECT DISTINCT LEN(DEPARTMENT) FROM WORKER

--9 Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘a’ With ‘A’.
SELECT REPLACE(FIRST_NAME,'a', 'A') FROM WORKER

--10 Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. 
--A Space Char Should Separate Them.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME FROM WORKER

--11 Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
SELECT * FROM WORKER ORDER BY FIRST_NAME

--12 Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.
SELECT * FROM WORKER ORDER BY FIRST_NAME ASC, DEPARTMENT DESC

--13 Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.
SELECT * FROM WORKER WHERE FIRST_NAME IN ('Vipul', 'Satish')

--14 Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
SELECT * FROM WORKER WHERE FIRST_NAME NOT IN ('Vipul', 'Satish')

--15 Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
SELECT * FROM WORKER WHERE DEPARTMENT = 'Admin'

--16 Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a%'

--17 Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a'

--18 Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%h' and LEN(FIRST_NAME)=6

--19 Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 AND 500000

--20 Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.
SELECT * FROM WORKER WHERE YEAR(JOINING_DATE)='2014' AND MONTH(JOINING_DATE)='2'

--21 Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.
SELECT COUNT(*) FROM WORKER WHERE DEPARTMENT = 'Admin'

--22 Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME), SALARY FROM Worker WHERE SALARY BETWEEN 50000 And 100000

--23 Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.
SELECT DEPARTMENT, COUNT(*) COUNT_WORKERS FROM WORKER GROUP BY DEPARTMENT ORDER BY 2 DESC

--24 Write An SQL Query To Print Details Of The Workers Who Are Also Managers.
SELECT FIRST_NAME, LAST_NAME FROM WORKER W
JOIN TITLE T
ON W.WORKER_ID=T.WORKER_REF_ID
WHERE T.WORKER_TITLE = 'Manager'

--25 Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM TITLE
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1

--26 Write An SQL Query To Show Only Odd Rows From A Table.
SELECT * FROM WORKER WHERE (WORKER_ID % 2)<>0

--27 Write An SQL Query To Show Only Even Rows From A Table.
SELECT * FROM WORKER WHERE (WORKER_ID % 2)=0

--28 Write An SQL Query To Clone A New Table From Another Table.
SELECT * INTO WORKERCLONE FROM WORKER
SELECT * INTO TITLECLONE FROM TITLE

--29 Write An SQL Query To Fetch Intersecting Records Of Two Tables.
SELECT * FROM WORKER WHERE WORKER_ID=3
INTERSECT
SELECT * FROM WORKERCLONE

--30 Write An SQL Query To Show Records From One Table That Another Table Does Not Have.
SELECT * FROM WORKER
EXCEPT
SELECT * FROM WORKERCLONE