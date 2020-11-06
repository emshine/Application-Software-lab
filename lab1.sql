#a
    CREATE TABLE student
    (Name VARCHAR(25) NOT NULL,
    Sno INT AUTO_INCREMENT PRIMARY KEY,
    Marks INT NOT NULL,
    Dept VARCHAR(25) NOT NULL );
    
#b
    ALTER TABLE student ADD COLUMN age INT NOT NULL;
    
#c
    ALTER TABLE student MODIFY COLUMN dept VARCHAR(10);
    
#d
    ALTER TABLE student DROP COLUMN marks;

#e
    
    RENAME TABLE student TO students;
    
#f
    TRUNCATE TABLE students;
    
#g
    DROP TABLE students;
    