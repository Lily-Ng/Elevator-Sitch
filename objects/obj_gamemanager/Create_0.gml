/// @description Insert description here
// You can write your code in this 

// diamonds available
global.diamonds = choose(40, 60, 80)

// scores
global.p1score = 0
global.p2score = 0

// key for pressing elevator button
global.p1press = "R"
global.p2press = "U"

// set of possible key presses
global.p1pool = ["Z", "X", "C", "A", "S", "D", "Q", "W", "E"]
global.p2pool = ["B", "N", "M", "J", "K", "L", "I", "O", "P"]

// initialize seed
randomize()

// random key
global.p1next = global.p1pool[irandom(8)]
global.p2next = global.p2pool[irandom(8)]
global.p1steal = "F"
global.p2steal = "H"


// variables for implementing penalty of pressing the wrong button three times continuously
global.p1strikes = 0
global.p2strikes = 0

// ending flags
global.p1win = false
global.p2win = false