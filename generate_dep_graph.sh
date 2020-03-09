#!/usr/bin/env bash

# Requires `brew install graphviz`
mix xref graph --format dot &&
dot -Tpng xref_graph.dot -o xref_graph.png &&
open xref_graph.png