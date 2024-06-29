%dw 2.0
output application/json
/*
==============================================
Dataweave Puzzle #24 - by Upendra Thunuguntla
==============================================
*** Prepare SQL Merge Query using Dataweave ***

==================
Requirments : 
==================
    - The script has to generate a Merge SQL query that updates or inserts data into a specific database table.
    - This SQL Query to be passed to DB Connector's Update processor and the given payload will be passed as input paramaters. 
    - DB Fields don't have any spaces.
    - Consider "ProductId" as a primary key to determine either Insert or Update operation needed.
    - Table also has 2 extra fields createdDate (default to current date) and LastModifiedDate (expected to be passed with GETDATE() whenever update query is used).
    - Script output should be text not json.
    - Even if the payload is changed (apart from primary key) the script should still result in valid query without modifications.

==================
Expected Output (indentation & new lines are not required in output):
==================
MERGE INTO SampleDB.SampleSchema.SampleTable AS Target
USING( VALUES(:ProductId, :Name, :Model, :Color, :Price, :Currency, :AverageRating, :Category, :Subcategory)) AS Data (ProductId, Name, Model, Color, Price, Currency, AverageRating, Category, Subcategory)
ON (Target.ProductId = Data.ProductId)
WHEN MATCHED THEN UPDATE SET
  Target.[ProductId] = :ProductId,
  Target.[Name] = :Name,
  Target.[Model] = :Model,
  Target.[Color] = :Color,
  Target.[Price] = :Price,
  Target.[Currency] = :Currency,
  Target.[AverageRating] = :AverageRating,
  Target.[Category] = :Category,
  Target.[Subcategory] = :Subcategory,
  Target.[LastModifiedDate]=GETDATE()
WHEN NOT MATCHED BY Target THEN INSERT (ProductId, Name, Model, Color, Price, Currency, AverageRating, Category, Subcategory)
VALUES (:ProductId, :Name, :Model, :Color, :Price, :Currency, :AverageRating, :Category, :Subcategory);

*/
---
payload