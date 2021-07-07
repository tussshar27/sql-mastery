-- JSON (JavaScript Object Notation)
-- JSON -  is lightweight format for storing and transfering data over the internet.
-- JSON Syntax:
-- {
-- 	"key": value
-- }

UPDATE products
SET properties = '
{
	"dimensions": [1,2,3],
    "weight": 10,
    "manufacturer": {"name": "sony"}
}
'
WHERE product_id = 1;

-- ---------------------------------------------------------------------
SELECT 
	product_id, 
    properties -> '$.weight',	-- $ represents current document
    properties -> '$.dimensions',	-- fetching array
    properties -> '$.dimensions[0]',	-- first element of array
    properties -> '$.manufacturer',
	properties -> '$.manufacturer.name',	-- accessing nested JSON object
    properties ->> '$.manufacturer.name'	-- to remove the double quotes from String
FROM products
WHERE product_id = 1;