#3 Tercer consulta , lista de Tickets por Institución.
USE `DATABASE`;
select t.ticketid, t.subject, t.userid, u.fullname, org.organizationname
from swtickets as t, swusers as u, swuserorganizations as org
where t.userid = u.userid and u.userorganizationid = org.userorganizationid ;
