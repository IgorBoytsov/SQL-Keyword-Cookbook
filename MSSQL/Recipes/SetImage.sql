DECLARE @ImageData VARBINARY(MAX)

SELECT @ImageData = BulkColumn
FROM OPENROWSET(BULK 'Путь к файлу', SINGLE_BLOB) AS ImageData;

UPDATE "Указать таблицу"
SET "Укзаать поле" = @ImageData
WHERE "Укзаать идентификатор" = 1;