# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require "date"


def find(id)
  return @candidates.find {|a| a[:id]== id} 
end

def experienced?(candidate)
  
  return candidate[:years_of_experience].to_i>=2
  # Your code Here
end

def qualified_candidates(candidates)
  # Your code Here
  today = Date.today
  subset = candidates.reduce([]) {
    |sub,cur|
    (experienced?(cur)&&
    cur[:github_points].to_i>=100&&
     language?(cur)&&
     (today-cur[:date_applied]).to_i<=15&&
    cur[:age]>17
    )?sub<<cur:sub
  }
 
  return subset 
end

def ordered_by_qualifications(candidates)
 candidates.sort_by {|a|[a[:years_of_experience],a[:github_points]]}.reverse
end

def language?(candidate)
 return (candidate[:languages].include?('Python')||candidate[:languages].include?('Ruby'))
end

# More methods will go below


