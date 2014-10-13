# Encoding: utf-8
def mail_joke(email)  if email =~ /^(\S+)@(\S+)$/
   element = email.match(/^(\S+)@(\S+)$/)
   if element[2] == "lewagon.org"
     return "Well done #{element[1].gsub(/\./," ")}, you're skilled and capable"
   elsif element[2] == "gmail.com"
     return "#{element[1].gsub(/\./," ")}, you're an average but modern person"
   elsif element[2] == "live.com"
     return "#{element[1].gsub(/\./," ")}, aren't you born before 1973?"
   else
     return "Sorry #{element[1].gsub(/\./," ")}, we don't know how to judge '#{element[2]}'"
   end
 else
   raise ArgumentError
 end
end
