require 'benchmark'
require_relative './lib/finder'
include ArrayAdder

n = 5_000_000
arr = Array.new(n) {rand(1..n)}
target = rand(n)

Benchmark.bmbm do |x|
  x.report("nested_loop_attitive_find:")  { nested_loop_attitive_find(arr, target) }
  x.report("slow_hash_additive_find:")    { slow_hash_additive_find(arr, target) }
  x.report("fast_hash_additive_find:")    { fast_hash_additive_find(arr, target) }
end