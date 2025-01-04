local function foo(t)
  local sortedKeys = {}
  for k, _ in pairs(t) do
    table.insert(sortedKeys, k)
  end
  table.sort(sortedKeys)

  for _, k in ipairs(sortedKeys) do
    if type(t[k]) == "table" then
      foo(t[k])
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)