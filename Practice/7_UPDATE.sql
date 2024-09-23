#7.UPDATE
#It is used to update records in the table
#Disable Safe Update Mode Temporarily
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET branch ='eee',per = 92
WHERE id = 110;

# re-enable safe update mode (optional):
SET SQL_SAFE_UPDATES = 1;
