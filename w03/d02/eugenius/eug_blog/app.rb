require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql)
  con = PG.connect(dbname: 'eug_blog', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
  @posts = run_sql("
  SELECT posts.title, posts.date, 
  authors.first_name AS author_first_name,
  authors.last_name AS author_last_name
  FROM posts
  LEFT OUTER JOIN authors
  ON posts.author_id = authors.id;
")
  erb :home
end  

get '/posts/new' do
  @posts = run_sql("SELECT id, title, date, content FROM posts;")
  @authors = run_sql("SELECT id first_name, last_name FROM authors;")
  erb :new_post
end

post '/posts' do
  run_sql("
  INSERT INTO posts
  (title, date, content, author_id)
  VALUES
  ('#{params[:title]}', '#{params[:date]}', '#{params[:content]}', '#{params[:author_id]}');
")
  redirect '/'	
end
#Renders 'authors.erb' when get '/authors' is requested. 
#Store @authors as instance variable from authors table in sql.
get '/authors' do
	@authors = run_sql("SELECT * FROM authors;")
	erb :authors
end
#Renders 'new_author.erb' when get request to authors/new.
#This is so the user can go to the form to do their POST request.
get 'authors/new' do
	erb :new_author
end
#Specified at the beginning of the form as 'POST'
post '/authors' do
	run_sql("
	INSERT INTO workers
	(first_name, last_name)
	VALUES
	('#{params[:first_name]}', '#{params[:first_name]}');
")
	redirect '/authors'
end	


