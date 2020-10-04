local rockstar = {}

function rockstar.length(arr)
    local count = 0
    for _ in pairs(arr) do
        count = count + 1
    end
    return count
end

function rockstar.maximize(c)
    c.maximized = true
    c.border_width = 0
    c.maximized_without_border = true
end

function rockstar.unmaximize(c)
    if c.maximized_without_border  then
        -- Border width is automatically restored
        -- c.border_width = ...
        c.maximized = false
        c.maximized_without_border   = nil
    end
end

function rockstar.maximize_the_only_client_with_tag(tag)
    if tag then
        local clients = tag:clients()
        local count = 0
        for _ in pairs(clients) do count = count + 1 end

        if count == 1 then
            rockstar.maximize(clients[1])
        end
    end
end

function rockstar.maximize_the_only_client()
    local tag = client.focus and client.focus.first_tag or nil
    if tag then
        local clients = tag:clients()
        local count = 0
        for _ in pairs(clients) do count = count + 1 end

        if count == 1 then
            rockstar.maximize(clients[1])
        else
            for _, k in ipairs(clients) do
                rockstar.unmaximize(k)
            end
        end
    end
end

return rockstar
