# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :email_string

  def initialize(email_string)
      @email_string = email_string
  end

  def parse
  #  binding.pry
    email_split = @email_string.split(/,|\s/)
    no_repeats = email_split.uniq!
    no_blanks = no_repeats.reject {|x| x.empty?}
    no_blanks


  #  no_empty_arrays = email_split.reject {|x| x.empty?}
  #  final_array = no_empty_arrays.uniq!
  #  final_array

  end

end
