# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here


# pp @candidates
# test 1
pp find(5)

# test 2
pp experienced?(@candidates[0])

# test 3
pp qualified_candidates(@candidates)

# test 4
pp ordered_by_qualifications(@candidates)