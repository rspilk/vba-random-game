start = 0
print(start)
while true do
  a=math.random(0,7)
  if a == 0 then
    joypad.set(1, {up=1})
    joypad.set(1, {up=0})
    print("up")
  elseif a == 1 then
    joypad.set(1, {down=1})
    joypad.set(1, {down=0})
    print("down")
  elseif a == 2 then
    joypad.set(1, {right=1})
    joypad.set(1, {right=0})
    print("right")
  elseif a == 3 then
    joypad.set(1, {left=1})
    joypad.set(1, {left=0}) 
    print("left")
  elseif a == 4 then
    joypad.set(1, {A=1})
    joypad.set(1, {A=0})
    print("A")
  elseif a == 5 then
    joypad.set(1, {B=1})
    joypad.set(1, {B=0})
    print("B")
  elseif a == 6 then
    joypad.set(1, {start=1})
    joypad.set(1, {start=0})
    print("start")    
  elseif a == 7 then
    joypad.set(1, {select=1})
    joypad.set(1, {select=0})
    print("select")
  else
    print("wtf")
  end
  dur=math.floor(os.clock())-start
  seconds=math.floor(dur%60)
  minutes=math.floor((dur/60)%60)
  hours=math.floor(((dur/60)/60)%60)
  days=math.floor((((dur/60)/60)/60)%24)
  gui.box(0,0,256,8,0x00000025,0x00000025)
  gui.text(105,0,days.."d "..hours.."h "..minutes.."m "..seconds.."s ")
  --vba.message(days.."d "..hours.."h "..minutes.."m "..seconds.."s ")
  emu.frameadvance()
end
