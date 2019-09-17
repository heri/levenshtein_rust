require 'helix_runtime/build_task'

HelixRuntime::BuildTask.new("levenshtein_rust")

task default: :build
