local io = require('io')

function meminfo() 
    local info = {}
    for line in io.lines('/proc/meminfo') do
        local _, _, name, value = string.find(line, '(.+):%s*(%d+)')
        info[name] = tonumber(value)
    end

    return info
end

return meminfo