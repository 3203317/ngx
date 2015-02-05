ngx.say("hello, lua!");

local redis = require "resty.redis";
ngx.say(redis._VERSION);

--local tenant = ngx.shared.tenant;

--ngx.say(tenant:get('a'));
--ngx.say(tenant)


local t = require "tc";
--ngx.say(t);
ngx.say(t.getTenant("dog"))

ngx.say(t.gg(ngx.var.tenant_name));
ngx.say(t.gg(ngx.var.service_name));
ngx.say(t.gg(ngx.var.suffix));


local args = ngx.req.get_uri_args()
ngx.say(ngx.var.args);


----


local mysql = require "resty.mysql"

   local db = mysql:new()

ngx.say(mysql._VERSION)

if not db then
                    ngx.say("failed to instantiate mysql: ", err)
                    return
                end

db:set_timeout(1000) -- 1 sec

local ok, err, errno, sqlstate = db:connect{
                    host = "127.0.0.1",
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


