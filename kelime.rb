require 'colorize'
puts "Harf Giriniz"
harfler = gets.chomp
harfler=harfler.split("")
harflerYedek=harfler.clone
harf_sayi=harfler.count
sonucDizi=Array.new
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
			
			
			sonuc=line.clone
			sonuc=sonuc.split("")
			sonucDizi.insert(sonuc.count, line.clone)
			#sonucDizi[sonuc.length].push(line.clone)
			
		end
	end
f.close
cikti=""
sonuc2=Array.new
sonucDizi.each do |same|
puts same
=begin	sonuc2=same.split("")
	sonuc2.each do |s|
		if harflerYedek.include? s then
		cikti+=s.green
		else
		cikti+=s.yellow
		end
	end
	puts "--------------------\n\n"
	puts cikti

=end
end