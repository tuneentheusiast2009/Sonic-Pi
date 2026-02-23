use_bpm 136
use_synth :piano

define :sponge1 do
  play :r
  sleep 1
  play :E4
  play :Gs4
  sleep 2
  play :E5
  play :Gs4
  sleep 1
  
end

define :sponge2 do
  play :r
  sleep 1
  play :E5
  play :Gs4
  play :B4
  sleep 1
  play :B4
  sleep 1
  play :E5
  play :Gs4
  sleep 1
  
end

define :sponge3 do
  play :B4
  sleep 0.75
  play :As4
  sleep 0.25
  play :Gs4
  play :B4
  sleep 0.75
  play :Cs5
  sleep 0.25
  play :B4
  sleep 1
  play :Gs4
  play :E5
  sleep 1
end

live_loop:background_notes do
  play:E3, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  play:E4, amp: 0.25
  sleep 1
  play:B3, amp: 0.25
  sleep 1
  play:E4, amp: 0.25
  sleep 1
  
  play:E3, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  play:E4, amp: 0.5
  sleep 1
  play:B3, amp: 0.5
  sleep 1
  play:E4, amp: 0.5
  sleep 1
  
  play:E3, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  play:E4, amp: 0.75
  sleep 1
  play:B3, amp: 0.75
  sleep 1
  play:E4, amp: 0.75
  sleep 1
  
  5.times do
    play:E3, amp: 1
    sleep 1
    play:B3, amp: 1
    play:E4, amp: 1
    sleep 1
    play:B3, amp: 1
    sleep 1
    play:E4, amp: 1
    sleep 1
  end
  stop
end


# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2
sponge1

# Measure 3
sponge2

# Measure 4
sponge2

# Measure 5
sponge3

# Measure 6
sponge2

# Measure 7
sponge3

# Measure 8
sponge1

sample :drum_cymbal_open
play:B3, amp: 1
