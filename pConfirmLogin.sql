CREATE DEFINER=`root`@`localhost` PROCEDURE `pConfirmLogin`(uname varchar(128),pwd varchar(128))
BEGIN
SELECT e.eid,e.supervisor,e.firstname
FROM employee as e
WHERE e.username = uname AND e.password = pwd ;
END