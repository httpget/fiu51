--[====[Generated by CreateTests.lua v2]====]
return function()
	return [====[Function 0 (??):
    1: for i = 1, 10 do 
LOADN R2 1
LOADN R0 10
LOADN R1 1
FORNPREP R0 L2
    2:  	if i == 5 then 
L0: JUMPXEQKN R2 K0 L1 [5]
    5:  	print(i)
GETIMPORT R3 2 [print]
MOVE R4 R2
CALL R3 1 0
    6:  	if i == 8 then 
JUMPXEQKN R2 K3 L2 [8]
    1: for i = 1, 10 do 
L1: FORNLOOP R0 L0
REMARK allocation: table array 3
   11: for i,v in {1,2,3} do 
L2: NEWTABLE R0 0 3
LOADN R3 1
LOADN R4 2
LOADN R5 3
SETLIST R0 R3 3 [1]
LOADNIL R1
LOADNIL R2
FORGPREP R0 L4
   12: 	print(i,v)
L3: GETIMPORT R5 2 [print]
MOVE R6 R3
MOVE R7 R4
CALL R5 2 0
   11: for i,v in {1,2,3} do 
L4: FORGLOOP R0 L3 2
   14: 
RETURN R0 0

]====]
end