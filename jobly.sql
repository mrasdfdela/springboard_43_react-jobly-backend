\echo 'Delete and recreate jerrysjoblybackend db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE jerrysjoblybackend;
CREATE DATABASE jerrysjoblybackend;
\connect jerrysjoblybackend

\i jobly-schema.sql
\i jobly-seed.sql

\echo 'Delete and recreate jerrysjoblybackend_backend_test db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE jerrysjoblybackend_backend_test;
CREATE DATABASE jerrysjoblybackend_backend_test;
\connect jerrysjoblybackend_backend_test

\i jobly-schema.sql
