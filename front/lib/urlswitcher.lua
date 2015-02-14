local _M = {};

local data = {
  _zuhu_1_oa_ = 'oa_1',
  _zuhu_2_oa_ = 'oa_1'
};

--local mysql = require 'resty.mysql';

function _M.getClusServName(tenant_name, service_name)
  --return ngx.var.service_name ..'_1';
  --return '';

  -- query from db
  return data['_'.. tenant_name ..'_'.. service_name ..'_'];
end;

return _M;
