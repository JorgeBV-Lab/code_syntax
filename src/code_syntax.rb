class CodeSyntax

  OPEN_SHOVEL = '<'
  CLOSE_SHOVEL = '>'

  def validation(code)
    code_copy = code

    chars = code.split('')

    for i in chars do
      if i.eql? OPEN_SHOVEL
        for e in chars do
          if e.eql? CLOSE_SHOVEL
            code_copy.slice!(i) unless code_copy.length.eql? 1 or code_copy.eql?('><')
            code_copy.slice!(e)
          end
        end
      end
    end
    code_copy.length.zero?
  end
end
