local _M = {};

local data = {
  _zuhu_1_oa_ = 'oa_1',
  _zuhu_2_oa_ = 'oa_1'
};

--local mysql = require 'resty.mysql';

function _M.getClusterServName()
  --return ngx.var.service_name ..'_1';
  --return '';

  -- query from db
  return data['_'.. ngx.var.tenant_name ..'_'.. ngx.var.service_name ..'_']
end

function _M.getUrlParams()
  if ngx.var.args == nil then
    return 'tenant='.. ngx.var.tenant_name;
  end

  return 'tenant='.. ngx.var.tenant_name ..'&'.. ngx.var.args;
end

return _M;
