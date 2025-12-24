CREATE SERVER server1 TYPE 'foo' VERSION '19' FOREIGN DATA WRAPPER postgres_fdw OPTIONS(host 'localhost', port '5432', dbname 'postgres');
CREATE SERVER server2 VERSION '19' FOREIGN DATA WRAPPER postgres_fdw OPTIONS(host 'localhost', port '5432');
