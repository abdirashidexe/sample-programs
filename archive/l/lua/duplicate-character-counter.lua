function duplicateCharacterCounter(word)
  if (string.len(word) >= 1) then
    local myTable = {}                                -- will hold: keys{h, e, l, o} values{1, 1, 2, 1}
    
    for i=1, string.len(word) do                   -- while i is <= 5 (hello is 5 letters)
      --local occur = 1;                             -- it already occured once
      
      if not (myTable[string.sub(word, i, i)]) then  --f letter is not in the map
        myTable[string.sub(word, i, i)] = 1;     -- add it to map with its value as 1. so "h", 1
      else
        --occur = occur + 1;                         -- else if its IN the map
        myTable[string.sub(word, i, i)] = myTable[string.sub(word, i, i)]+1;     -- reassign i. so "h", 2
      end
    end
    for key, value in pairs(myTable) do

      if (myTable[key] ~= 1) then
        print(key .. ": " .. value .. "\n")
        --return key .. ": " .. value .. "\n"
      end
    end
  end
end


--duplicateCharacterCounter("") -- should print usage
--duplicateCharacterCounter("hello"
duplicateCharacterCounter("gooodbyeblues") -- trying 3 o's
duplicateCharacterCounter(arg[1])
