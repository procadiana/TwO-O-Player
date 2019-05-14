# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if(candidate[:id] == id)
      return candidate
    end
  end
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    true
  else
    false
  end
end

def github_points?(candidate)
  if candidate[:github_points] >= 100
    true
  else
    false
  end
end

def right_languages?(candidate)
  if candidate[:languages] == 'Ruby' || 'Python'
    true
  else
    false
  end
end

def date_applied?(candidate)
  if candidate[:date_applied] <= 15.days.ago.to_date
    true
  else
    false
  end
end

def legal_age?(candidate)
   if candidate[:age] > 17
    true
  else
    false
  end
end

def ordered_by_qualifications(candidates)
  @candidates.sort_by {|candidate| [-candidate[:years_of_experience],-candidate[:github_points]] }
end





def qualified_candidates(candidates)
  skilled_candidates =[]
  @candidates.each do |candidate|
    if experienced?(candidate) && github_points?(candidate) && right_languages?(candidate) && date_applied?(candidate) && legal_age?(candidate)
      skilled_candidates.push(candidate)
    end
  end
  print skilled_candidates
end

# More methods will go below
