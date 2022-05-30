# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end

    # be able to set/get emails thereafter to parse at a later time
    attr_accessor :emails

    def parse
        # use regular expression // to split on all spaces and commas then remove any blank entries
        emails.split(/[\s,]/).uniq.reject {|email| email.empty?}
    end
end