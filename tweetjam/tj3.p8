pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
s="it is wednesday, my dudes"
f=0

function _update()
f+=5
end

function _draw()
 cls(3)
 x=128/2-(#s*4)/2
 for i=1,#s do
 	y=sin((x+f)/100)*8
 	color(1)
 	print(sub(s,i,i),x,(64-4)+y)
 	y=sin((x+10+f)/100)*8
 	color(7)
 	print(sub(s,i,i),x,(64-4)+y)
 	x+=4
 end
end
