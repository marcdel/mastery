# Mastery

Run the app locally with `iex -S mix`

Run tests with `mix test` or `mix test --cover`

Generate new dependency graph with `./generate_dep_graph.sh`

Simple math example:

1) `iex -S mix`
1) `GenServer.start_link(QuizManager, %{}, name: QuizManager)`
1) `QuizManager.build_quiz(title: :simple_math)`
1) `QuizManager.add_template(:simple_math, Math.template_fields)`
1) `QuizManager.lookup_quiz_by_title(:simple_math)`