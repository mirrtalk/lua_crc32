-- 
-- file: test.lua
-- date: 2015/01/21
-- desc: test crc32
--

local crc32 = require("crc32")

local function test()
        local str
        for i=1,10 do
                str = string.format("helloworld%2d", i)
                print(string.format("str: %s hash: %d", str, crc32.hash(str, #str, 31)))
        end
end

test()
