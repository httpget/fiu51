--[====[Generated by CreateTests.lua v2]====]
return function()
	return [====[Function 0 (??):
    1: local a = 1
LOADN R0 1
    2: while a ~= 5 do
L0: JUMPXEQKN R0 K0 L2 [5]
    3: 	if a == 3 then
JUMPXEQKN R0 K1 L1 NOT [3]
    4: 		a += 2
ADDK R0 R0 K2 [2]
    5: 		print("breaking")
GETIMPORT R1 4 [print]
LOADK R2 K5 ['breaking']
CALL R1 1 0
    6: 		break
JUMP L2
    8: 	a = a + 1
L1: ADDK R0 R0 K6 [1]
    2: while a ~= 5 do
JUMPBACK L0
   10: print("jumped")
L2: GETIMPORT R1 4 [print]
LOADK R2 K7 ['jumped']
CALL R1 1 0
   11: 
RETURN R0 0

]====]
end