function onDrop()
    ZONAS = {'dcbd41' , 'f5e252' , '08ef82' , 'f7e0b7'}
    ZONA = {}
    objZone = {}
    ORDEM = {}


    for i=1, 4 do
        ZONA[i] = getObjectFromGUID(ZONAS[i])
        objZone[i] = ZONA[i].getObjects()
        ORDEM[i] = (getOrder(objZone[i]))

    end

    Turns.order = ORDEM

end

function getOrder(zone)
    for _, object in ipairs(zone) do
        if object.getName() == 'redOrder' then
            return "Red"
        elseif object.getName() == 'greenOrder' then
            return "Green"
        elseif object.getName() == 'yellowOrder' then
            return "Yellow"
        elseif object.getName() == 'blueOrder' then
            return "Blue"
        end
    end
end