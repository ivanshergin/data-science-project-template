DROP TABLE if exists test_table;

CREATE TABLE test_table
(
    id SERIAL PRIMARY KEY,
    integer_column INTEGER,
    bigint_column BIGINT,
    smallint_column SMALLINT,
    real_column REAL,
    double_column DOUBLE PRECISION,
    char_column CHAR(10),
    varchar_column VARCHAR(255),
    text_column TEXT,
    date_column DATE,
    time_column TIME,
    timestamp_column TIMESTAMP,
    boolean_column BOOLEAN
);

INSERT INTO test_table 
    (integer_column, bigint_column, smallint_column, real_column, double_column,
    char_column, varchar_column, text_column, date_column, time_column,
    timestamp_column, boolean_column) 
VALUES 
    (123, 1234567890, 32767, 123.45, 123.456,
    'Some Char', 'Some Varchar', 'Some Text', '2023-10-25', '13:45:00', 
    '2023-10-25 13:45:00', TRUE);

COMMIT;