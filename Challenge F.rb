num = 10
note = 21
note_top = 108


10.times do
  print(num)
  sleep 5
  num= num - 1
end

print ("HAPPY NEW YEAR!")

87.times do
  play(note)
  sleep 0.5
  note = note + 1
  play(note_top)
  sleep 0.5
  note_top = note_top - 1
end
