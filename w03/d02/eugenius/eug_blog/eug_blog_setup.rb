require "pg"

con = PG.connect(dbname: 'eug_blog', host: 'localhost')

con.exec("
	CREATE TABLE authors
  (
    id SERIAL4 PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
  );
	")

con.exec("
	CREATE TABLE posts
	(
		id SERIAL4 PRIMARY KEY,
		title VARCHAR(255) NOT NULL,
    date DATE DEFAULT NOW(),
    content TEXT,
    author_id INT4 REFERENCES authors(id)		
	);
	")

con.close
