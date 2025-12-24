CREATE SERVER server1 TYPE 'foo' VERSION '19' FOREIGN DATA WRAPPER postgres_fdw OPTIONS(host 'localhost', port '5432');
CREATE SERVER server3 FOREIGN DATA WRAPPER file_fdw;
