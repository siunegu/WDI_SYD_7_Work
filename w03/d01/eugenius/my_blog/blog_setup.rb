require "pg"

con = PG.connect(dbname: 'my_blog', host: 'localhost')

# Create the authors table
# con.exec("
#   CREATE TABLE authors
#   (
#     id SERIAL4 PRIMARY KEY,
#     first_name VARCHAR(50) NOT NULL,
#     last_name VARCHAR(50) NOT NULL
#   );
# ")

# Create the blog posts table
con.exec("
	CREATE TABLE posts
	)
	id SERIAL4 PRIMARY KEY,
	title VARCHAR(250),
	content TEXT,
	date DATE,
	author VARCHAR(25)
	);
")

# Seed data
con.exec("
  INSERT INTO authors (first_name, last_name) VALUES ('Eugene', 'H.M. Lai')")
	
con.close