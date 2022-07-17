# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

        def initialize(str)
            @emailadresses=str   
        end
        def parse
            seps=nil
         if @emailadresses.include?(",")
            seps=@emailadresses.split(",")
           seps= seps.map{|email| email.strip()}
           temp=seps.map do |email|
            if email.include?(" ")
                email.split
            else
                email
            end
            end
            seps=temp
        else
            seps=@emailadresses.split(" ")
        end
        unq=seps.uniq
        end
end