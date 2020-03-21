# Mastery

Run the app locally with `iex -S mix`

Run tests with `mix test` or `mix test --cover`

Generate new dependency graph with `./generate_dep_graph.sh`

Simple math example:

```elixir
Mastery.build_quiz(Math.quiz_fields)
Mastery.add_template(Math.quiz.title, Math.template_fields)

session = Mastery.take_quiz(Math.quiz.title, "user@email.com")
Mastery.select_question(session)
Mastery.answer_question(session, "wrong")
Mastery.answer_question(session, "9")
```

Scheduled/timed example example:

```elixir
Mastery.build_quiz(Math.quiz_fields)
Mastery.add_template(Math.quiz.title, Math.template_fields)

now = DateTime.utc_now()
five_seconds_from_now = DateTime.add(now, 5)
one_minute_from_now = DateTime.add(now, 60)
Mastery.schedule_quiz(Math.quiz_fields(), [Math.template_fields()], five_seconds_from_now, one_minute_from_now)

session = Mastery.take_quiz(Math.quiz.title, "user@email.com")
QuizSession.active_sessions_for(Math.quiz.title)
Mastery.select_question(session)
Mastery.answer_question(session, "wrong")
Mastery.answer_question(session, "9")
```