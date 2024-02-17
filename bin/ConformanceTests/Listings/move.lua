--[====[Generated by CreateTests.lua v2]====]
return function()
	return [====[Function 0 (checkerror):
    4:   local s, err = pcall(f, ...)
GETIMPORT R2 1 [pcall]
MOVE R3 R1
GETVARARGS R4 -1
CALL R2 -1 2
REMARK builtin assert/1
    5:   assert(not s and string.find(err, msg))
NOT R5 R2
JUMPIFNOT R5 L0
GETIMPORT R5 4 [string.find]
MOVE R6 R3
MOVE R7 R0
CALL R5 2 1
L0: FASTCALL1 1 R5 L1
GETIMPORT R4 6 [assert]
CALL R4 1 0
    6: end
L1: RETURN R0 0

Function 1 (eqT):
   20:     for k, v in pairs(a) do assert(b[k] == v) end 
GETIMPORT R2 1 [pairs]
MOVE R3 R0
CALL R2 1 3
FORGPREP_NEXT R2 L3
REMARK builtin assert/1
L0: GETTABLE R9 R1 R5
JUMPIFEQ R9 R6 L1
LOADB R8 0 +1
L1: LOADB R8 1
L2: FASTCALL1 1 R8 L3
GETIMPORT R7 3 [assert]
CALL R7 1 0
L3: FORGLOOP R2 L0 2
   21:     for k, v in pairs(b) do assert(a[k] == v) end 
GETIMPORT R2 1 [pairs]
MOVE R3 R1
CALL R2 1 3
FORGPREP_NEXT R2 L7
REMARK builtin assert/1
L4: GETTABLE R9 R0 R5
JUMPIFEQ R9 R6 L5
LOADB R8 0 +1
L5: LOADB R8 1
L6: FASTCALL1 1 R8 L7
GETIMPORT R7 3 [assert]
CALL R7 1 0
L7: FORGLOOP R2 L4 2
   22:   end
RETURN R0 0

Function 2 (??):
    3: local function checkerror (msg, f, ...)
DUPCLOSURE R0 K0 ['checkerror']
    8: print("testing move")
GETIMPORT R1 2 [print]
LOADK R2 K3 ['testing move']
CALL R1 1 0
   16:   checkerror("table expected", table.move, 1, 2, 3, 4)
MOVE R1 R0
LOADK R2 K4 ['table expected']
GETIMPORT R3 7 [table.move]
LOADN R4 1
LOADN R5 2
LOADN R6 3
LOADN R7 4
CALL R1 6 0
   17:   checkerror("table expected", table.move, {}, 2, 3, 4, "foo")
MOVE R1 R0
LOADK R2 K4 ['table expected']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADN R5 2
LOADN R6 3
LOADN R7 4
LOADK R8 K8 ['foo']
CALL R1 7 0
   19:   local function eqT (a, b)
DUPCLOSURE R1 K9 ['eqT']
   24:   local a = table.move({10,20,30}, 1, 3, 2)  -- move forward
GETIMPORT R2 7 [table.move]
REMARK allocation: table array 3
NEWTABLE R3 0 3
LOADN R4 10
LOADN R5 20
LOADN R6 30
SETLIST R3 R4 3 [1]
LOADN R4 1
LOADN R5 3
LOADN R6 2
CALL R2 4 1
   25:   eqT(a, {10,10,20,30})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table array 4
NEWTABLE R5 0 4
LOADN R6 10
LOADN R7 10
LOADN R8 20
LOADN R9 30
SETLIST R5 R6 4 [1]
CALL R3 2 0
   28:   a = table.move({10, 20, 30}, 1, 3, 3)
GETIMPORT R3 7 [table.move]
REMARK allocation: table array 3
NEWTABLE R4 0 3
LOADN R5 10
LOADN R6 20
LOADN R7 30
SETLIST R4 R5 3 [1]
LOADN R5 1
LOADN R6 3
LOADN R7 3
CALL R3 4 1
MOVE R2 R3
   29:   eqT(a, {10, 20, 10, 20, 30})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table array 5
NEWTABLE R5 0 5
LOADN R6 10
LOADN R7 20
LOADN R8 10
LOADN R9 20
LOADN R10 30
SETLIST R5 R6 5 [1]
CALL R3 2 0
REMARK allocation: table array 4
   32:   a = {10, 20, 30, 40}
NEWTABLE R3 0 4
LOADN R4 10
LOADN R5 20
LOADN R6 30
LOADN R7 40
SETLIST R3 R4 4 [1]
MOVE R2 R3
   33:   table.move(a, 1, 4, 2, a)
GETIMPORT R3 7 [table.move]
MOVE R4 R2
LOADN R5 1
LOADN R6 4
LOADN R7 2
MOVE R8 R2
CALL R3 5 0
   34:   eqT(a, {10, 10, 20, 30, 40})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table array 5
NEWTABLE R5 0 5
LOADN R6 10
LOADN R7 10
LOADN R8 20
LOADN R9 30
LOADN R10 40
SETLIST R5 R6 5 [1]
CALL R3 2 0
   36:   a = table.move({10,20,30}, 2, 3, 1)   -- move backward
GETIMPORT R3 7 [table.move]
REMARK allocation: table array 3
NEWTABLE R4 0 3
LOADN R5 10
LOADN R6 20
LOADN R7 30
SETLIST R4 R5 3 [1]
LOADN R5 2
LOADN R6 3
LOADN R7 1
CALL R3 4 1
MOVE R2 R3
   37:   eqT(a, {20,30,30})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table array 3
NEWTABLE R5 0 3
LOADN R6 20
LOADN R7 30
LOADN R8 30
SETLIST R5 R6 3 [1]
CALL R3 2 0
REMARK allocation: table hash 0
   39:   a = {}   -- move to new table
NEWTABLE R2 0 0
REMARK builtin assert/1
   40:   assert(table.move({10,20,30}, 1, 3, 1, a) == a)
GETIMPORT R5 7 [table.move]
REMARK allocation: table array 3
NEWTABLE R6 0 3
LOADN R7 10
LOADN R8 20
LOADN R9 30
SETLIST R6 R7 3 [1]
LOADN R7 1
LOADN R8 3
LOADN R9 1
MOVE R10 R2
CALL R5 5 1
JUMPIFEQ R5 R2 L0
LOADB R4 0 +1
L0: LOADB R4 1
L1: FASTCALL1 1 R4 L2
GETIMPORT R3 11 [assert]
CALL R3 1 0
   41:   eqT(a, {10,20,30})
L2: MOVE R3 R1
MOVE R4 R2
REMARK allocation: table array 3
NEWTABLE R5 0 3
LOADN R6 10
LOADN R7 20
LOADN R8 30
SETLIST R5 R6 3 [1]
CALL R3 2 0
REMARK allocation: table hash 0
   43:   a = {}
NEWTABLE R2 0 0
REMARK builtin assert/1
   44:   assert(table.move({10,20,30}, 1, 0, 3, a) == a)  -- empty move (no move)
GETIMPORT R5 7 [table.move]
REMARK allocation: table array 3
NEWTABLE R6 0 3
LOADN R7 10
LOADN R8 20
LOADN R9 30
SETLIST R6 R7 3 [1]
LOADN R7 1
LOADN R8 0
LOADN R9 3
MOVE R10 R2
CALL R5 5 1
JUMPIFEQ R5 R2 L3
LOADB R4 0 +1
L3: LOADB R4 1
L4: FASTCALL1 1 R4 L5
GETIMPORT R3 11 [assert]
CALL R3 1 0
   45:   eqT(a, {})
L5: MOVE R3 R1
MOVE R4 R2
REMARK allocation: table hash 0
NEWTABLE R5 0 0
CALL R3 2 0
   47:   a = table.move({10,20,30}, 1, 10, 1)   -- move to the same place
GETIMPORT R3 7 [table.move]
REMARK allocation: table array 3
NEWTABLE R4 0 3
LOADN R5 10
LOADN R6 20
LOADN R7 30
SETLIST R4 R5 3 [1]
LOADN R5 1
LOADN R6 10
LOADN R7 1
CALL R3 4 1
MOVE R2 R3
   48:   eqT(a, {10,20,30})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table array 3
NEWTABLE R5 0 3
LOADN R6 10
LOADN R7 20
LOADN R8 30
SETLIST R5 R6 3 [1]
CALL R3 2 0
   51:   a = table.move({[maxI - 2] = 1, [maxI - 1] = 2, [maxI] = 3},
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 3
NEWTABLE R4 4 0
LOADK R5 K12 [2147483645]
LOADN R6 1
SETTABLE R6 R4 R5
LOADK R5 K13 [2147483646]
LOADN R6 2
SETTABLE R6 R4 R5
LOADK R5 K14 [2147483647]
LOADN R6 3
SETTABLE R6 R4 R5
   52:                  maxI - 2, maxI, -10, {})
LOADK R5 K12 [2147483645]
LOADK R6 K14 [2147483647]
LOADN R7 -10
REMARK allocation: table hash 0
NEWTABLE R8 0 0
   51:   a = table.move({[maxI - 2] = 1, [maxI - 1] = 2, [maxI] = 3},
CALL R3 5 1
MOVE R2 R3
   53:   eqT(a, {[-10] = 1, [-9] = 2, [-8] = 3})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table hash 3
NEWTABLE R5 4 0
LOADN R6 -10
LOADN R7 1
SETTABLE R7 R5 R6
LOADN R6 -9
LOADN R7 2
SETTABLE R7 R5 R6
LOADN R6 -8
LOADN R7 3
SETTABLE R7 R5 R6
CALL R3 2 0
   55:   a = table.move({[minI] = 1, [minI + 1] = 2, [minI + 2] = 3},
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 3
NEWTABLE R4 4 0
LOADK R5 K15 [-2147483648]
LOADN R6 1
SETTABLE R6 R4 R5
LOADK R5 K16 [-2147483647]
LOADN R6 2
SETTABLE R6 R4 R5
LOADK R5 K17 [-2147483646]
LOADN R6 3
SETTABLE R6 R4 R5
   56:                  minI, minI + 2, -10, {})
LOADK R5 K15 [-2147483648]
LOADK R6 K17 [-2147483646]
LOADN R7 -10
REMARK allocation: table hash 0
NEWTABLE R8 0 0
   55:   a = table.move({[minI] = 1, [minI + 1] = 2, [minI + 2] = 3},
CALL R3 5 1
MOVE R2 R3
   57:   eqT(a, {[-10] = 1, [-9] = 2, [-8] = 3})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table hash 3
NEWTABLE R5 4 0
LOADN R6 -10
LOADN R7 1
SETTABLE R7 R5 R6
LOADN R6 -9
LOADN R7 2
SETTABLE R7 R5 R6
LOADN R6 -8
LOADN R7 3
SETTABLE R7 R5 R6
CALL R3 2 0
   59:   a = table.move({45}, 1, 1, maxI)
GETIMPORT R3 7 [table.move]
REMARK allocation: table array 1
NEWTABLE R4 0 1
LOADN R5 45
SETLIST R4 R5 1 [1]
LOADN R5 1
LOADN R6 1
LOADK R7 K14 [2147483647]
CALL R3 4 1
MOVE R2 R3
   60:   eqT(a, {45, [maxI] = 45})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table hash 1 array 1
NEWTABLE R5 1 1
LOADN R6 45
SETLIST R5 R6 1 [1]
LOADK R7 K14 [2147483647]
LOADN R8 45
SETTABLE R8 R5 R7
CALL R3 2 0
   62:   a = table.move({[maxI] = 100}, maxI, maxI, minI)
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 1
NEWTABLE R4 1 0
LOADK R5 K14 [2147483647]
LOADN R6 100
SETTABLE R6 R4 R5
LOADK R5 K14 [2147483647]
LOADK R6 K14 [2147483647]
LOADK R7 K15 [-2147483648]
CALL R3 4 1
MOVE R2 R3
   63:   eqT(a, {[minI] = 100, [maxI] = 100})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table hash 2
NEWTABLE R5 2 0
LOADK R6 K15 [-2147483648]
LOADN R7 100
SETTABLE R7 R5 R6
LOADK R6 K14 [2147483647]
LOADN R7 100
SETTABLE R7 R5 R6
CALL R3 2 0
   65:   a = table.move({[minI] = 100}, minI, minI, maxI)
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 1
NEWTABLE R4 1 0
LOADK R5 K15 [-2147483648]
LOADN R6 100
SETTABLE R6 R4 R5
LOADK R5 K15 [-2147483648]
LOADK R6 K15 [-2147483648]
LOADK R7 K14 [2147483647]
CALL R3 4 1
MOVE R2 R3
   66:   eqT(a, {[minI] = 100, [maxI] = 100})
MOVE R3 R1
MOVE R4 R2
REMARK allocation: table hash 2
NEWTABLE R5 2 0
LOADK R6 K15 [-2147483648]
LOADN R7 100
SETTABLE R7 R5 R6
LOADK R6 K14 [2147483647]
LOADN R7 100
SETTABLE R7 R5 R6
CALL R3 2 0
   69: checkerror("too many", table.move, {}, 0, maxI, 1)
MOVE R1 R0
LOADK R2 K18 ['too many']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADN R5 0
LOADK R6 K14 [2147483647]
LOADN R7 1
CALL R1 6 0
   70: checkerror("too many", table.move, {}, -1, maxI - 1, 1)
MOVE R1 R0
LOADK R2 K18 ['too many']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADN R5 -1
LOADK R6 K13 [2147483646]
LOADN R7 1
CALL R1 6 0
   71: checkerror("too many", table.move, {}, minI, -1, 1)
MOVE R1 R0
LOADK R2 K18 ['too many']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADK R5 K15 [-2147483648]
LOADN R6 -1
LOADN R7 1
CALL R1 6 0
   72: checkerror("too many", table.move, {}, minI, maxI, 1)
MOVE R1 R0
LOADK R2 K18 ['too many']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADK R5 K15 [-2147483648]
LOADK R6 K14 [2147483647]
LOADN R7 1
CALL R1 6 0
   73: checkerror("wrap around", table.move, {}, 1, maxI, 2)
MOVE R1 R0
LOADK R2 K19 ['wrap around']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADN R5 1
LOADK R6 K14 [2147483647]
LOADN R7 2
CALL R1 6 0
   74: checkerror("wrap around", table.move, {}, 1, 2, maxI)
MOVE R1 R0
LOADK R2 K19 ['wrap around']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADN R5 1
LOADN R6 2
LOADK R7 K14 [2147483647]
CALL R1 6 0
   75: checkerror("wrap around", table.move, {}, minI, -2, 2)
MOVE R1 R0
LOADK R2 K19 ['wrap around']
GETIMPORT R3 7 [table.move]
REMARK allocation: table hash 0
NEWTABLE R4 0 0
LOADK R5 K15 [-2147483648]
LOADN R6 -2
LOADN R7 2
CALL R1 6 0
   77: checkerror("readonly", table.move, table.freeze({}), 1, 1, 1)
MOVE R1 R0
LOADK R2 K20 ['readonly']
GETIMPORT R3 7 [table.move]
GETIMPORT R4 22 [table.freeze]
REMARK allocation: table hash 0
NEWTABLE R5 0 0
CALL R4 1 1
LOADN R5 1
LOADN R6 1
LOADN R7 1
CALL R1 6 0
   79: print"OK"
GETIMPORT R1 2 [print]
LOADK R2 K23 ['OK']
CALL R1 1 0
   80: 
RETURN R0 0

]====]
end