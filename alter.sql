SELECT * FROM person1;


-- add a new column in existing table 
Alter Table person1
    ADD COLUMN email VARCHAR(50) DEFAULT 'joy@gmail.com' NOT NULL;

-- delete a column in existing table 

ALTER TABLE person1 
    DROP COLUMN email;

-- rename or update existing table column 

ALTER TABLE person1
    RENAME COLUMN age to user_age;

--resize in column on a table 

ALTER Table person1
    Alter COLUMN user_name Type VARCHAR(50);

--add constrains in existing table's column
Alter table person1
    Alter COLUMN user_age set NOT NULL;

    --add primary, unique contraints into column on a table

   ALTER TABLE person1
    ADD CONSTRAINT unique_person1_user_age UNIQUE(user_age);

    -- add constraint primary key 
   ALTER TABLE person1
    ADD CONSTRAINT pk_person1_user_age PRIMARY KEY(user_age);

    -- Drop contraints 

    ALTER Table person1
    DROP Constraint unique_person1_user_age;