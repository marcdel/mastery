defmodule TemplateTest do
  use ExUnit.Case
  use QuizBuilders

  test "creating a template compiles the raw value its given" do
    field = template_fields()
    template = Template.new(field)

    assert is_nil(Keyword.get(field, :compiled))
    assert not is_nil(template.compiled)
  end
end
