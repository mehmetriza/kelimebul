require 'colorize'
puts "Harf Giriniz"
harfler = gets.chomp
harfler=harfler.split("")
harflerYedek=harfler.clone
harf_sayi=harfler.count
f = File.open("kelime-listesi.txt", "r:UTF-8")
	f.each_line do |line|
		y=0
		harfler=harflerYedek.clone
		yazilar=line.split("")
		yazilar.each do |yazi|
			if harfler.include? yazi then
				y+=1
				harfler.delete_at(harfler.index(yazi))
			end
		end
		if y==harf_sayi then
			cikti=""
			sonuc=line.clone
			sonuc=sonuc.split("")
			sonuc.each do |s|
				if harflerYedek.include? s then
				cikti+=s.green
				else
				cikti+=s.yellow
				end
			end
			puts "--------------------\n\n"
			puts cikti
		end
	end
f.close