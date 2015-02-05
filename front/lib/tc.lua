local _M = {};

local data = {
  dog = 1,
  cat = 2
};

function _M.getTenant(name)
  return data[name];
end

function _M.gg(n)
  return n;
end

return _M;
