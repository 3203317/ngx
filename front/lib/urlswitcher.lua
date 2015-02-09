local _M = {};

local data = {
  dog = 1,
  cat = 2
};

function _M.getClusterServName()
  return ngx.var.service_name ..'_1';
  --return '';
end

function _M.getUrlParams()
  if ngx.var.args == nil then
    return 'tenant='.. ngx.var.tenant_name;
  end

  return 'tenant='.. ngx.var.tenant_name ..'&'.. ngx.var.args;
end

return _M;
