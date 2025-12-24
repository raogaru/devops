-- predefined report_id 2
\pset tuples_only on
\a

select rpt$html( h1name, h1desc, h2nameA, h2descA, h3infoA, color, theme) 
from rpt$html_params 
where report_id=11;

