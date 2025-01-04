# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with Lua's `pairs` iterator when used with nested tables. The `pairs` function does not guarantee a specific iteration order, which can lead to unpredictable results if the order of processing is important.

## Bug Description

The `bug.lua` file contains a function that recursively iterates through a nested table using `pairs`.  Because `pairs` doesn't guarantee order, the output of this function might vary between Lua implementations or even different runs of the same program.

## Solution

The `bugSolution.lua` file provides an alternative implementation that uses a sorted table to ensure consistent iteration order.  This approach guarantees predictable results, regardless of the Lua version or execution environment. 

## How to Reproduce

1. Clone this repository.
2. Run `bug.lua` using a Lua interpreter.
3. Observe the inconsistent order of processing the nested table.
4. Run `bugSolution.lua` and compare the output for consistent order.