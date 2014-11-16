class Printer
	def print(page, page_number = 1)
		puts "#{page_number: page}"
	end
end

canon = Printer.new
canon.print("This is the content of page1")
canon.print("This is the content of page1", 2)
canon.print("This is the content of page1", 3)
canon.print("This is the content of page1", 4)