# Mastery

Run the app locally with `iex -S mix`

Run tests with `mix test` or `mix test --cover`

Generate new dependency graph with `./generate_dep_graph.sh`

Simple math example:

```elixir
# Build and add a quiz to our QuizManager
GenServer.start_link(QuizManager, %{}, name: QuizManager)
QuizManager.build_quiz(title: :simple_math)
QuizManager.add_template(:simple_math, Math.template_fields)
math_quiz = QuizManager.lookup_quiz_by_title(:simple_math)

# Create a quiz session using the previous quiz
{:ok, session} = GenServer.start_link(QuizSession, {math_quiz, "mathy@example.com"})
QuizSession.select_question(session)
# Correct answer will change based on the selected question
QuizSession.answer_question(session, "10")
```