use_bpm 93
use_synth :tri
young = "C:/Users/aidan_arrington/Documents/Audacity/Young and Fine.wav"
like = "C:/Users/aidan_arrington/Downloads/I Like Everything About You.wav"
smiles = "C:/Users/aidan_arrington/Downloads/Gary Bartz - Gentle Smiles.wav"
note = 21
young_loops = 0

live_loop :young do
  cue :sample_start
  
  young_loops += 1
  
  stop if young_loops > 8
  
  if young_loops <= 3
    sample young, amp: 1.5, beat_stretch: 8
    sleep 8
    
  elsif young_loops == 4
    sample young, amp: 1.5, beat_stretch: 8, release: 4
    sleep 8
    
  elsif young_loops <= 6
    sleep 8
    
  else
    sample young, amp: 0.5, beat_stretch: 8, attack: 2
    sleep 8
  end
end

live_loop :pocket, delay: 16, sync: :sample_start do
  stop if young_loops > 7
  
  sample :bd_haus, amp: 0.2
  sleep 0.5
  sample :bd_haus, amp: 0.2
  sleep 0.5
  sample :sn_generic, amp: 0.3
  sleep 0.75
  sample :bd_haus, amp: 0.2
  sleep 0.50
  sample :bd_haus, amp: 0.2
  sleep 0.25
  sample :bd_haus, amp: 0.2
  sleep 0.5
  sample :sn_generic, amp: 0.3
  sleep 0.75
end

live_loop :hats, delay: 16 do
  stop if young_loops > 7
  
  2.times do
    # sample :drum_cymbal_closed, amp: 0.45, rate: 0.9
    sleep 1
  end
end

live_loop :smiles, delay: 32, sync: :sample_start do
  stop if young_loops > 7
  
  sample smiles, amp: 1
  sleep 8
end
sleep 64
live_loop :tri do
  play :g5
  sleep 0.25
  play :f5
  sleep 0.25
  play :e5
  sleep 0.25
  play :a4
  sleep 0.25
  play :g4
  sleep 0.25
  play :e5
  sleep 0.25
  play :f5
  sleep 0.25
  play :c6
  sleep 0.25
  stop
end
