CREATE DEFINER=`root`@`localhost` PROCEDURE `pGetProjectSupervisors`(pid int)
BEGIN
SELECT e.firstname, e.lastname
FROM employee as e, employee_project as pe
WHERE pe.pid = pid AND e.eid = pe.eid AND e.supervisor = 1;
END