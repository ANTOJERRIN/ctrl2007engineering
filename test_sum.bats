#!/usr/bin/env bats

@test "Check sum is correct" {
  run bash -c "gcc sum.c -o sum && ./sum"
  [ "$status" -eq 0 ]
  [ "$output" = "5" ]
}