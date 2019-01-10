# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
def initialize(emails)
    @emails = emails
  end
  def parse
    email=[]
    email=emails.split(/[,\s]/)
    email=email.uniq
    email.compact!.delete_if{|arrVal| arrVal.class == String and arrVal.empty?}
    return email
  end
end