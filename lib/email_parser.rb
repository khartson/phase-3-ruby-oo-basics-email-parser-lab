# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_string
    
    def initialize(string)
        @email_string = string
    end

    def parse
        email_list = []
        for word in @email_string.split(/[,\s]+/) do
            email_list.append(word) if word.match(/[A-Za-z1-9]*@[a-zA-z1-9]*..com/)
        end
        return email_list.uniq
    end
end

