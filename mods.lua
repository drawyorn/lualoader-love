function loadMods(dir)
    print(dir)
    filesInDir = love.filesystem.getDirectoryItems(dir)

    for i,f in ipairs(filesInDir) do
        trim = string.gsub(f,".lua","")
        print(trim)

        if f == trim..".lua" then
            require(dir.."/"..trim)
        else -- 
        end
    end
end