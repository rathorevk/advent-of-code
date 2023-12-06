## Advent of Code Elixir

This repository contains my solutions to [Advent of Code](https://www.adventofcode.com) using Elixir.
Inputs are omitted as these are available on the advent of code site. or can be configurable in the `secrets.exs` file by replacing session_cookie -
```elixir
import Config

config :advent_of_code, AdventOfCode.Input,
  allow_network?: true,
  session_cookie: "..." # yours will be longer
```

## Setup
To run this project, you will need to install:
  * Elixir - 1.14.2
  * Erlang - 25.1.2
Which is already added to the .tool_versions file.

## Run Server
 * Start server using iex -S mix
 * To run the solution for day01 part1: 
  ```elixir
  iex(1)> AdventOfCode.Y2023.Day0.part1()
  ```
 * To run the solution for day01 part2:
  ```elixir
    iex(1)> AdventOfCode.Y2023.Day0.part2()
  ```

## Tests

To run the tests for this project, simply run in your terminal:

```shell
mix test
```

## Benchmark
* To run benchee pass the -b flag and run the command:
```shell 
mix d01.p1 -b
```
