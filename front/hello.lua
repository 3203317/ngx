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

ngx.say(ngx.var.remote_addr);
----
