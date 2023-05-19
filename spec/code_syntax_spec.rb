require_relative '../src/code_syntax'

describe CodeSyntax do

  it 'return true when the code has an opening and a closing' do
    code = '<>'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(true)
  end

  it 'return true when the code syntax is valid' do
    code = '<<<>>>'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(true)
  end

  it 'return false when the code does not have a closing' do
    code = '<<'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(false)
  end

  it 'return false when the code does not have an opening' do
    code = '>>'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(false)
  end

  it 'return false when the code syntax is invalid' do
    code = '<<>'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(false)
  end

  it 'return false when the code syntax is invalid' do
    code = '<>><'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(false)
  end

  it 'return false when the code is a complex invalid (a.k.a skynet)' do
    code = '<>><<>'

    validation = CodeSyntax.new.validation(code)

    expect(validation).to eq(false)
  end
end
