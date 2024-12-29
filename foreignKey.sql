CREATE table "user"(

    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);
CREATE table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);
CREATE table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON delete  SET NULL
);

-- deleted value set default
CREATE table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON delete  set DEFAULT DEFAULT 2
);

ALTER Table post
    alter COLUMN user_id set not NULL;


INSERT INTO "user"(username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title,user_id) VALUES
('Enjoy a sunny day with akash',2),
('batash ush shared an amazing recipe!',1),
('Exploring adventures with sagor',4),
('nodis wisdom always leaves me inspired ',4);



INSERT INTO post (title,user_id) VALUES('yes',null)

SELECT * FROM "user";
SELECT * from post

DROP Table post;
drop table "user";


DELETE FROM "user"
    WHERE id=4


-- Deletion constraint on DELETE user
-- Cascading Deletion  -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Restrict Deletion -> ON DELETE RESTRICT/ON DELETE NO ACTION(default)
-- Set Default value -> ON DELETE SET DEFAULT