local rockstar = {}

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

function rockstar.maximize_the_only_client(c)
    local t = client.focus and client.focus.first_tag or nil
    if t then
        local clients = t:clients()
        local count = 0
        for _ in pairs(clients) do count = count + 1 end

        if count == 1 then
            rockstar.maximize(c)
        else
            for _, k in ipairs(clients) do
                rockstar.unmaximize(k)
            end
        end
    end
end

return rockstar
