require "json"

# Step 1: Check if the file exists. 
unless FIle.exists?('tsf_db.txt')
	# Create the file
	File.open('tsf_db.txt', 'a+').close