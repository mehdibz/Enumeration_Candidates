# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.select { |candidate| candidate[:id] == 9 }
end


def experienced?(candidate)
	if candidate[:years_of_experience].to_i > 2 
		true
	else
		false
	end
end


def qualified_candidates(candidates)
   @candidates.select { |candidate| 
   	(candidate[:github_points] >= 100)&&
   	((Date.today - candidate[:date_applied]) < 15)&&
   	(candidate[:age] > 17)&&
   	(candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python"))
   }
end


def ordered_by_qualifications(candidates)
   @candidates.sort_by {|candidates| candidates[:years_of_experience]}
end


# More methods will go below
# def date_split(date)	
# Date.today  -  3.days.ago.to_date).to_i
# pp candidates.detect{ |candidate| candidate[:date_applied] }
# 	real_date=date.date_split('.', 1)
# 	# puts real_date
# end

