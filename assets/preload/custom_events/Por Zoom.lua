function onEvent(name,v1,v2)
  if name == 'Por Zoom' then
    setProperty('defaultCamZoom',v1)
    if not v1 == '' then
      setProperty('camGame.zoom',v1)
      
    end
  end
end