def i_must_have_truth(value)
  if value == false
  raise TypeError
  ‘You must give me truth’
end
end

i_must_have_truth (false)
