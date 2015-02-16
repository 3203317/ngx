local _M = {};

local data = {
  zuhu_1_oa = 'oa_1',
  zuhu_2_oa = 'oa_1'
};

--local mysql = require 'resty.mysql';

function _M.getClusServName(tenant_name, service_name)
  --return ngx.var.service_name ..'_1';
  --return '';

  -- query from db
  return data[tenant_name ..'_'.. service_name];
end;

return _M;
