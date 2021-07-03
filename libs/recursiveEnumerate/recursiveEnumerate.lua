
function initEntity(item_list,folder)
    recursiveEnumerate(item_list,folder)
    requireItems(item_list,folder)
end

function recursiveEnumerate(item_list, folder)
    local items = love.filesystem.getDirectoryItems(folder)
    for _, item in ipairs(items) do
        local file = folder .. '/' .. item
        local info = love.filesystem.getInfo(file,info)
        if info.type == "file" then
            table.insert( item_list,item)
            print("dd")
        elseif info.type == "directory" then
            recursiveEnumerate(item_list,file)
        end
    end
end

function requireItems(item_list,folder)
    for _, item in ipairs(item_list) do
        local item = item:sub(1,-5)
        local file = folder .. '/' .. item
        print(file)
        require(file)
    end
end