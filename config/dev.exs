use Mix.Config

config :mastery, :persistence_fn, &MasteryPersistence.record_response/2
