x = 5 + "ok"

function abs(x)
  return x >= 0 and x or -x
end
print(abs("hello"))

function abs(x)
  assert(type(x) == "number", "abs expects a number")
  return x >= 0 and x or -x
end
print(abs("hello"))

