require "bundler/setup"
require "benchmark/ips"
require "levenshtein_rust"

Benchmark.ips do |x|
  x.report("Ruby 1") { LevenshteinRust.distance_ruby("Tim L'oreil", "Tim") }
  x.report("Rust 1") { LevenshteinRust.distance("Tim L'oreil", "Tim") }

  x.report("Ruby 10") { LevenshteinRust.distance_ruby("Saint-Francois-de-Brompton", "St Francois de Brompton") }
  x.report("Rust 10") { LevenshteinRust.distance("Saint-Francois-de-Brompton", "St Francois de Brompton") }

  x.report("Ruby 100") { LevenshteinRust.distance_ruby("Sainte-Catherine-de-la-Jacques-Cartier-de-Richelieu", "Ste-Catherine-de-la-Jacques de Richelieu") }
  x.report("Rust 100") { LevenshteinRust.distance("Sainte-Catherine-de-la-Jacques-Cartier-de-Richelieu", "Ste-Catherine-de-la-Jacques de Richelieu") }
end