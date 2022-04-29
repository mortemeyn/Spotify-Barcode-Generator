require 'open-uri'


print 'Spotfiy Playlist Link: '
playlistlink = gets.chomp
playlistlink1 = playlistlink.split('/')
playlistlink2 = playlistlink1[4].split('?')

open("https://www.spotifycodes.com/downloadCode.php?uri=jpeg%2F000000%2Fwhite%2F640%2Fspotify%3Aplaylist%3A" + "#{playlistlink2[0]}") {|f|
   File.open("Barcode/#{playlistlink2[0]}" +".jpg","wb") do |file|
     file.puts f.read
   end
}