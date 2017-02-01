# tuple = {1,3,5}

# elem(tuple,1)

# list = [10,23,63]
# [head | tail] = [1,2,3]



# ?a

# 'hello ' ++ 'world'
# "hello " <> "world"
# # what about switching single/double quotes?


# #pattern matching on ranges
# lower..upper = 1..10
# [lower, upper] #=> [1, 10]

# genders = %{david: "male", gillian: "female"}

# IO.puts(genders.david)


defmodule Users do
  dave = %{ name: "Dave", state: "TX", likes: "programming" }

  case dave do
    %{state: some_state} = person ->
      IO.puts "#{person.name} lives in #{some_state}"

    _ ->
      IO.puts "No matches"
  end
end


Users.dave()