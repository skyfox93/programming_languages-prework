require('pry')
def reformat_languages(languages)
  new_hash={}
  
  languages.each {|category,list|
  list.each{|language,kind|
   if new_hash[language].nil?
     new_hash[language]={type: kind[:type]}
   end
      if new_hash[language][:style].nil?
          new_hash[language][:style] =[]
      end
      
        new_hash[language][:style] << category
      puts new_hash[language]
    }
  }
new_hash
end
