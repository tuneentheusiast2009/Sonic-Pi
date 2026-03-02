use_bpm 93
use_synth :chipbass

young = "C:/Users/aidan_arrington/Documents/Audacity/Young and Fine.wav"
like = "C:/Users/aidan_arrington/Downloads/I Like Everything About You.wav"
smiles = "C:/Users/aidan_arrington/Downloads/Gary Bartz - Gentle Smiles.wav"

live_loop :young do
  cue :sample_start
  sample young, amp: 1.5, beat_stretch: 8
  sleep 8
  #sleep sample_duration(young)
  #cue :sample_done
end

sleep 16
live_loop :pocket, sync: :sample_start do
  sample :bd_haus, amp: 0.3
  sleep 0.5
  sample :bd_haus, amp: 0.3
  sleep 0.5
  sample :sn_generic, amp: 0.4
  sleep 0.75
  sample :bd_haus, amp: 0.3
  sleep 0.50
  sample :bd_haus, amp: 0.3
  sleep 0.25
  sample :bd_haus, amp: 0.3
  sleep 0.5
  sample :sn_generic, amp: 0.4
  sleep 0.75
end

sleep 48
live_loop :smiles do
  sample smiles, amp: 1.5
  sleep 8
end

sleep 32
live_loop :pocket, sync: :sample_start do
  sample :bd_haus, amp: 0.3
  sleep 0.5
  sample :bd_haus, amp: 0.3
  sleep 0.5
  sample :sn_generic, amp: 0.4
  sleep 0.75
  sample :bd_haus, amp: 0.3
  sleep 0.50
  sample :bd_haus, amp: 0.3
  sleep 0.25
  sample :bd_haus, amp: 0.3
  sleep 0.5
  sample :sn_generic, amp: 0.4
  sleep 0.75
end

live_loop :hats do
  2.times do
    sample :drum_cymbal_closed, amp: 0.45
    sleep 1
  end
end

