local checks={ "Ammo", "ammo", "Damage", "damage", "Firerate", "firerate", "FireRate", "fireRate", "Recoil", "recoil", "Spread", "spread", "ability", "Ability" }
for i,v in pairs(getgc(true))do
   for x=1,#checks do
       if type(v)=="table" and rawget(v,checks[x]) then
           v.firerate=0
           v.burstDelay=0
           v.automatic=true
           v.LoadedAmmo=math.huge
           v.velocity=1000000
           v.description="hot script by Jas_n#0501 ;)"
           v.zoomAmount=5
           v.additionalSpeed=11.5
       end
   end
end
