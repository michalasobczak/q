require 'busted.runner'()
describe("spies", function()
  it("registers a new spy as a callback", function()
    print "\n-> new spy"
    local s = spy.new(function(a,b,c) 
      print(a,b,c) 
    end)
    s(1, 2, 3)
    s(4, 5, 6)
    assert.spy(s).was.called()
    assert.spy(s).was.called(2)            -- twice!
    assert.spy(s).was.called_with(1, 2, 3) -- checks the history
  end)
  it("replaces an original function", function()
    print "\n-> replace"
    local t = {
      greet = function(msg) print(msg) end
    }
    local s = spy.on(t, "greet")
    t.greet("Hey!")   -- prints 'Hey!'
    assert.spy(t.greet).was_called_with("Hey!")
    t.greet:clear()   -- clears the call history
    assert.spy(s).was_not_called_with("Hey!")
    t.greet:revert()  -- reverts the stub
    t.greet("Hello!") -- prints 'Hello!', will not pass through the spy
    assert.spy(s).was_not_called_with("Hello!")
  end)
end)

