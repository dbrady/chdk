rem Author dbrady
rem Written for A640
rem My first script! No clue if it will work anywhere (including my own camera)
rem Hack #1: for loop stops after 100pix; a while/wend would be  better here

@title Macro Focus Bracket
@param a Start (near) focus
@default a 0
@param b Number of shots
@default b 10
@param c Focus step (mm)
@default c 1

print "Macro Focus Bracketing"
f=a
set_focus f
sleep 1000 
for s=1 to b
    f=f+c
    set_focus f
    print "Shooting "; f; "mm..."
    shoot
next s
end
