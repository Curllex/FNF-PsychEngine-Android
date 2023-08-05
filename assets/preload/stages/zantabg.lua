function onCreate()
  
  makeLuaSprite('fundao','',300,50)
  makeGraphic('fundao',1900,720,'1E1E1E')
  addLuaSprite('fundao',false)
  
  makeLuaSprite('fundo','fundo',0,0)
  scaleObject('fundo',3.5,3.5)
  addLuaSprite('fundo',false)

	makeLuaSprite('pedras','pedras',0,0)
  setScrollFactor('pedras',0.7,0.7)
  scaleObject('pedras',3.5,3.5)
	addLuaSprite('pedras',false)
  
  makeLuaSprite('dentro','dentro',0,0)
  scaleObject('dentro',3.5,3.5)
  addLuaSprite('dentro',false)
  
  makeAnimatedLuaSprite('bruno','bruno',900,285)addAnimationByPrefix('bruno','idle','bruno idle',24,true)
  addAnimationByPrefix('bruno','idle-alt','bruno ideia',true)
  addAnimationByPrefix('bruno','hey','bruno shoot',16,true)
  objectPlayAnimation('bruno','idle',true)
  scaleObject('bruno',0.6,0.6)
  addLuaSprite('bruno',false)
  
  makeAnimatedLuaSprite('ala','ala',60,355)addAnimationByPrefix('ala','idle','ala idle',24,true)
  addAnimationByPrefix('ala','ideia','ala ideia',true)
  objectPlayAnimation('ala','idle',true)
  scaleObject('ala',1,1)
  addLuaSprite('ala',true)
  
	makeLuaSprite('grade','grade',0,0)
  scaleObject('grade',3.5,3.5)
	addLuaSprite('grade',false)
  
  makeLuaSprite('tampagrade','tampagrade',0,0)
  scaleObject('tampagrade',3.5,3.5)
  addLuaSprite('tampagrade',false)
  
  makeLuaSprite('borda','',-150,-620)
  makeGraphic('borda',1900,720,'000000')
  setScrollFactor('borda','camera','camera')
  addLuaSprite('borda',true)

  makeLuaSprite('borda2','',-150,620)
  makeGraphic('borda2',1900,720,'000000')
  setScrollFactor('borda2','camera','camera')
  addLuaSprite('borda2',true)
  
  setObjectOrder('gfGroup',9)
  
    
end

function onBeatHit( ... )--for every beat
	-- body
  
  noteTweenAlpha('dadnote1',0,0,0.1,'linear')
    noteTweenAlpha('dadnote2',1,0,0.1,'linear')
    noteTweenAlpha('dadnote3',2,0,0.1,'linear')
    noteTweenAlpha('dadnote4',3,0,0.1,'linear')
  
  setProperty('gfGroup.y',155+40)
  doTweenY('bfGrupo','gfGroup',155,0.25,'circOut')
    
    setProperty('ala.y',355+30)
  doTweenY('allan','ala',355,0.45,'circOut')
  
    setProperty('boyfriend.y',50+20)
  doTweenY('bf','boyfriend',50,0.15,'circOut')
  
    setProperty('dad.y',20+20)
  doTweenY('dad','dad',20,0.15,'circOut')
  
  end
  
function onStepHit( ... )--for every step
	-- body
end
    
    local timeshit = -1500;
function onUpdate( ... )
  doTweenY('float','pedras',(math.sin(timeshit*2)*90),0.001,'linear')
    timeshit = timeshit+0.01
end