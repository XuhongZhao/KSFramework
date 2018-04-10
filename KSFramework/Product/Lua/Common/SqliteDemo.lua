---
--- Created by zhaoq.
--- DateTime: 2017/9/14 21:27
---

require("lsqlite")

local DBDemo = {}

function DBDemo.Init()

    local db = lsqlite.open("c:/3dsn/plan/005ConfigTable/client_setting/data.db")
    local tb = db:nrows("select * from 'online_reward_config';")

    for k, v in pairs(tb) do
        print(v)
    end

end

return DBDemo
