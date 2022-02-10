USE adlister_db;

# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        username VARCHAR(30) NOT NULL,
#                        email VARCHAR(120) NOT NULL,
#                        password VARCHAR(240) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(240) NOT NULL,
                     description TEXT NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
);







# DROP TABLE IF EXISTS ads;
# DROP TABLE IF EXISTS users;
