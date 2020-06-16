
for i,v in pairs(getgc(true))do
       if type(v)=="table" and rawget(v,"Damage") then
       v.MagSize=math.huge
       v.FireFreq=100
       v.BulletSpread=0
       v.FireAuto=true
       v.CamShakeMagnitude=0
       v.BulletSpeed=100000
   end
end
