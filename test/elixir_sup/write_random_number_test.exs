defmodule ElixirSupTest.WriteRandomNumberTest do
  use ExUnit.Case
  import Mock

  test "it should write a different number everytime" do
    :ets.new(:contents, [:set, :private, :named_table])
    with_mock File,[write!: fn (_path, content) -> :ets.insert_new(:contents, {content}) end] do
      ElixirSup.WriteRandomNumber.write
      ElixirSup.WriteRandomNumber.write
    end

    contents = :ets.tab2list(:contents)
    [first_content | contents] = contents
    [second_content | _] = contents

    assert first_content != second_content
  end
end
