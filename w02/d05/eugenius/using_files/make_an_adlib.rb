
unless File.exist? 'adlib.txt'
	file = File.new('adlib.txt', 'a+')
	file.close
	puts "created file, start writing now!"

	print "Give me an name: "
	name = gets.strip

	print "Give me a noun: "
	noun = gets.strip

	print "Tell us an Animal: "
	animal = gets.strip

	print "Give me a noise: "
	noise = gets.strip

	File.open('adlib.txt', 'a+') do |adlib_file|
		adlib_file.write ("------------------------------------------")		
		adlib_file.write ("#{name} Macdonald had a #{noun}, E-I-E-I-O")
		adlib_file.write ("and on that #{noun} he had a #{animal}, E-I-E-I-O")		
		adlib_file.write ("with a #{noise} #{noise} here")
		adlib_file.write ("and a #{noise} #{noise} there,")
		adlib_file.write ("here a #{noise}, there a #{noise},")
		adlib_file.write ("there a #{noise}, there a #{noise},")
		adlib_file.write ("everywhere a #{noise}, there a #{noise},")	
		adlib_file.write ("#{name} Macdonald had a #{noun}, E-I-E-I-O!")
		adlib_file.write ("------------------------------------------")		
	end	
	file = File.new('adlib.txt', 'r')
	puts file.read
else
	puts "already been created!"
end	
