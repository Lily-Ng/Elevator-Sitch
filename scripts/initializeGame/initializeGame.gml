// initialize game conditions for a new game

// reset score
global.p1score = 0
global.p2score = 0

global.p1strikes = 0
global.p2strikes = 0

// generate random next key
global.p1next = global.p1pool[irandom(8)]
global.p2next = global.p2pool[irandom(8)]

global.diamonds = choose(50, 65, 100)

global.p1win = false
global.p2win = false