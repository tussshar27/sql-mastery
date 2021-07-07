-- Types of data types category in mySQl are:
-- String Types
-- Numeric Types
-- Date and Time Types
-- Blob Types
-- Spatial Types

-- 1. String Type
-- CHAR(X) - fixed length
-- VARCHAR(X) - 0 to 65,535 characters and if string is above 65,535 chars then it will truncate.

-- eg of use:
-- VARCHAR(50)
-- for short strings

-- VARCHAR(255)
-- for medium-length strings

-- to remove this chars size disadvantage of VARCHAR, MEDIUMTEXT is used.
-- MEDIUMTEXT - max: 16MB chars used to store JSON objects, CSV strings, etc.
-- LONGTEXT - max: 4GB chars used to store textbook data, years of log data, etc.

-- TINYTEXT - max: 255 bytes
-- TEXT - max: 64KB

-- --------------------------------------------------------------------------------
-- 2. Integer Type:
-- TINYINT - 1byte
-- UNSIGNED TINYINT - 0 to 255 
-- SMALLINT - 2byte
-- MEDIUMINT - 3byte
-- INT - 4byte
-- INT(4) means 0000
-- BIGINT - 8byte

-- --------------------------------------------------------------------------------
-- 3. Fixed point and Floating point Types:
-- DECIMAL(x,y) where x means total number of digits and y means numberber of digits after decimal
-- eg. DECIMAL(9,2) => 1234567.89
-- DECIMAL is also called as DEC, NUMERIC, FIXED but use only DECIMAL as its best practice.

-- FLOAT - 4byte
-- DOUBLE - 8byte
-- FLOAT and DOUBLE are mostly for used for scientific calculations.
 
-- ---------------------------------------------------------------------------------
-- 4. Boolean:
-- we can BOOLEAN OR BOOL which stores the value TRUE or FALSE
-- TRUE can also be replaced by 1 and FALSE by 0
-- eg. 
-- UPDATE posts
-- SET is_published = TRUE

-- ----------------------------------------------------------------------------------
-- 5. ENUM:
-- ENUM is used to have restricted data in column of table.
-- we can set ENUM datatype for a column in mySQL
-- eg.
-- column - size => datatype - ENUM('small','medium','large')
-- Enum is not prefered to use as if we want to change the restricted data of ENUM column then we have to rerun whole table again.
-- so in that case another table is prefered to create instead of ENUM.

-- -----------------------------------------------------------------------------------
-- 6. Date and Time types:
-- DATE - date is stored
-- TIME - time is stored
-- DATETIME - 8bytes - date and time both are stored
-- TIMESTAMP - 4bytes -  disadvantage is it will store date year upto 2038, so DATETIME is used instead of it.
-- YEAR - year is stored

-- ----------------------------------------------------------------------------------
-- 7. Blob types:
-- Blob type is used to store binary data which can be image, video, pdf, etc.
-- 4 types w.r.t their sizes.
-- TINYBLOB - 255bytes
-- BLOB - 65kb
-- MEDIUMBLOB - 16mb
-- LONGBLOB - 4gb

-- its better to keep this type of files out of databases as it will slow down ur operation due to heavy size.
