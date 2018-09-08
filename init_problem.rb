problem_name = nil
if ARGV.empty?
  while problem_name.nil?
    puts 'Enter problem name (e.g. 001-two-sum)'
    problem_name = gets.to_s
  end
else
  problem_name = ARGV[0]
end

solution_path = "lib/#{problem_name}"
solution_filename = 'solution.rb'
spec_path = "spec/#{problem_name}"
spec_filename = 'solution_spec.rb'

`mkdir #{solution_path}`
`mkdir #{spec_path}`
`touch #{solution_path}/#{solution_filename}`
`touch #{spec_path}/#{spec_filename}`
`echo "class Solution\nend" >> #{solution_path}/#{solution_filename}`
`echo "require_relative '../../#{solution_path}/#{solution_filename}'\n\ndescribe Solution do\n\nend" >> #{spec_path}/#{spec_filename}`