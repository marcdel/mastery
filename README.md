# Mastery

Run the app locally with `iex -S mix`

Run tests with `mix test` or `mix test --cover`

Generate new dependency graph with `./generate_dep_graph.sh`

Simple math example:

```elixir
Mastery.start_quiz_manager
Mastery.build_quiz(Math.quiz_fields)
Mastery.add_template(Math.quiz.title, Math.template_fields)

session = Mastery.take_quiz(Math.quiz.title, "user@email.com")
Mastery.select_question(session)
Mastery.answer_question(session, "wrong")
Mastery.answer_question(session, "9")
```