local mysql = require "resty.mysql"
                local db, err = mysql:new()
                if not db then
                    ngx.say("failed to instantiate mysql: ", err)
                    return
                end

                db:set_timeout(1000) -- 1 sec

                -- or connect to a unix domain socket file listened
                -- by a mysql server:
                --     local ok, err, errno, sqlstate =
                --           db:connect{
                --              path = "/path/to/mysql.sock",
                --              database = "ngx_test",
                --              user = "ngx_test",
                --              password = "ngx_test" }


                local ok, err, errno, sqlstate = db:connect{
                    host = "192.168.56.1",
                    port = 22306,
                    database = "cppt",
                    user = "root",
                    password = "1234",
                    max_packet_size = 1024 * 1024 }

                if not ok then
                    ngx.say("failed to connect: ", err, ": ", errno, " ", sqlstate)
                    return
                end

                ngx.say("connected to mysql.")
