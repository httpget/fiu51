--[====[Generated by CreateTests.lua v2]====]
return function()
	return [====[Function 0 (??):
    1: local a = "a" local v = "klfanj" print(string.sub(v, 1, #a) == a)
GETIMPORT R0 1 [print]
REMARK builtin string.sub/3
LOADK R3 K2 ['klfanj']
LOADN R4 1
LOADN R5 1
FASTCALL 45 L0
GETIMPORT R2 5 [string.sub]
CALL R2 3 1
L0: JUMPXEQKS R2 K6 L1 ['a']
LOADB R1 0 +1
L1: LOADB R1 1
L2: CALL R0 1 0
    2: 
RETURN R0 0

]====]
end