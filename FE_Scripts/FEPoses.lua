--[[
	fePose v3 by xyz#9892
	Bonus : use this image as a t-shirt with 'Heli' for fun times https://files.catbox.moe/0fr6f3.png

    Synapse Xen v1.1.2 by Synapse GP
    VM Hash: 0f3cf787bb24e72f24af8822bd081bccc97e63b53d643d301a614c666b73d514
]] local SynapseXen_iIilillll = select;
local SynapseXen_lilliIllI = string.byte;
local SynapseXen_IiiIiIi = string.sub;
local SynapseXen_Iillililllli = string.char;
local SynapseXen_iilliIilIiiili = type;
local SynapseXen_iIilIliill = table.concat;
local unpack = unpack;
local setmetatable = setmetatable;
local pcall = pcall;
local SynapseXen_iIliiIIlIll, SynapseXen_llliIlIliil, SynapseXen_iIIlIlliIliI,
      SynapseXen_IllillliiIl;
if bit and bit.bxor then
    SynapseXen_iIliiIIlIll = bit.bxor;
    SynapseXen_llliIlIliil = function(SynapseXen_lllIiillilIliii,
                                      SynapseXen_IlIiIIl)
        local SynapseXen_iiliIIiil = SynapseXen_iIliiIIlIll(
                                         SynapseXen_lllIiillilIliii,
                                         SynapseXen_IlIiIIl)
        if SynapseXen_iiliIIiil < 0 then
            SynapseXen_iiliIIiil = 4294967296 + SynapseXen_iiliIIiil
        end
        return SynapseXen_iiliIIiil
    end
else
    SynapseXen_iIliiIIlIll = function(SynapseXen_lllIiillilIliii,
                                      SynapseXen_IlIiIIl)
        local SynapseXen_IIiiliI = function(SynapseXen_lIIiliiiIllllIlllIii,
                                            SynapseXen_IIIlIilI)
            return
                SynapseXen_lIIiliiiIllllIlllIii % (SynapseXen_IIIlIilI * 2) >=
                    SynapseXen_IIIlIilI
        end;
        local SynapseXen_liilIIllIIIl = 0;
        for SynapseXen_iiIII = 0, 31 do
            SynapseXen_liilIIllIIIl = SynapseXen_liilIIllIIIl +
                                          (SynapseXen_IIiiliI(
                                              SynapseXen_lllIiillilIliii,
                                              2 ^ SynapseXen_iiIII) ~=
                                              SynapseXen_IIiiliI(
                                                  SynapseXen_IlIiIIl,
                                                  2 ^ SynapseXen_iiIII) and 2 ^
                                              SynapseXen_iiIII or 0)
        end
        return SynapseXen_liilIIllIIIl
    end;
    SynapseXen_llliIlIliil = SynapseXen_iIliiIIlIll
end
SynapseXen_iIIlIlliIliI = function(SynapseXen_iiIiIii, SynapseXen_llilIiIlllIil,
                                   SynapseXen_liiillIiiliIlii)
    return (SynapseXen_iiIiIii + SynapseXen_llilIiIlllIil) %
               SynapseXen_liiillIiiliIlii
end;
SynapseXen_IllillliiIl = function(SynapseXen_iiIiIii, SynapseXen_llilIiIlllIil,
                                  SynapseXen_liiillIiiliIlii)
    return (SynapseXen_iiIiIii - SynapseXen_llilIiIlllIil) %
               SynapseXen_liiillIiiliIlii
end;
local function SynapseXen_lIiillilIllIlIiIi(SynapseXen_iiliIIiil)
    if SynapseXen_iiliIIiil < 0 then
        SynapseXen_iiliIIiil = 4294967296 + SynapseXen_iiliIIiil
    end
    return SynapseXen_iiliIIiil
end
local getfenv = getfenv;
if not getfenv then getfenv = function() return _ENV end end
local SynapseXen_iiillI = {}
local SynapseXen_ilIiII = {}
local SynapseXen_lliiiIiIIIlilI;
local SynapseXen_iIiiIlilll;
local SynapseXen_lIIIiI = {}
local SynapseXen_illIllIIillllIIl = {}
for SynapseXen_iiIII = 0, 255 do
    local SynapseXen_lllIlI, SynapseXen_IIiIIlillI =
        SynapseXen_Iillililllli(SynapseXen_iiIII),
        SynapseXen_Iillililllli(SynapseXen_iiIII, 0)
    SynapseXen_lIIIiI[SynapseXen_lllIlI] = SynapseXen_IIiIIlillI;
    SynapseXen_illIllIIillllIIl[SynapseXen_IIiIIlillI] = SynapseXen_lllIlI
end
local function SynapseXen_lilIlIiIIlll(SynapseXen_IiiIiIIlIIlllI,
                                       SynapseXen_llliII,
                                       SynapseXen_iIlilllIIiliiliII,
                                       SynapseXen_IIlIlIliIIiiilIIli)
    if SynapseXen_iIlilllIIiliiliII >= 256 then
        SynapseXen_iIlilllIIiliiliII, SynapseXen_IIlIlIliIIiiilIIli = 0,
                                                                      SynapseXen_IIlIlIliIIiiilIIli +
                                                                          1;
        if SynapseXen_IIlIlIliIIiiilIIli >= 256 then
            SynapseXen_llliII = {}
            SynapseXen_IIlIlIliIIiiilIIli = 1
        end
    end
    SynapseXen_llliII[SynapseXen_Iillililllli(SynapseXen_iIlilllIIiliiliII,
                                              SynapseXen_IIlIlIliIIiiilIIli)] =
        SynapseXen_IiiIiIIlIIlllI;
    SynapseXen_iIlilllIIiliiliII = SynapseXen_iIlilllIIiliiliII + 1;
    return SynapseXen_llliII, SynapseXen_iIlilllIIiliiliII,
           SynapseXen_IIlIlIliIIiiilIIli
end
local function SynapseXen_iIIliIiIiilllliIilli(SynapseXen_lIIlIiiiilIlIIi)
    local function SynapseXen_liIiilliiIilIllI(SynapseXen_lIliliIIIiIliilll)
        local SynapseXen_IIlIlIliIIiiilIIli =
            'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
        SynapseXen_lIliliIIIiIliilll = string.gsub(SynapseXen_lIliliIIIiIliilll,
                                                   '[^' ..
                                                       SynapseXen_IIlIlIliIIiiilIIli ..
                                                       '=]', '')
        return SynapseXen_lIliliIIIiIliilll:gsub('.',
                                                 function(SynapseXen_iiIiIii)
            if SynapseXen_iiIiIii == '=' then return '' end
            local SynapseXen_lilIlllil, SynapseXen_iiIIillII = '',
                                                               SynapseXen_IIlIlIliIIiiilIIli:find(
                                                                   SynapseXen_iiIiIii) -
                                                                   1;
            for SynapseXen_iiIII = 6, 1, -1 do
                SynapseXen_lilIlllil = SynapseXen_lilIlllil ..
                                           (SynapseXen_iiIIillII % 2 ^
                                               SynapseXen_iiIII -
                                               SynapseXen_iiIIillII % 2 ^
                                               (SynapseXen_iiIII - 1) > 0 and
                                               '1' or '0')
            end
            return SynapseXen_lilIlllil
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(SynapseXen_iiIiIii)
            if #SynapseXen_iiIiIii ~= 8 then return '' end
            local SynapseXen_lIiIIiiIlill = 0;
            for SynapseXen_iiIII = 1, 8 do
                SynapseXen_lIiIIiiIlill =
                    SynapseXen_lIiIIiiIlill +
                        (SynapseXen_iiIiIii:sub(SynapseXen_iiIII,
                                                SynapseXen_iiIII) == '1' and 2 ^
                            (8 - SynapseXen_iiIII) or 0)
            end
            return string.char(SynapseXen_lIiIIiiIlill)
        end)
    end
    SynapseXen_lIIlIiiiilIlIIi = SynapseXen_liIiilliiIilIllI(
                                     SynapseXen_lIIlIiiiilIlIIi)
    local SynapseXen_lIlIIl = SynapseXen_IiiIiIi(SynapseXen_lIIlIiiiilIlIIi, 1,
                                                 1)
    if SynapseXen_lIlIIl == "u" then
        return SynapseXen_IiiIiIi(SynapseXen_lIIlIiiiilIlIIi, 2)
    elseif SynapseXen_lIlIIl ~= "c" then
        error(
            "Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")
    end
    SynapseXen_lIIlIiiiilIlIIi = SynapseXen_IiiIiIi(SynapseXen_lIIlIiiiilIlIIi,
                                                    2)
    local SynapseXen_iililiiIlIIl = #SynapseXen_lIIlIiiiilIlIIi;
    local SynapseXen_llliII = {}
    local SynapseXen_iIlilllIIiliiliII, SynapseXen_IIlIlIliIIiiilIIli = 0, 1;
    local SynapseXen_IIiiiiiIIIIIiIlIliI = {}
    local SynapseXen_iiliIIiil = 1;
    local SynapseXen_IllililI = SynapseXen_IiiIiIi(SynapseXen_lIIlIiiiilIlIIi,
                                                   1, 2)
    SynapseXen_IIiiiiiIIIIIiIlIliI[SynapseXen_iiliIIiil] =
        SynapseXen_illIllIIillllIIl[SynapseXen_IllililI] or
            SynapseXen_llliII[SynapseXen_IllililI]
    SynapseXen_iiliIIiil = SynapseXen_iiliIIiil + 1;
    for SynapseXen_iiIII = 3, SynapseXen_iililiiIlIIl, 2 do
        local SynapseXen_liIliIIlllIlIli =
            SynapseXen_IiiIiIi(SynapseXen_lIIlIiiiilIlIIi, SynapseXen_iiIII,
                               SynapseXen_iiIII + 1)
        local SynapseXen_IIlililiIillli =
            SynapseXen_illIllIIillllIIl[SynapseXen_IllililI] or
                SynapseXen_llliII[SynapseXen_IllililI]
        if not SynapseXen_IIlililiIillli then
            error(
                "Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")
        end
        local SynapseXen_lIlllIIilIiIli =
            SynapseXen_illIllIIillllIIl[SynapseXen_liIliIIlllIlIli] or
                SynapseXen_llliII[SynapseXen_liIliIIlllIlIli]
        if SynapseXen_lIlllIIilIiIli then
            SynapseXen_IIiiiiiIIIIIiIlIliI[SynapseXen_iiliIIiil] =
                SynapseXen_lIlllIIilIiIli;
            SynapseXen_iiliIIiil = SynapseXen_iiliIIiil + 1;
            SynapseXen_llliII, SynapseXen_iIlilllIIiliiliII, SynapseXen_IIlIlIliIIiiilIIli =
                SynapseXen_lilIlIiIIlll(SynapseXen_IIlililiIillli ..
                                            SynapseXen_IiiIiIi(
                                                SynapseXen_lIlllIIilIiIli, 1, 1),
                                        SynapseXen_llliII,
                                        SynapseXen_iIlilllIIiliiliII,
                                        SynapseXen_IIlIlIliIIiiilIIli)
        else
            local SynapseXen_lliIlllIlliIIIiIIii =
                SynapseXen_IIlililiIillli ..
                    SynapseXen_IiiIiIi(SynapseXen_IIlililiIillli, 1, 1)
            SynapseXen_IIiiiiiIIIIIiIlIliI[SynapseXen_iiliIIiil] =
                SynapseXen_lliIlllIlliIIIiIIii;
            SynapseXen_iiliIIiil = SynapseXen_iiliIIiil + 1;
            SynapseXen_llliII, SynapseXen_iIlilllIIiliiliII, SynapseXen_IIlIlIliIIiiilIIli =
                SynapseXen_lilIlIiIIlll(SynapseXen_lliIlllIlliIIIiIIii,
                                        SynapseXen_llliII,
                                        SynapseXen_iIlilllIIiliiliII,
                                        SynapseXen_IIlIlIliIIiiilIIli)
        end
        SynapseXen_IllililI = SynapseXen_liIliIIlllIlIli
    end
    return SynapseXen_iIilIliill(SynapseXen_IIiiiiiIIIIIiIlIliI)
end
local function SynapseXen_IllIIlilllIilii(SynapseXen_IIllIIiilIIilil,
                                          SynapseXen_ilIllIiII, SynapseXen_lliIi)
    if SynapseXen_lliIi then
        local SynapseXen_ilIiliIlllllIli =
            SynapseXen_IIllIIiilIIilil / 2 ^ (SynapseXen_ilIllIiII - 1) % 2 ^
                (SynapseXen_lliIi - 1 - (SynapseXen_ilIllIiII - 1) + 1)
        return SynapseXen_ilIiliIlllllIli - SynapseXen_ilIiliIlllllIli % 1
    else
        local SynapseXen_IIlIilI = 2 ^ (SynapseXen_ilIllIiII - 1)
        if SynapseXen_IIllIIiilIIilil %
            (SynapseXen_IIlIilI + SynapseXen_IIlIilI) >= SynapseXen_IIlIilI then
            return 1
        else
            return 0
        end
    end
end
local function SynapseXen_iiIiIiIiillIill()
    local SynapseXen_iIIIIiiIll = SynapseXen_iIliiIIlIll(2929888148,
                                                         SynapseXen_iIiiIlilll)
    while true do
        if SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(3472549852, SynapseXen_iIiiIlilll) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII - 38955,
                                              SynapseXen_lIiilIiil - 13404) +
                           SynapseXen_iIliiIIlIll(2685354864,
                                                  SynapseXen_iIiiIlilll)
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIIIIiiIll -
                                        SynapseXen_iIliiIIlIll(4025885346,
                                                               SynapseXen_ilIiII[4])
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(3710622187, SynapseXen_iIiiIlilll) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII - 6605,
                                              SynapseXen_lIiilIiil - 8548) -
                           SynapseXen_iIliiIIlIll(4025904275,
                                                  SynapseXen_ilIiII[4])
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIIIIiiIll,
                                        SynapseXen_iIliiIIlIll(3017715608,
                                                               SynapseXen_iIiiIlilll))
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(3472547819, SynapseXen_iIiiIlilll) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII - 22260,
                                              SynapseXen_lIiilIiil + 18364) -
                           SynapseXen_iIliiIIlIll(441325045,
                                                  SynapseXen_ilIiII[3])
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIIIIiiIll,
                                        SynapseXen_iIliiIIlIll(398802931,
                                                               SynapseXen_iIiiIlilll))
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(289157059, SynapseXen_iIiiIlilll) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII + 21780,
                                              SynapseXen_lIiilIiil - 30413) -
                           SynapseXen_iIliiIIlIll(441380668,
                                                  SynapseXen_ilIiII[3])
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIIIIiiIll +
                                        SynapseXen_iIliiIIlIll(2685373110,
                                                               SynapseXen_iIiiIlilll)
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(3379591250, SynapseXen_ilIiII[2]) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII - 34214,
                                              SynapseXen_lIiilIiil + 41329) +
                           SynapseXen_iIliiIIlIll(2685365800,
                                                  SynapseXen_iIiiIlilll)
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIIIIiiIll,
                                        SynapseXen_iIliiIIlIll(1349055484,
                                                               SynapseXen_ilIiII[4]))
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(2813786483, SynapseXen_ilIiII[5]) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII + 43561,
                                              SynapseXen_lIiilIiil - 39595) -
                           SynapseXen_iIliiIIlIll(2685402581,
                                                  SynapseXen_iIiiIlilll)
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIIIIiiIll +
                                        SynapseXen_iIliiIIlIll(377815323,
                                                               SynapseXen_ilIiII[5])
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(2876906814, SynapseXen_ilIiII[3]) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII + 31913,
                                              SynapseXen_lIiilIiil - 19894) +
                           SynapseXen_iIliiIIlIll(377842943,
                                                  SynapseXen_ilIiII[5])
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIIIIiiIll +
                                        SynapseXen_iIliiIIlIll(2685392722,
                                                               SynapseXen_iIiiIlilll)
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(2463259085, SynapseXen_ilIiII[4]) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII - 3758,
                                              SynapseXen_lIiilIiil + 39323) +
                           SynapseXen_iIliiIIlIll(2685389667,
                                                  SynapseXen_iIiiIlilll)
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIIIIiiIll -
                                        SynapseXen_iIliiIIlIll(2685393747,
                                                               SynapseXen_iIiiIlilll)
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(289124653, SynapseXen_iIiiIlilll) then
            SynapseXen_lliiiIiIIIlilI = function(SynapseXen_IIillIIII,
                                                 SynapseXen_lIiilIiil)
                return SynapseXen_iIliiIIlIll(SynapseXen_IIillIIII - 262,
                                              SynapseXen_lIiilIiil + 23787) +
                           SynapseXen_iIliiIIlIll(3353158259,
                                                  SynapseXen_ilIiII[2])
            end;
            SynapseXen_iIIIIiiIll = SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIIIIiiIll,
                                        SynapseXen_iIliiIIlIll(1814028909,
                                                               SynapseXen_iIiiIlilll))
        elseif SynapseXen_iIIIIiiIll ==
            SynapseXen_iIliiIIlIll(2033201591, SynapseXen_iIiiIlilll) then
            return
        end
    end
end
local function SynapseXen_lillilI(SynapseXen_iiliIIliiIII)
    local SynapseXen_llIIi = 1;
    local SynapseXen_iIiIlIiillilIIlIiIlI;
    local SynapseXen_iIIliililIIIliiIilll;
    local function SynapseXen_liliIlililI()
        local SynapseXen_IiilIIlIli = SynapseXen_lilliIllI(
                                          SynapseXen_iiliIIliiIII,
                                          SynapseXen_llIIi, SynapseXen_llIIi)
        SynapseXen_llIIi = SynapseXen_llIIi + 1;
        return SynapseXen_IiilIIlIli
    end
    local function SynapseXen_iiIiI()
        local SynapseXen_IIillliliiIIlIIIli, SynapseXen_IIillIIII,
              SynapseXen_lIiilIiil, SynapseXen_lIllIIIIill =
            SynapseXen_lilliIllI(SynapseXen_iiliIIliiIII, SynapseXen_llIIi,
                                 SynapseXen_llIIi + 3)
        SynapseXen_llIIi = SynapseXen_llIIi + 4;
        return
            SynapseXen_lIllIIIIill * 16777216 + SynapseXen_lIiilIiil * 65536 +
                SynapseXen_IIillIIII * 256 + SynapseXen_IIillliliiIIlIIIli
    end
    local function SynapseXen_lIiiIiiIll()
        return SynapseXen_iiIiI() * 4294967296 + SynapseXen_iiIiI()
    end
    local function SynapseXen_IIlliI()
        local SynapseXen_liiiii = SynapseXen_llliIlIliil(SynapseXen_iiIiI(),
                                                         SynapseXen_iiillI[2867172854] or
                                                             (function(...)
                local SynapseXen_iiIiIii =
                    "this is a christian obfuscator, no cursing allowed in our scripts"
                local SynapseXen_iIIliiIIlllIiliIIl =
                    SynapseXen_lliiiIiIIIlilI(933783939, 2135690172)
                local SynapseXen_iliiII = {...}
                for SynapseXen_iiIII, SynapseXen_Iilll in
                    pairs(SynapseXen_iliiII) do
                    local SynapseXen_IlIIlliiIliI;
                    local SynapseXen_iiliIliiIllIlIiilIii =
                        type(SynapseXen_Iilll)
                    if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                        SynapseXen_IlIIlliiIliI =
                            SynapseXen_lliiiIiIIIlilI(2357443719, 2357381213)
                    end
                    SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_iIIliiIIlllIiliIIl + SynapseXen_IlIIlliiIliI
                end
                SynapseXen_iiillI[2867172854] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_iIliiIIlIll(1465324680,
                                               SynapseXen_iIIliiIIlllIiliIIl),
                        SynapseXen_iIliiIIlIll(4030617846, SynapseXen_iIiiIlilll)) -
                        string.len(SynapseXen_iiIiIii) -
                        #{
                            3257630531, 3179008585, 3260192027, 3358550061,
                            1508340460
                        }
                return SynapseXen_iiillI[2867172854]
            end)("IIiIIIlIiIII", {}))
        local SynapseXen_iiIlIiiIiilIiIliiIiI =
            SynapseXen_llliIlIliil(SynapseXen_iiIiI(),
                                   SynapseXen_iiillI[20274114] or (function()
                local SynapseXen_iiIiIii =
                    "HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"
                SynapseXen_iiillI[20274114] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_lliiiIiIIIlilI(632397218, 1390566717),
                        SynapseXen_iIliiIIlIll(1500795330, SynapseXen_ilIiII[5])) -
                        string.len(SynapseXen_iiIiIii) -
                        #{2684170833, 2926351254, 3600757111, 2689563137}
                return SynapseXen_iiillI[20274114]
            end)())
        local SynapseXen_illllllIiiiiII = 1;
        local SynapseXen_lIlIlIII = SynapseXen_IllIIlilllIilii(
                                        SynapseXen_iiIlIiiIiilIiIliiIiI, 1, 20) *
                                        2 ^ 32 + SynapseXen_liiiii;
        local SynapseXen_IIlIiliIIilIiii =
            SynapseXen_IllIIlilllIilii(SynapseXen_iiIlIiiIiilIiIliiIiI, 21, 31)
        local SynapseXen_liililiIlI = (-1) ^
                                          SynapseXen_IllIIlilllIilii(
                                              SynapseXen_iiIlIiiIiilIiIliiIiI,
                                              32)
        if SynapseXen_IIlIiliIIilIiii == 0 then
            if SynapseXen_lIlIlIII == 0 then
                return SynapseXen_liililiIlI * 0
            else
                SynapseXen_IIlIiliIIilIiii = 1;
                SynapseXen_illllllIiiiiII = 0
            end
        elseif SynapseXen_IIlIiliIIilIiii == 2047 then
            if SynapseXen_lIlIlIII == 0 then
                return SynapseXen_liililiIlI * 1 / 0
            else
                return SynapseXen_liililiIlI * 0 / 0
            end
        end
        return math.ldexp(SynapseXen_liililiIlI,
                          SynapseXen_IIlIiliIIilIiii - 1023) *
                   (SynapseXen_illllllIiiiiII + SynapseXen_lIlIlIII / 2 ^ 52)
    end
    local function SynapseXen_liiilIiiIlIIiII(SynapseXen_iliIIIlIillIiiiil)
        local SynapseXen_iiiiiIIIiI;
        if SynapseXen_iliIIIlIillIiiiil then
            SynapseXen_iiiiiIIIiI = SynapseXen_IiiIiIi(SynapseXen_iiliIIliiIII,
                                                       SynapseXen_llIIi,
                                                       SynapseXen_llIIi +
                                                           SynapseXen_iliIIIlIillIiiiil -
                                                           1)
            SynapseXen_llIIi = SynapseXen_llIIi + SynapseXen_iliIIIlIillIiiiil
        else
            SynapseXen_iliIIIlIillIiiiil = SynapseXen_iIiIlIiillilIIlIiIlI()
            if SynapseXen_iliIIIlIillIiiiil == 0 then return "" end
            SynapseXen_iiiiiIIIiI = SynapseXen_IiiIiIi(SynapseXen_iiliIIliiIII,
                                                       SynapseXen_llIIi,
                                                       SynapseXen_llIIi +
                                                           SynapseXen_iliIIIlIillIiiiil -
                                                           1)
            SynapseXen_llIIi = SynapseXen_llIIi + SynapseXen_iliIIIlIillIiiiil
        end
        return SynapseXen_iiiiiIIIiI
    end
    local function SynapseXen_llIIiiiIlliIIIil(SynapseXen_iiiiiIIIiI)
        local SynapseXen_ilIiliIlllllIli = {}
        for SynapseXen_iiIII = 1, #SynapseXen_iiiiiIIIiI do
            local SynapseXen_IIiiiiliiIiiilliiIIl =
                SynapseXen_iiiiiIIIiI:sub(SynapseXen_iiIII, SynapseXen_iiIII)
            SynapseXen_ilIiliIlllllIli[#SynapseXen_ilIiliIlllllIli + 1] =
                string.char(SynapseXen_iIliiIIlIll(
                                string.byte(SynapseXen_IIiiiiliiIiiilliiIIl),
                                SynapseXen_iiillI[1231556952] or (function()
                        local SynapseXen_iiIiIii = "print(bytecode)"
                        SynapseXen_iiillI[1231556952] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(339349408, 3497896674),
                                SynapseXen_iIliiIIlIll(60742304,
                                                       SynapseXen_ilIiII[2])) -
                                string.len(SynapseXen_iiIiIii) - #{1903766033}
                        return SynapseXen_iiillI[1231556952]
                    end)()))
        end
        return table.concat(SynapseXen_ilIiliIlllllIli)
    end
    local function SynapseXen_lIlIIIIiIiIIIIllli()
        local SynapseXen_iIlIlI = {}
        local SynapseXen_IlIIii = {}
        local SynapseXen_ilIIlIIii = {}
        local SynapseXen_IiliIIiIillIlll =
            {
                [SynapseXen_iiillI[812408351] or (function()
                    local SynapseXen_iiIiIii =
                        "double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"
                    SynapseXen_iiillI[812408351] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_lliiiIiIIIlilI(1711067959, 397089193),
                            SynapseXen_iIliiIIlIll(2301518975,
                                                   SynapseXen_iIiiIlilll)) -
                            string.len(SynapseXen_iiIiIii) -
                            #{3580245669, 1294566774, 2918343162}
                    return SynapseXen_iiillI[812408351]
                end)()] = SynapseXen_IlIIii,
                [SynapseXen_iiillI[131045904] or (function(...)
                    local SynapseXen_iiIiIii = "epic gamer vision"
                    local SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_lliiiIiIIIlilI(3392666309, 3418601261)
                    local SynapseXen_iliiII = {...}
                    for SynapseXen_iiIII, SynapseXen_Iilll in
                        pairs(SynapseXen_iliiII) do
                        local SynapseXen_IlIIlliiIliI;
                        local SynapseXen_iiliIliiIllIlIiilIii =
                            type(SynapseXen_Iilll)
                        if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                            SynapseXen_IlIIlliiIliI =
                                SynapseXen_lliiiIiIIIlilI(4041999943, 4041977591)
                        end
                        SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_iIIliiIIlllIiliIIl -
                                SynapseXen_IlIIlliiIliI
                    end
                    SynapseXen_iiillI[131045904] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_iIliiIIlIll(830323467,
                                                   SynapseXen_iIIliiIIlllIiliIIl),
                            SynapseXen_iIliiIIlIll(3192302592,
                                                   SynapseXen_iIiiIlilll)) -
                            string.len(SynapseXen_iiIiIii) - #{
                            1869655077, 4128433151, 1744875165, 891606754,
                            3839983238, 1966702642, 1876543644, 4056702267,
                            262975930, 550332910
                        }
                    return SynapseXen_iiillI[131045904]
                end)(528, "liliiiIli", "liIilIl", {}, {}, "llIlllilIilIIlIIIiI",
                     {}, 14877, {})] = SynapseXen_iIlIlI,
                [SynapseXen_iiillI[1466143109] or (function()
                    local SynapseXen_iiIiIii =
                        "luraph better then xen bros :pensive:"
                    SynapseXen_iiillI[1466143109] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_lliiiIiIIIlilI(3626654986, 3155797014),
                            SynapseXen_iIliiIIlIll(3226459732,
                                                   SynapseXen_iIiiIlilll)) -
                            string.len(SynapseXen_iiIiIii) - #{409892361}
                    return SynapseXen_iiillI[1466143109]
                end)()] = SynapseXen_ilIIlIIii
            }
        SynapseXen_liliIlililI()
        for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_iIliiIIlIll(
            SynapseXen_iIIliililIIIliiIilll(),
            SynapseXen_iiillI[3405566945] or (function(...)
                local SynapseXen_iiIiIii = "xen detects custom getfenv"
                local SynapseXen_iIIliiIIlllIiliIIl =
                    SynapseXen_lliiiIiIIIlilI(1632463251, 206054784)
                local SynapseXen_iliiII = {...}
                for SynapseXen_iiIII, SynapseXen_Iilll in
                    pairs(SynapseXen_iliiII) do
                    local SynapseXen_IlIIlliiIliI;
                    local SynapseXen_iiliIliiIllIlIiilIii =
                        type(SynapseXen_Iilll)
                    if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                        SynapseXen_IlIIlliiIliI =
                            SynapseXen_lliiiIiIIIlilI(3834795761, 3834729382)
                    end
                    SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_iIIliiIIlllIiliIIl + SynapseXen_IlIIlliiIliI
                end
                SynapseXen_iiillI[3405566945] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_iIliiIIlIll(3490230041,
                                               SynapseXen_iIIliiIIlllIiliIIl),
                        SynapseXen_iIliiIIlIll(2060004376, SynapseXen_iIiiIlilll)) -
                        string.len(SynapseXen_iiIiIii) -
                        #{
                            1853689763, 2807962519, 2468021334, 829637965,
                            3104367071
                        }
                return SynapseXen_iiillI[3405566945]
            end)({}, "iliilIliIiiIilIl", {}, {}, {}, {}, 8306, {}, {})) do
            local SynapseXen_IIllIIIliil =
                SynapseXen_iIliiIIlIll(SynapseXen_iiIiI(),
                                       SynapseXen_iiillI[2517750359] or
                                           (function(...)
                        local SynapseXen_iiIiIii =
                            "SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(115532603, 1326382293)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(2712826930,
                                                              2712803534)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[2517750359] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(1285152470,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(4225894558,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1702102669, 2512347900, 2727922265, 1133469430,
                                4161576706, 1216605081, 1832694869
                            }
                        return SynapseXen_iiillI[2517750359]
                    end)({}, "IIIIIlll", "Iill", {}, {}, {}, 4402,
                         "ilIilIIliiiliilIl", {}))
            local SynapseXen_iIIIlIli = SynapseXen_liliIlililI()
            SynapseXen_iiIiI()
            local SynapseXen_iilliIilIiiili = SynapseXen_liliIlililI()
            local SynapseXen_lIIiiI = {
                [103297735] = SynapseXen_IIllIIIliil,
                [1706407771] = SynapseXen_iIIIlIli,
                [1153474865] = SynapseXen_IllIIlilllIilii(
                    SynapseXen_IIllIIIliil, 1, 6),
                [909370254] = SynapseXen_IllIIlilllIilii(SynapseXen_IIllIIIliil,
                                                         7, 14)
            }
            if SynapseXen_iilliIilIiiili ==
                (SynapseXen_iiillI[157518667] or (function()
                    local SynapseXen_iiIiIii =
                        "now with shitty xor string obfuscation"
                    SynapseXen_iiillI[157518667] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_lliiiIiIIIlilI(4024365487, 3921233318),
                            SynapseXen_iIliiIIlIll(283352073,
                                                   SynapseXen_ilIiII[5])) -
                            string.len(SynapseXen_iiIiIii) - #{740013425}
                    return SynapseXen_iiillI[157518667]
                end)()) then
                SynapseXen_lIIiiI[1776583566] =
                    SynapseXen_IllIIlilllIilii(SynapseXen_IIllIIIliil, 24, 32)
                SynapseXen_lIIiiI[1617625881] =
                    SynapseXen_IllIIlilllIilii(SynapseXen_IIllIIIliil, 15, 23)
            elseif SynapseXen_iilliIilIiiili ==
                (SynapseXen_iiillI[4012033107] or (function(...)
                    local SynapseXen_iiIiIii =
                        "now comes with a free n word pass"
                    local SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_lliiiIiIIIlilI(492320702, 4177840271)
                    local SynapseXen_iliiII = {...}
                    for SynapseXen_iiIII, SynapseXen_Iilll in
                        pairs(SynapseXen_iliiII) do
                        local SynapseXen_IlIIlliiIliI;
                        local SynapseXen_iiliIliiIllIlIiilIii =
                            type(SynapseXen_Iilll)
                        if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                            SynapseXen_IlIIlliiIliI =
                                SynapseXen_lliiiIiIIIlilI(1499523126, 1499510316)
                        end
                        SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_iIIliiIIlllIiliIIl -
                                SynapseXen_IlIIlliiIliI
                    end
                    SynapseXen_iiillI[4012033107] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_iIliiIIlIll(3314694406,
                                                   SynapseXen_iIIliiIIlllIiliIIl),
                            SynapseXen_iIliiIIlIll(999174296,
                                                   SynapseXen_ilIiII[3])) -
                            string.len(SynapseXen_iiIiIii) -
                            #{3910128531, 2409893811, 1371247290}
                    return SynapseXen_iiillI[4012033107]
                end)({}, {}, {}, "II")) then
                SynapseXen_lIIiiI[1786993118] =
                    SynapseXen_IllIIlilllIilii(SynapseXen_IIllIIIliil, 15, 32)
            elseif SynapseXen_iilliIilIiiili ==
                (SynapseXen_iiillI[225785438] or (function(...)
                    local SynapseXen_iiIiIii =
                        "pain is gonna use the backspace method on xen"
                    local SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_lliiiIiIIIlilI(3999079419, 970034332)
                    local SynapseXen_iliiII = {...}
                    for SynapseXen_iiIII, SynapseXen_Iilll in
                        pairs(SynapseXen_iliiII) do
                        local SynapseXen_IlIIlliiIliI;
                        local SynapseXen_iiliIliiIllIlIiilIii =
                            type(SynapseXen_Iilll)
                        if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                            SynapseXen_IlIIlliiIliI =
                                SynapseXen_lliiiIiIIIlilI(1595942352, 1595892883)
                        end
                        SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_iIIliiIIlllIiliIIl +
                                SynapseXen_IlIIlliiIliI
                    end
                    SynapseXen_iiillI[225785438] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_iIliiIIlIll(1709837649,
                                                   SynapseXen_iIIliiIIlllIiliIIl),
                            SynapseXen_iIliiIIlIll(1975254696,
                                                   SynapseXen_ilIiII[2])) -
                            string.len(SynapseXen_iiIiIii) - #{
                            838102761, 168907897, 2096250338, 185183760,
                            2983752828, 435215687, 629088503, 3134824394
                        }
                    return SynapseXen_iiillI[225785438]
                end)("iiiiiilIIillIi", {})) then
                SynapseXen_lIIiiI[1300471799] =
                    SynapseXen_IllIIlilllIilii(SynapseXen_IIllIIIliil, 15, 32) -
                        131071
            end
            SynapseXen_ilIIlIIii[SynapseXen_IiIilIiIIliiiil] = SynapseXen_lIIiiI
        end
        for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_iIliiIIlIll(
            SynapseXen_iIIliililIIIliiIilll(),
            SynapseXen_iiillI[707113510] or (function(...)
                local SynapseXen_iiIiIii =
                    "hi my 2.5mb script doesn't work with xen please help"
                local SynapseXen_iIIliiIIlllIiliIIl =
                    SynapseXen_lliiiIiIIIlilI(1261763073, 205904140)
                local SynapseXen_iliiII = {...}
                for SynapseXen_iiIII, SynapseXen_Iilll in
                    pairs(SynapseXen_iliiII) do
                    local SynapseXen_IlIIlliiIliI;
                    local SynapseXen_iiliIliiIllIlIiilIii =
                        type(SynapseXen_Iilll)
                    if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                        SynapseXen_IlIIlliiIliI =
                            SynapseXen_lliiiIiIIIlilI(2551731234, 2551661895)
                    end
                    SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_iIIliiIIlllIiliIIl + SynapseXen_IlIIlliiIliI
                end
                SynapseXen_iiillI[707113510] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_iIliiIIlIll(2446157264,
                                               SynapseXen_iIIliiIIlllIiliIIl),
                        SynapseXen_iIliiIIlIll(3281549808, SynapseXen_iIiiIlilll)) -
                        string.len(SynapseXen_iiIiIii) - #{
                        1693395079, 4015926431, 3149288360, 324453220,
                        1083261133, 3799337158, 1324476082, 1516510424
                    }
                return SynapseXen_iiillI[707113510]
            end)("IiiliIIlIlIliIllli", 11255, "IllIlIIli", 1528, 8067, 8527, {},
                 9453, 6292)) do
            SynapseXen_liliIlililI()
            local SynapseXen_iilliIilIiiili = SynapseXen_liliIlililI()
            SynapseXen_iiIiI()
            local SynapseXen_lIlil;
            if SynapseXen_iilliIilIiiili ==
                (SynapseXen_iiillI[2966794722] or (function(...)
                    local SynapseXen_iiIiIii = "wow xen is shit buy luraph ok"
                    local SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_lliiiIiIIIlilI(2995287169, 421040458)
                    local SynapseXen_iliiII = {...}
                    for SynapseXen_iiIII, SynapseXen_Iilll in
                        pairs(SynapseXen_iliiII) do
                        local SynapseXen_IlIIlliiIliI;
                        local SynapseXen_iiliIliiIllIlIiilIii =
                            type(SynapseXen_Iilll)
                        if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                            SynapseXen_IlIIlliiIliI =
                                SynapseXen_lliiiIiIIIlilI(3413025232, 3412975176)
                        end
                        SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_iIIliiIIlllIiliIIl +
                                SynapseXen_IlIIlliiIliI
                    end
                    SynapseXen_iiillI[2966794722] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_iIliiIIlIll(3471217248,
                                                   SynapseXen_iIIliiIIlllIiliIIl),
                            SynapseXen_iIliiIIlIll(3313104759,
                                                   SynapseXen_iIiiIlilll)) -
                            string.len(SynapseXen_iiIiIii) -
                            #{1642801663, 3696477400, 2215348919}
                    return SynapseXen_iiillI[2966794722]
                end)("IIiilIlllIliilIIIl", 2225, "llIIiiiilii", 14458)) then
                SynapseXen_lIlil = SynapseXen_liliIlililI() ~= 0
            elseif SynapseXen_iilliIilIiiili ==
                (SynapseXen_iiillI[3521202008] or (function()
                    local SynapseXen_iiIiIii =
                        "imagine using some lua minifier tool and thinking you are a badass"
                    SynapseXen_iiillI[3521202008] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_lliiiIiIIIlilI(947900258, 4040845864),
                            SynapseXen_iIliiIIlIll(659780593,
                                                   SynapseXen_ilIiII[4])) -
                            string.len(SynapseXen_iiIiIii) -
                            #{3234692239, 1385360342, 4100469837}
                    return SynapseXen_iiillI[3521202008]
                end)()) then
                SynapseXen_lIlil = SynapseXen_IIlliI()
            elseif SynapseXen_iilliIilIiiili ==
                (SynapseXen_iiillI[4083901107] or (function()
                    local SynapseXen_iiIiIii = "xen best rerubi paste"
                    SynapseXen_iiillI[4083901107] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_lliiiIiIIIlilI(1721949300, 1640925226),
                            SynapseXen_iIliiIIlIll(300851759,
                                                   SynapseXen_ilIiII[5])) -
                            string.len(SynapseXen_iiIiIii) - #{
                            237051250, 64639938, 34244744, 1138010818,
                            1745494109, 3579755847, 4082688232, 730180073,
                            2036826862
                        }
                    return SynapseXen_iiillI[4083901107]
                end)()) then
                SynapseXen_lIlil = SynapseXen_IiiIiIi(
                                       SynapseXen_llIIiiiIlliIIIil(
                                           SynapseXen_liiilIiiIlIIiII()), 1, -2)
            end
            SynapseXen_iIlIlI[SynapseXen_IiIilIiIIliiiil - 1] = SynapseXen_lIlil
        end
        SynapseXen_iiIiI()
        SynapseXen_liliIlililI()
        SynapseXen_iiIiI()
        SynapseXen_IiliIIiIillIlll[1439547849] =
            SynapseXen_iIliiIIlIll(SynapseXen_liliIlililI(),
                                   SynapseXen_iiillI[1806801961] or (function()
                local SynapseXen_iiIiIii =
                    "this is so sad, alexa play ripull.mp4"
                SynapseXen_iiillI[1806801961] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_lliiiIiIIIlilI(4067942171, 1795807206),
                        SynapseXen_iIliiIIlIll(1988840659, SynapseXen_ilIiII[4])) -
                        string.len(SynapseXen_iiIiIii) - #{
                        1699667299, 762107901, 1600940560, 2642672117,
                        2108480232, 3031940368, 3126204375, 4237255588,
                        208716470
                    }
                return SynapseXen_iiillI[1806801961]
            end)())
        SynapseXen_iiIiI()
        SynapseXen_iiIiI()
        SynapseXen_IiliIIiIillIlll[1958689028] =
            SynapseXen_iIliiIIlIll(SynapseXen_liliIlililI(),
                                   SynapseXen_iiillI[2664981758] or
                                       (function(...)
                    local SynapseXen_iiIiIii =
                        "wait for someone on devforum to say they are gonna deobfuscate this"
                    local SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_lliiiIiIIIlilI(1953313623, 1225295472)
                    local SynapseXen_iliiII = {...}
                    for SynapseXen_iiIII, SynapseXen_Iilll in
                        pairs(SynapseXen_iliiII) do
                        local SynapseXen_IlIIlliiIliI;
                        local SynapseXen_iiliIliiIllIlIiilIii =
                            type(SynapseXen_Iilll)
                        if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                            SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                        elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                            SynapseXen_IlIIlliiIliI =
                                SynapseXen_lliiiIiIIIlilI(2679833299, 2679812083)
                        end
                        SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_iIIliiIIlllIiliIIl +
                                SynapseXen_IlIIlliiIliI
                    end
                    SynapseXen_iiillI[2664981758] =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_iIliiIIlIll(3401843359,
                                                   SynapseXen_iIIliiIIlllIiliIIl),
                            SynapseXen_iIliiIIlIll(813514598,
                                                   SynapseXen_ilIiII[2])) -
                            string.len(SynapseXen_iiIiIii) -
                            #{
                                4033184031, 2251834055, 213711793, 568506984,
                                3969821210, 3268685690
                            }
                    return SynapseXen_iiillI[2664981758]
                end)({}, "lIIiIIliliIiIIliilI", "IlIIliiii", "lIiIiiIiiiliili",
                     {}, 3693, {}, {}, 9144))
        SynapseXen_iiIiI()
        SynapseXen_liliIlililI()
        for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_iIliiIIlIll(
            SynapseXen_iIIliililIIIliiIilll(),
            SynapseXen_iiillI[2490865411] or (function()
                local SynapseXen_iiIiIii =
                    "pain exist is gonna connect the dots of xen"
                SynapseXen_iiillI[2490865411] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_lliiiIiIIIlilI(3701531044, 829857593),
                        SynapseXen_iIliiIIlIll(698844634, SynapseXen_iIiiIlilll)) -
                        string.len(SynapseXen_iiIiIii) - #{
                        2905455578, 1611857136, 1811737207, 863066616,
                        651249224, 3517295390, 2175423480, 1480560352,
                        3384969668
                    }
                return SynapseXen_iiillI[2490865411]
            end)()) do
            SynapseXen_IlIIii[SynapseXen_IiIilIiIIliiiil - 1] =
                SynapseXen_lIlIIIIiIiIIIIllli()
        end
        return SynapseXen_IiliIIiIillIlll
    end
    do
        assert(SynapseXen_liiilIiiIlIIiII(4) == "\27Xen",
               "Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")
        SynapseXen_iIIliililIIIliiIilll = SynapseXen_iiIiI;
        SynapseXen_iIiIlIiillilIIlIiIlI = SynapseXen_iiIiI;
        local SynapseXen_liiIlliIllIIiIIliIll = SynapseXen_liiilIiiIlIIiII()
        SynapseXen_iiIiI()
        SynapseXen_iIiiIlilll = SynapseXen_lIiillilIllIlIiIi(
                                    SynapseXen_iIIliililIIIliiIilll())
        SynapseXen_liliIlililI()
        SynapseXen_liliIlililI()
        local SynapseXen_IllIiII = 0;
        for SynapseXen_iiIII = 1, #SynapseXen_liiIlliIllIIiIIliIll do
            local SynapseXen_IIiiiiliiIiiilliiIIl =
                SynapseXen_liiIlliIllIIiIIliIll:sub(SynapseXen_iiIII,
                                                    SynapseXen_iiIII)
            SynapseXen_IllIiII = SynapseXen_IllIiII +
                                     string.byte(SynapseXen_IIiiiiliiIiiilliiIIl)
        end
        SynapseXen_IllIiII = SynapseXen_iIliiIIlIll(SynapseXen_IllIiII,
                                                    SynapseXen_iIiiIlilll)
        for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_liliIlililI() do
            SynapseXen_ilIiII[SynapseXen_IiIilIiIIliiiil] =
                SynapseXen_llliIlIliil(SynapseXen_iIIliililIIIliiIilll(),
                                       SynapseXen_IllIiII)
        end
        SynapseXen_iiIiIiIiillIill()
    end
    return SynapseXen_lIlIIIIiIiIIIIllli()
end
local function SynapseXen_IiiiIliIilliIi(...)
    return SynapseXen_iIilillll('#', ...), {...}
end
local function SynapseXen_IiIil(SynapseXen_IiliIIiIillIlll,
                                SynapseXen_iiIiiiIiIiiII,
                                SynapseXen_IlillliIIilIlI)
    local SynapseXen_iIlIlI =
        SynapseXen_IiliIIiIillIlll[SynapseXen_iiillI[131045904] or
            (function(...)
                local SynapseXen_iiIiIii = "epic gamer vision"
                local SynapseXen_iIIliiIIlllIiliIIl =
                    SynapseXen_lliiiIiIIIlilI(3392666309, 3418601261)
                local SynapseXen_iliiII = {...}
                for SynapseXen_iiIII, SynapseXen_Iilll in
                    pairs(SynapseXen_iliiII) do
                    local SynapseXen_IlIIlliiIliI;
                    local SynapseXen_iiliIliiIllIlIiilIii =
                        type(SynapseXen_Iilll)
                    if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                        SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                    elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                        SynapseXen_IlIIlliiIliI =
                            SynapseXen_lliiiIiIIIlilI(4041999943, 4041977591)
                    end
                    SynapseXen_iIIliiIIlllIiliIIl =
                        SynapseXen_iIIliiIIlllIiliIIl - SynapseXen_IlIIlliiIliI
                end
                SynapseXen_iiillI[131045904] =
                    SynapseXen_iIliiIIlIll(
                        SynapseXen_iIliiIIlIll(830323467,
                                               SynapseXen_iIIliiIIlllIiliIIl),
                        SynapseXen_iIliiIIlIll(3192302592, SynapseXen_iIiiIlilll)) -
                        string.len(SynapseXen_iiIiIii) - #{
                        1869655077, 4128433151, 1744875165, 891606754,
                        3839983238, 1966702642, 1876543644, 4056702267,
                        262975930, 550332910
                    }
                return SynapseXen_iiillI[131045904]
            end)(528, "liliiiIli", "liIilIl", {}, {}, "llIlllilIilIIlIIIiI", {},
                 14877, {})]
    local SynapseXen_IlIIii =
        SynapseXen_IiliIIiIillIlll[SynapseXen_iiillI[812408351] or (function()
            local SynapseXen_iiIiIii =
                "double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"
            SynapseXen_iiillI[812408351] =
                SynapseXen_iIliiIIlIll(SynapseXen_lliiiIiIIIlilI(1711067959,
                                                                 397089193),
                                       SynapseXen_iIliiIIlIll(2301518975,
                                                              SynapseXen_iIiiIlilll)) -
                    string.len(SynapseXen_iiIiIii) -
                    #{3580245669, 1294566774, 2918343162}
            return SynapseXen_iiillI[812408351]
        end)()]
    local SynapseXen_ilIIlIIii =
        SynapseXen_IiliIIiIillIlll[SynapseXen_iiillI[1466143109] or (function()
            local SynapseXen_iiIiIii = "luraph better then xen bros :pensive:"
            SynapseXen_iiillI[1466143109] =
                SynapseXen_iIliiIIlIll(SynapseXen_lliiiIiIIIlilI(3626654986,
                                                                 3155797014),
                                       SynapseXen_iIliiIIlIll(3226459732,
                                                              SynapseXen_iIiiIlilll)) -
                    string.len(SynapseXen_iiIiIii) - #{409892361}
            return SynapseXen_iiillI[1466143109]
        end)()]
    return function(...)
        local SynapseXen_iIIIIIil, SynapseXen_liillliiliiIlI = 1, -1;
        local SynapseXen_lIIiilIIliIIiI, SynapseXen_IIliiIllI = {},
                                                                SynapseXen_iIilillll(
                                                                    '#', ...) -
                                                                    1;
        local SynapseXen_liIlIlIiiIIii = 0;
        local SynapseXen_llliiiiliIIIilI = {}
        local SynapseXen_lililili = {}
        local SynapseXen_lllIII = setmetatable({}, {
            __index = SynapseXen_llliiiiliIIIilI,
            __newindex = function(SynapseXen_IiliIIiiIlIliIIilI,
                                  SynapseXen_illlii, SynapseXen_iIIllilIiIlllIi)
                if SynapseXen_illlii > SynapseXen_liillliiliiIlI then
                    SynapseXen_liillliiliiIlI = SynapseXen_illlii
                end
                SynapseXen_llliiiiliIIIilI[SynapseXen_illlii] =
                    SynapseXen_iIIllilIiIlllIi
            end
        })
        local function SynapseXen_iilIIlliiIiIlIIIl()
            local SynapseXen_lIIiiI, SynapseXen_IiliiIiilIill;
            while true do
                SynapseXen_lIIiiI = SynapseXen_ilIIlIIii[SynapseXen_iIIIIIil]
                SynapseXen_IiliiIiilIill = SynapseXen_lIIiiI[1706407771]
                SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1;
                if SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[3071709437] or (function(...)
                        local SynapseXen_iiIiIii =
                            "i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(1879732815, 2695768623)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(2460442841,
                                                              2460427542)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[3071709437] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(3564991014,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(308065377,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{687299111, 3922015705, 3243025195, 3469578164}
                        return SynapseXen_iiillI[3071709437]
                    end)({}, 9348, "llllil", 4507, 9738, {})) then
                    local SynapseXen_llliIIiiIIlillil =
                        SynapseXen_IlIIii[SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1786993118],
                                SynapseXen_iiillI[3864568643] or (function()
                                    local SynapseXen_iiIiIii = "hi devforum"
                                    SynapseXen_iiillI[3864568643] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                2627680134, 910168214),
                                            SynapseXen_iIliiIIlIll(3160119938,
                                                                   SynapseXen_ilIiII[5])) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) -
                                            #{162748741, 1126114575, 3131242394}
                                    return SynapseXen_iiillI[3864568643]
                                end)()), SynapseXen_liIlIlIiiIIii, 262144)]
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_liiIliiIi;
                    local SynapseXen_Iiilli;
                    if SynapseXen_llliIIiiIIlillil[1439547849] ~= 0 then
                        SynapseXen_liiIliiIi = {}
                        SynapseXen_Iiilli =
                            setmetatable({}, {
                                __index = function(
                                    SynapseXen_IiliIIiiIlIliIIilI,
                                    SynapseXen_illlii)
                                    local SynapseXen_lililii =
                                        SynapseXen_liiIliiIi[SynapseXen_illlii]
                                    return
                                        SynapseXen_lililii[1][SynapseXen_lililii[2]]
                                end,
                                __newindex = function(
                                    SynapseXen_IiliIIiiIlIliIIilI,
                                    SynapseXen_illlii,
                                    SynapseXen_iIIllilIiIlllIi)
                                    local SynapseXen_lililii =
                                        SynapseXen_liiIliiIi[SynapseXen_illlii]
                                    SynapseXen_lililii[1][SynapseXen_lililii[2]] =
                                        SynapseXen_iIIllilIiIlllIi
                                end
                            })
                        for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_llliIIiiIIlillil[1439547849] do
                            local SynapseXen_iiiIlililllIiI =
                                SynapseXen_ilIIlIIii[SynapseXen_iIIIIIil]
                            if SynapseXen_iiiIlililllIiI[1706407771] ==
                                (SynapseXen_iiillI[3924551813] or (function(...)
                                    local SynapseXen_iiIiIii =
                                        "thats how mafia works"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(2639108146,
                                                                  102256292)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    1162233170, 1162168563)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[3924551813] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(3488895578,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(4105025492,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            2272696942, 2414383100, 3308296043,
                                            879350472, 1812099961, 3024991673,
                                            594453474
                                        }
                                    return SynapseXen_iiillI[3924551813]
                                end)("IiIilillIiiiIi", 7520, {}, {}, 2075, 51,
                                     {})) then
                                SynapseXen_liiIliiIi[SynapseXen_IiIilIiIIliiiil -
                                    1] =
                                    {
                                        SynapseXen_iIiiiliIliiilillIiil,
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iiiIlililllIiI[1776583566],
                                            SynapseXen_iiillI[2713915352] or
                                                (function()
                                                    local SynapseXen_iiIiIii =
                                                        "level 1 crook = luraph, level 100 boss = xen"
                                                    SynapseXen_iiillI[2713915352] =
                                                        SynapseXen_iIliiIIlIll(
                                                            SynapseXen_lliiiIiIIIlilI(
                                                                1935848861,
                                                                996474523),
                                                            SynapseXen_iIliiIIlIll(
                                                                3892909633,
                                                                SynapseXen_iIiiIlilll)) -
                                                            string.len(
                                                                SynapseXen_iiIiIii) -
                                                            #{
                                                                1504990821,
                                                                2776128643,
                                                                3830817412,
                                                                1828124642,
                                                                3074075767,
                                                                1477313328
                                                            }
                                                    return
                                                        SynapseXen_iiillI[2713915352]
                                                end)())
                                    }
                            elseif SynapseXen_iiiIlililllIiI[1706407771] ==
                                (SynapseXen_iiillI[2170534547] or (function(...)
                                    local SynapseXen_iiIiIii =
                                        "baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(4043407539,
                                                                  3073992627)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    1826664715, 1826654687)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[2170534547] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(1631430658,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(2265633584,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            2814851825, 395587855, 4014458558,
                                            3802777619, 302268462, 4126599721,
                                            1542785523, 1082302251, 465744772
                                        }
                                    return SynapseXen_iiillI[2170534547]
                                end)("lillliiii", {}, "iIllIIlililIll", 94, {})) then
                                SynapseXen_liiIliiIi[SynapseXen_IiIilIiIIliiiil -
                                    1] =
                                    {
                                        SynapseXen_IlillliIIilIlI,
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iiiIlililllIiI[1776583566],
                                            SynapseXen_iiillI[3940153553] or
                                                (function(...)
                                                    local SynapseXen_iiIiIii =
                                                        "wally bad bird"
                                                    local 
                                                        SynapseXen_iIIliiIIlllIiliIIl =
                                                        SynapseXen_lliiiIiIIIlilI(
                                                            4228023184,
                                                            3804441800)
                                                    local SynapseXen_iliiII =
                                                        {...}
                                                    for SynapseXen_iiIII,
                                                        SynapseXen_Iilll in
                                                        pairs(SynapseXen_iliiII) do
                                                        local 
                                                            SynapseXen_IlIIlliiIliI;
                                                        local 
                                                            SynapseXen_iiliIliiIllIlIiilIii =
                                                            type(
                                                                SynapseXen_Iilll)
                                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                                            "number" then
                                                            SynapseXen_IlIIlliiIliI =
                                                                SynapseXen_Iilll
                                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                                            "string" then
                                                            SynapseXen_IlIIlliiIliI =
                                                                SynapseXen_Iilll:len()
                                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                                            "table" then
                                                            SynapseXen_IlIIlliiIliI =
                                                                SynapseXen_lliiiIiIIIlilI(
                                                                    2218361632,
                                                                    2218331965)
                                                        end
                                                        SynapseXen_iIIliiIIlllIiliIIl =
                                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                                SynapseXen_IlIIlliiIliI
                                                    end
                                                    SynapseXen_iiillI[3940153553] =
                                                        SynapseXen_iIliiIIlIll(
                                                            SynapseXen_iIliiIIlIll(
                                                                1000620983,
                                                                SynapseXen_iIIliiIIlllIiliIIl),
                                                            SynapseXen_iIliiIIlIll(
                                                                3398672238,
                                                                SynapseXen_ilIiII[4])) -
                                                            string.len(
                                                                SynapseXen_iiIiIii) -
                                                            #{
                                                                743563035,
                                                                1135684796,
                                                                2689617097,
                                                                3226804354,
                                                                359147017,
                                                                725344893,
                                                                3012932395,
                                                                762316959,
                                                                2119702824,
                                                                3421474690
                                                            }
                                                    return
                                                        SynapseXen_iiillI[3940153553]
                                                end)("ll", {}, "iillI", {},
                                                     10208, 8099, 13659, "Iii"))
                                    }
                            end
                            SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                        end
                        SynapseXen_lililili[#SynapseXen_lililili + 1] =
                            SynapseXen_liiIliiIi
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_iIIlIlliIliI(
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[909370254],
                                                SynapseXen_iiillI[3567824177] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "skisploit is the superior obfuscator, clearly."
                                SynapseXen_iiillI[3567824177] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(1277607718,
                                                                  3257992792),
                                        SynapseXen_iIliiIIlIll(773391848,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        2437279454, 3833346366, 1581102695,
                                        4237759077, 609008905, 1024450383,
                                        3627451979
                                    }
                                return SynapseXen_iiillI[3567824177]
                            end)(), 256), SynapseXen_liIlIlIiiIIii, 256)] =
                        SynapseXen_IiIil(SynapseXen_llliIIiiIIlillil,
                                         SynapseXen_iiIiiiIiIiiII,
                                         SynapseXen_Iiilli)
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4277787799] or (function(...)
                        local SynapseXen_iiIiIii =
                            "so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(2216405360, 1714962303)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(1239454636,
                                                              1239421640)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[4277787799] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(1981100854,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(2856397653,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                2547367657, 2259056134, 788660367, 2180830570,
                                934876702, 1874791373, 488570282
                            }
                        return SynapseXen_iiillI[4277787799]
                    end)(8301, "lIllli", 9707, 1506)) then
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    for SynapseXen_IiIilIiIIliiiil = SynapseXen_iIIlIlliIliI(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[395775834] or (function()
                            local SynapseXen_iiIiIii =
                                "https://twitter.com/Ripull_RBLX/status/1059334518581145603"
                            SynapseXen_iiillI[395775834] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(1508456344,
                                                              1946128828),
                                    SynapseXen_iIliiIIlIll(3989555808,
                                                           SynapseXen_ilIiII[2])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{2114741148, 2054019007, 490976745}
                            return SynapseXen_iiillI[395775834]
                        end)(), 256), SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[1776583566],
                        SynapseXen_iiillI[1633799239] or (function()
                            local SynapseXen_iiIiIii =
                                "inb4 posted on exploit reports section"
                            SynapseXen_iiillI[1633799239] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(884215750,
                                                              2962320272),
                                    SynapseXen_iIliiIIlIll(1809297526,
                                                           SynapseXen_ilIiII[4])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{2211341567, 3479446821}
                            return SynapseXen_iiillI[1633799239]
                        end)()) do
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil] =
                            nil
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[476657322] or (function()
                        local SynapseXen_iiIiIii =
                            "xen doesn't come with instance caching, sorry superskater"
                        SynapseXen_iiillI[476657322] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1160300920, 4123288474),
                                SynapseXen_iIliiIIlIll(2791952977,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    60634352, 199508523, 2561786432, 2079594876,
                                    1614968299
                                }
                        return SynapseXen_iiillI[476657322]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[2001466870] or (function()
                            local SynapseXen_iiIiIii = "yed"
                            SynapseXen_iiillI[2001466870] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(3224152034,
                                                              199961765),
                                    SynapseXen_iIliiIIlIll(1808335509,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{
                                        680976048, 327929929, 730937889,
                                        2376795867
                                    }
                            return SynapseXen_iiillI[2001466870]
                        end)())] =
                        SynapseXen_IlillliIIilIlI[SynapseXen_iIliiIIlIll(
                            SynapseXen_lIIiiI[1776583566],
                            SynapseXen_iiillI[4290166869] or (function()
                                local SynapseXen_iiIiIii =
                                    "what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"
                                SynapseXen_iiillI[4290166869] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2430942341,
                                                                  3625995298),
                                        SynapseXen_iIliiIIlIll(2805083801,
                                                               SynapseXen_ilIiII[4])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            690202058, 4133128207, 442959209,
                                            1468973982, 861222814, 3206081299
                                        }
                                return SynapseXen_iiillI[4290166869]
                            end)())]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[255310135] or (function()
                        local SynapseXen_iiIiIii = "wally bad bird"
                        SynapseXen_iiillI[255310135] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(3009130478, 2445699609),
                                SynapseXen_iIliiIIlIll(3446382021,
                                                       SynapseXen_ilIiII[4])) -
                                string.len(SynapseXen_iiIiIii) - #{511639632}
                        return SynapseXen_iiillI[255310135]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[3883054613] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "luraph better then xen bros :pensive:"
                                SynapseXen_iiillI[3883054613] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(1360040860,
                                                                  466354471),
                                        SynapseXen_iIliiIIlIll(3939758948,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        1922104665, 4010753923, 4140700392,
                                        2564821833, 1688896872, 2069209079,
                                        380720775
                                    }
                                return SynapseXen_iiillI[3883054613]
                            end)()) ~= 0;
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1776583566],
                                                SynapseXen_iiillI[3105950297] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."
                                SynapseXen_iiillI[3105950297] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(3743309270,
                                                                  2696069433),
                                        SynapseXen_iIliiIIlIll(1709373929,
                                                               SynapseXen_ilIiII[3])) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        571311469, 3147980283, 2891935619,
                                        1547756409, 3039560557, 3584974175,
                                        1890147927, 1817347078, 128486414
                                    }
                                return SynapseXen_iiillI[3105950297]
                            end)(), 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[3672927217] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "imagine using some lua minifier tool and thinking you are a badass"
                                SynapseXen_iiillI[3672927217] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2848372068,
                                                                  958711215),
                                        SynapseXen_iIliiIIlIll(820826264,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        3213293524, 2809453720, 2795081808,
                                        4224871332, 3555250606, 1550132417,
                                        3039565785, 619092059, 822365415
                                    }
                                return SynapseXen_iiillI[3672927217]
                            end)())
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    if SynapseXen_ilillliilIiiiIilIi <=
                        SynapseXen_IIiiiiliiIiiilliiIIl ~=
                        SynapseXen_llIilIiliIliIlIlIilI then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2839974550] or (function()
                        local SynapseXen_iiIiIii =
                            "skisploit is the superior obfuscator, clearly."
                        SynapseXen_iiillI[2839974550] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(3908718566, 79666913),
                                SynapseXen_iIliiIIlIll(3526493215,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{4221417760, 4185735936}
                        return SynapseXen_iiillI[2839974550]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[909370254],
                                                SynapseXen_iiillI[3961292529] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "wait for someone on devforum to say they are gonna deobfuscate this"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1897606377,
                                                              38902487)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                2030596143, 2030578314)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[3961292529] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(4224209802,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3069531137,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        1056014072, 2258755857, 2251840010,
                                        1871662578, 1580312633, 3755072942,
                                        4204653050, 230792271, 4209964791,
                                        1879195721
                                    }
                                return SynapseXen_iiillI[3961292529]
                            end)(2158, 3939, "lIIlii"), 256)
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[3256916275] or (function()
                                    local SynapseXen_iiIiIii =
                                        "epic gamer vision"
                                    SynapseXen_iiillI[3256916275] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(366697443,
                                                                      2598462255),
                                            SynapseXen_iIliiIIlIll(2974651803,
                                                                   SynapseXen_ilIiII[1])) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            4204276695, 2055680291, 3006686031,
                                            2439218911, 3397610619, 2908790770,
                                            4264677530
                                        }
                                    return SynapseXen_iiillI[3256916275]
                                end)()), SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1617625881],
                                                SynapseXen_iiillI[204090093] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "this is so sad, alexa play ripull.mp4"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(2235143044,
                                                              340616101)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(809684207,
                                                                      809674932)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[204090093] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(731634151,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(451367243,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill -
                                        #{
                                            3533154596, 732578060, 1899128746,
                                            1887455632, 4011989369
                                        }
                                return SynapseXen_iiillI[204090093]
                            end)(14246, {}, "ililI", {}, 6786, 2246, 10682,
                                 "IIIi"), 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_liIIIli, SynapseXen_IiiilililiIilI;
                    local SynapseXen_IiIiIIiIl, SynapseXen_IlIiIIllIiiiiiIlil;
                    SynapseXen_liIIIli = {}
                    if SynapseXen_ilillliilIiiiIilIi ~= 1 then
                        if SynapseXen_ilillliilIiiiIilIi ~= 0 then
                            SynapseXen_IiIiIIiIl =
                                SynapseXen_llIilIiliIliIlIlIilI +
                                    SynapseXen_ilillliilIiiiIilIi - 1
                        else
                            SynapseXen_IiIiIIiIl = SynapseXen_liillliiliiIlI
                        end
                        SynapseXen_IlIiIIllIiiiiiIlil = 0;
                        for SynapseXen_IiIilIiIIliiiil = SynapseXen_llIilIiliIliIlIlIilI +
                            1, SynapseXen_IiIiIIiIl do
                            SynapseXen_IlIiIIllIiiiiiIlil =
                                SynapseXen_IlIiIIllIiiiiiIlil + 1;
                            SynapseXen_liIIIli[SynapseXen_IlIiIIllIiiiiiIlil] =
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil]
                        end
                        SynapseXen_IiIiIIiIl, SynapseXen_IiiilililiIilI =
                            SynapseXen_IiiiIliIilliIi(
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI](
                                    unpack(SynapseXen_liIIIli, 1,
                                           SynapseXen_IiIiIIiIl -
                                               SynapseXen_llIilIiliIliIlIlIilI)))
                    else
                        SynapseXen_IiIiIIiIl, SynapseXen_IiiilililiIilI =
                            SynapseXen_IiiiIliIilliIi(
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI]())
                    end
                    SynapseXen_liillliiliiIlI =
                        SynapseXen_llIilIiliIliIlIlIilI - 1;
                    if SynapseXen_IIiiiiliiIiiilliiIIl ~= 1 then
                        if SynapseXen_IIiiiiliiIiiilliiIIl ~= 0 then
                            SynapseXen_IiIiIIiIl =
                                SynapseXen_llIilIiliIliIlIlIilI +
                                    SynapseXen_IIiiiiliiIiiilliiIIl - 2
                        else
                            SynapseXen_IiIiIIiIl =
                                SynapseXen_IiIiIIiIl +
                                    SynapseXen_llIilIiliIliIlIlIilI - 1
                        end
                        SynapseXen_IlIiIIllIiiiiiIlil = 0;
                        for SynapseXen_IiIilIiIIliiiil = SynapseXen_llIilIiliIliIlIlIilI, SynapseXen_IiIiIIiIl do
                            SynapseXen_IlIiIIllIiiiiiIlil =
                                SynapseXen_IlIiIIllIiiiiiIlil + 1;
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil] =
                                SynapseXen_IiiilililiIilI[SynapseXen_IlIiIIllIiiiiiIlil]
                        end
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[3221066628] or (function()
                        local SynapseXen_iiIiIii = "hi devforum"
                        SynapseXen_iiillI[3221066628] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(180061699, 2898377014),
                                SynapseXen_iIliiIIlIll(108466066,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    1950764984, 3931733683, 3690117268,
                                    2001809407
                                }
                        return SynapseXen_iiillI[3221066628]
                    end)()) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_lllIII[SynapseXen_iIliiIIlIll(
                            SynapseXen_lIIiiI[1776583566],
                            SynapseXen_iiillI[1782173143] or (function()
                                local SynapseXen_iiIiIii =
                                    "this is a christian obfuscator, no cursing allowed in our scripts"
                                SynapseXen_iiillI[1782173143] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(3060250761,
                                                                  3536921255),
                                        SynapseXen_iIliiIIlIll(3300551650,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        509173107, 2827625284, 441351626,
                                        2812348561, 3414465214, 1861267364,
                                        2253881613, 1861579331, 2964557516,
                                        1627693826
                                    }
                                return SynapseXen_iiillI[1782173143]
                            end)())]
                    if not not SynapseXen_ilillliilIiiiIilIi ==
                        (SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1617625881],
                                                 SynapseXen_iiillI[2773167614] or
                                                     (function(...)
                                local SynapseXen_iiIiIii =
                                    "wow xen is shit buy luraph ok"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1353344602,
                                                              2373230988)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(604464075,
                                                                      604445734)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2773167614] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(1613750726,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(2049764617,
                                                               SynapseXen_ilIiII[2])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{2957851808, 3106954207}
                                return SynapseXen_iiillI[2773167614]
                            end)(12606, "li", 9422, 4251), 512) == 0) then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    else
                        SynapseXen_lllIII[SynapseXen_IllillliiIl(
                            SynapseXen_lIIiiI[909370254],
                            SynapseXen_iiillI[3468169437] or (function()
                                local SynapseXen_iiIiIii =
                                    "baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"
                                SynapseXen_iiillI[3468169437] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2019966345,
                                                                  2926160522),
                                        SynapseXen_iIliiIIlIll(972933605,
                                                               SynapseXen_ilIiII[4])) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{3130520831, 2102957394, 859191235}
                                return SynapseXen_iiillI[3468169437]
                            end)(), 256)] = SynapseXen_ilillliilIiiiIilIi
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4161968624] or (function()
                        local SynapseXen_iiIiIii =
                            "what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"
                        SynapseXen_iiillI[4161968624] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(986590099, 4024993717),
                                SynapseXen_iIliiIIlIll(1965758978,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{1473719407, 2550826392, 1731009665}
                        return SynapseXen_iiillI[4161968624]
                    end)()) then
                    local SynapseXen_ilillliilIiiiIilIi,
                          SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1776583566],
                                                SynapseXen_iiillI[2840184292] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "xen doesn't come with instance caching, sorry superskater"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(265699309,
                                                              71398524)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(247907809,
                                                                      247845113)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2840184292] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(814460654,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(2602036463,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill -
                                        #{2768066273, 2717797004}
                                return SynapseXen_iiillI[2840184292]
                            end)("lIllili", 1447, {}, 11165, 6742,
                                 "ilIIiiiiIIlilIliil"), 512),
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[2146908218] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "thats how mafia works"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(2765691066,
                                                              2078767209)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1856426522, 1856360149)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2146908218] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(2408273491,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3208792498,
                                                               SynapseXen_ilIiII[4])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            4112560539, 3837241005, 424348023,
                                            2133032668
                                        }
                                return SynapseXen_iiillI[2146908218]
                            end)("IIIiliIilIil", 11268, {}, {}), 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[169638921] or (function(...)
                            local SynapseXen_iiIiIii =
                                "i put more time into this shitty list of dead memes then i did into the obfuscator itself"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(4271135191, 60379282)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(792333817,
                                                                  792298298)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl -
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[169638921] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(2615424140,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(3337047162,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill - #{
                                    2802772401, 4184310743, 4075775832,
                                    4135651749, 1387203329, 168001471,
                                    2797411037, 306758157
                                }
                            return SynapseXen_iiillI[169638921]
                        end)({}, 4238, "IiiIlililIIlIiII", "I", "IilIlllIiiill",
                             2052, 8497, {}, 3550), 256)][SynapseXen_ilillliilIiiiIilIi] =
                        SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1121274627] or (function()
                        local SynapseXen_iiIiIii = "xen detects custom getfenv"
                        SynapseXen_iiillI[1121274627] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(235987472, 458630515),
                                SynapseXen_iIliiIIlIll(63164378,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{1381722638, 874635041}
                        return SynapseXen_iiillI[1121274627]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[1464823881] or (function()
                            local SynapseXen_iiIiIii = "yed"
                            SynapseXen_iiillI[1464823881] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(3582666019,
                                                              3604322896),
                                    SynapseXen_iIliiIIlIll(3970486532,
                                                           SynapseXen_ilIiII[4])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) - #{
                                    2181211181, 1967312540, 3142308974,
                                    3378168063, 2332715830, 3408327218,
                                    2582786413, 3961711161, 3139335498
                                }
                            return SynapseXen_iiillI[1464823881]
                        end)(), 256)] =
                        not SynapseXen_lllIII[SynapseXen_IllillliiIl(
                            SynapseXen_lIIiiI[1776583566],
                            SynapseXen_iiillI[1959455944] or (function()
                                local SynapseXen_iiIiIii =
                                    "sometimes it be like that"
                                SynapseXen_iiillI[1959455944] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(3005033855,
                                                                  4280200902),
                                        SynapseXen_iIliiIIlIll(1920337837,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{60419692}
                                return SynapseXen_iiillI[1959455944]
                            end)(), 512)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[432913551] or (function(...)
                        local SynapseXen_iiIiIii =
                            "so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(3070288999, 1272491440)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(3742497845,
                                                              3742470585)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[432913551] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(3198976258,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(3799723767,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1964733585, 581283120, 1575245185, 3899801481,
                                994018583, 2404956740, 1409123091, 2939040294,
                                427832539, 3276399352
                            }
                        return SynapseXen_iiillI[432913551]
                    end)("iliIIl", {}, {}, 859)) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_IllillliiIl(
                            SynapseXen_iIIlIlliIliI(
                                SynapseXen_lIIiiI[909370254],
                                SynapseXen_iiillI[3862346953] or (function()
                                    local SynapseXen_iiIiIii =
                                        "aspect network better obfuscator"
                                    SynapseXen_iiillI[3862346953] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                3384460748, 1326170616),
                                            SynapseXen_iIliiIIlIll(2633520058,
                                                                   SynapseXen_ilIiII[3])) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) -
                                            #{
                                                1105786088, 1385245514,
                                                1243645986, 2930830569,
                                                1234174707, 4218576568
                                            }
                                    return SynapseXen_iiillI[3862346953]
                                end)(), 256), SynapseXen_liIlIlIiiIIii, 256)
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[2521598657] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"
                                SynapseXen_iiillI[2521598657] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(418412961,
                                                                  2402193453),
                                        SynapseXen_iIliiIIlIll(1342406939,
                                                               SynapseXen_ilIiII[2])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{3109381377, 813059834, 1818628130}
                                return SynapseXen_iiillI[2521598657]
                            end)())
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_liIIIli, SynapseXen_IiiilililiIilI;
                    local SynapseXen_IiIiIIiIl;
                    local SynapseXen_liIIllIiIiiiiliiIIIi = 0;
                    SynapseXen_liIIIli = {}
                    if SynapseXen_ilillliilIiiiIilIi ~= 1 then
                        if SynapseXen_ilillliilIiiiIilIi ~= 0 then
                            SynapseXen_IiIiIIiIl =
                                SynapseXen_llIilIiliIliIlIlIilI +
                                    SynapseXen_ilillliilIiiiIilIi - 1
                        else
                            SynapseXen_IiIiIIiIl = SynapseXen_liillliiliiIlI
                        end
                        for SynapseXen_IiIilIiIIliiiil = SynapseXen_llIilIiliIliIlIlIilI +
                            1, SynapseXen_IiIiIIiIl do
                            SynapseXen_liIIIli[#SynapseXen_liIIIli + 1] =
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil]
                        end
                        SynapseXen_IiiilililiIilI =
                            {
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI](
                                    unpack(SynapseXen_liIIIli, 1,
                                           SynapseXen_IiIiIIiIl -
                                               SynapseXen_llIilIiliIliIlIlIilI))
                            }
                    else
                        SynapseXen_IiiilililiIilI =
                            {
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI]()
                            }
                    end
                    for SynapseXen_lIilllIIiIiI in next,
                                                   SynapseXen_IiiilililiIilI do
                        if SynapseXen_lIilllIIiIiI >
                            SynapseXen_liIIllIiIiiiiliiIIIi then
                            SynapseXen_liIIllIiIiiiiliiIIIi =
                                SynapseXen_lIilllIIiIiI
                        end
                    end
                    return SynapseXen_IiiilililiIilI,
                           SynapseXen_liIIllIiIiiiiliiIIIi
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[3827310177] or (function(...)
                        local SynapseXen_iiIiIii =
                            "wow xen is shit buy luraph ok"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(1414022548, 1550970984)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(1396866983,
                                                              1396846365)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[3827310177] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(736409621,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(894729479,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                2749063645, 1812055426, 2008585583, 2557522200,
                                433471774, 3844801202, 3386351200, 1460200918,
                                625736402, 1413581976
                            }
                        return SynapseXen_iiillI[3827310177]
                    end)("IIliIlIlIilIilI", "IiliIl", {}, {})) then
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[107400014] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "hi xen crashes on my axon paste plz help"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1294240106,
                                                              1250636006)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1970748831, 1970685741)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[107400014] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(4203000492,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(1562738808,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill - #{
                                        1053023844, 2575424828, 366403642,
                                        2185006690, 3425286886, 722919186,
                                        61350507, 757870984
                                    }
                                return SynapseXen_iiillI[107400014]
                            end)("lliIIlIIiiii", "IilIlIiiillliiii", {},
                                 "IIliIlililIIiliII"))
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[1917607002] or (function(...)
                            local SynapseXen_iiIiIii =
                                "this is so sad, alexa play ripull.mp4"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(2039723776, 3051504458)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(2117975548,
                                                                  2117923843)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl -
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[1917607002] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(98054185,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(1772512169,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill - #{
                                    2859790200, 127128362, 2853583570,
                                    2211506723, 1572984241, 3397846903,
                                    360151647, 1249100662
                                }
                            return SynapseXen_iiillI[1917607002]
                        end)("liIIIIillliiliI", {}, {}, "lIIIIIiI"))] =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IllillliiIl(
                            SynapseXen_lIIiiI[1776583566],
                            SynapseXen_iiillI[1709162624] or (function(...)
                                local SynapseXen_iiIiIii = "epic gamer vision"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1921832037,
                                                              2923504699)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                3250406875, 3250330692)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[1709162624] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(3842305794,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(596099257,
                                                               SynapseXen_ilIiII[3])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{2753195081, 3496821202}
                                return SynapseXen_iiillI[1709162624]
                            end)("iliIlIl", {}, 12722, 217, {},
                                 "IllIiIIIiIIIIlIIlII", "lIIlil"), 512)][SynapseXen_IIiiiiliiIiiilliiIIl]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2319209329] or (function()
                        local SynapseXen_iiIiIii = "xen detects custom getfenv"
                        SynapseXen_iiillI[2319209329] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1992585424, 3596131714),
                                SynapseXen_iIliiIIlIll(9665341,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1036574396, 1389437886, 2751537117, 3480999248,
                                3824623427, 817654807, 478172052
                            }
                        return SynapseXen_iiillI[2319209329]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[909370254],
                                                SynapseXen_iiillI[3505668535] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "imagine using some lua minifier tool and thinking you are a badass"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(2739973019,
                                                              3146768270)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1664954833, 1664892535)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[3505668535] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(1459388667,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3998017443,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill - #{
                                        1876804608, 3102283940, 2150361585,
                                        2949610941, 79280661, 2726719197,
                                        433563604, 3343591127
                                    }
                                return SynapseXen_iiillI[3505668535]
                            end)("iIIIlIiiIllIlii", 10656, "IiilIllIiiiiiili",
                                 "lliiliIilIIiiI", 1544, "lIl", {}, 12172,
                                 "IiIlIlIIiiIIIl", "llIiIIlII"), 256)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_lIlilli =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                            2]
                    local SynapseXen_lIilllIIiIiI =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI] +
                            SynapseXen_lIlilli;
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI] =
                        SynapseXen_lIilllIIiIiI;
                    if SynapseXen_lIlilli > 0 then
                        if SynapseXen_lIilllIIiIiI <=
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                1] then
                            SynapseXen_iIIIIIil =
                                SynapseXen_iIIIIIil +
                                    SynapseXen_lIIiiI[1300471799]
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                3] = SynapseXen_lIilllIIiIiI
                        end
                    else
                        if SynapseXen_lIilllIIiIiI >=
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                1] then
                            SynapseXen_iIIIIIil =
                                SynapseXen_iIIIIIil +
                                    SynapseXen_lIIiiI[1300471799]
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                3] = SynapseXen_lIilllIIiIiI
                        end
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[476324068] or (function(...)
                        local SynapseXen_iiIiIii =
                            "xen doesn't come with instance caching, sorry superskater"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(1413952803, 4183025185)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(4029561439,
                                                              4029503057)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[476324068] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(293399219,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(2182726241,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    2163760329, 3447613348, 2250228293,
                                    3945444883, 2040330979, 2539638306
                                }
                        return SynapseXen_iiillI[476324068]
                    end)(14637, 1427)) then
                    SynapseXen_lllIII[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[3258015173] or (function()
                            local SynapseXen_iiIiIii =
                                "hi my 2.5mb script doesn't work with xen please help"
                            SynapseXen_iiillI[3258015173] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(295446311,
                                                              1765992790),
                                    SynapseXen_iIliiIIlIll(3204820319,
                                                           SynapseXen_ilIiII[2])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{2411035141, 500677904}
                            return SynapseXen_iiillI[3258015173]
                        end)())] = SynapseXen_iIlIlI[SynapseXen_iIIlIlliIliI(
                                       SynapseXen_lIIiiI[1786993118],
                                       SynapseXen_iiillI[2638979619] or
                                           (function(...)
                                local SynapseXen_iiIiIii = "hi devforum"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(2327524895,
                                                              703856451)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                2132278295, 2132203758)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2638979619] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(568021252,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(1835056739,
                                                               SynapseXen_ilIiII[4])) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        230429152, 3218800803, 2273929618,
                                        3925415197, 2433534848, 3735784616,
                                        2764817081, 1680613613
                                    }
                                return SynapseXen_iiillI[2638979619]
                            end)("lllliIilI", 7274, {}, 4461, {}, {}), 262144)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[288666458] or (function(...)
                        local SynapseXen_iiIiIii =
                            "hi xen doesn't work on sk8r please help"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(3784404078, 941129780)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(328699538,
                                                              328672651)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl -
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[288666458] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(1666493665,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(2694041051,
                                                       SynapseXen_ilIiII[3])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                3600088272, 647909323, 299478174, 449998124,
                                3235546213, 1040558404, 2185585141, 2875606273,
                                1112137983, 4285093770
                            }
                        return SynapseXen_iiillI[288666458]
                    end)("IIliiiiil", 5165, 6348, "llllIIIlIIii", {}, 7046, 2509)) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[2950049778] or (function(...)
                                    local SynapseXen_iiIiIii = "print(bytecode)"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(1480736606,
                                                                  2313495674)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    1066226578, 1066160552)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[2950049778] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(1323328683,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(2232086337,
                                                                   SynapseXen_ilIiII[3])) -
                                            string.len(SynapseXen_iiIiIii) -
                                            SynapseXen_IiliiIiilIill -
                                            #{
                                                176315464, 3094003308,
                                                1711876469, 3898505956,
                                                1663293687, 3841272129
                                            }
                                    return SynapseXen_iiillI[2950049778]
                                end)("lIilIIIIiIIliiI", 1389, {}, {},
                                     "llIIiiiilliIiilI", 7390, 7263, 13111,
                                     "IIlllliIIiiiIiil")),
                            SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[97139802] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."
                                SynapseXen_iiillI[97139802] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(3347921689,
                                                                  153699562),
                                        SynapseXen_iIliiIIlIll(1856686075,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            2574120992, 945018062, 1609563420,
                                            2728371941
                                        }
                                return SynapseXen_iiillI[97139802]
                            end)())
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IllillliiIl(
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[3783649922] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1292577450,
                                                              343330821)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1937252346, 1937202227)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[3783649922] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(1790476307,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(2479497903,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{1754554853, 3147060975, 3757354632}
                                return SynapseXen_iiillI[3783649922]
                            end)("liilllIlillIilliII", "Ii", "Ill", "IIliiiIl"),
                                               256), SynapseXen_liIlIlIiiIIii,
                        256)] = SynapseXen_ilillliilIiiiIilIi /
                                    SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4085934279] or (function()
                        local SynapseXen_iiIiIii =
                            "can we have an f in chat for ripull"
                        SynapseXen_iiillI[4085934279] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(2342222307, 3373025634),
                                SynapseXen_iIliiIIlIll(2236235776,
                                                       SynapseXen_ilIiII[2])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                4265368250, 3220496463, 2287199201, 2833414719,
                                1008033618, 2231894221, 21884015, 2824050691,
                                2076891438, 1367350573
                            }
                        return SynapseXen_iiillI[4085934279]
                    end)()) then
                    SynapseXen_iiIiiiIiIiiII[SynapseXen_iIlIlI[SynapseXen_iIIlIlliIliI(
                        SynapseXen_lIIiiI[1786993118],
                        SynapseXen_iiillI[2560508249] or (function()
                            local SynapseXen_iiIiIii =
                                "https://twitter.com/Ripull_RBLX/status/1059334518581145603"
                            SynapseXen_iiillI[2560508249] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(2836562170,
                                                              1961771604),
                                    SynapseXen_iIliiIIlIll(2113000597,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{
                                        1573325709, 2114474043, 1929500055,
                                        2396898131, 3052615707
                                    }
                            return SynapseXen_iiillI[2560508249]
                        end)(), 262144)]] =
                        SynapseXen_lllIII[SynapseXen_IllillliiIl(
                            SynapseXen_lIIiiI[909370254],
                            SynapseXen_iiillI[3706382537] or (function()
                                local SynapseXen_iiIiIii =
                                    "SECURE API, IMPOSSIBLE TO BYPASS!"
                                SynapseXen_iiillI[3706382537] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(4027020950,
                                                                  1961873316),
                                        SynapseXen_iIliiIIlIll(620324372,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        3855619408, 3575521585, 4216342778,
                                        2514430269, 684133632, 4219673887,
                                        3215690333, 1107339679, 2316759633
                                    }
                                return SynapseXen_iiillI[3706382537]
                            end)(), 256)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4053594355] or (function()
                        local SynapseXen_iiIiIii = "hi devforum"
                        SynapseXen_iiillI[4053594355] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1295939316, 2372293021),
                                SynapseXen_iIliiIIlIll(1616361974,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    783242166, 2479831747, 3355000245,
                                    3182772699, 1171454734, 317285285
                                }
                        return SynapseXen_iiillI[4053594355]
                    end)()) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1776583566],
                                                SynapseXen_iiillI[2366015116] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "imagine using some lua minifier tool and thinking you are a badass"
                                SynapseXen_iiillI[2366015116] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2008308397,
                                                                  24413616),
                                        SynapseXen_iIliiIIlIll(3603934369,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        4201804772, 3392535797, 2725525154,
                                        2246041244, 1387505274, 1569702690,
                                        3840377841
                                    }
                                return SynapseXen_iiillI[2366015116]
                            end)(), 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1617625881],
                                SynapseXen_iiillI[429438389] or (function(...)
                                    local SynapseXen_iiIiIii =
                                        "this is a christian obfuscator, no cursing allowed in our scripts"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(194804096,
                                                                  1089779253)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    1881514986, 1881506922)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[429438389] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(520080071,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(4120504803,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            2508409359, 2381915141, 1938576837,
                                            2311404882, 451363330, 3935719963,
                                            2441579387, 1591558545, 3267935518,
                                            2091667954
                                        }
                                    return SynapseXen_iiillI[429438389]
                                end)({}, {}, 12445, {}, {}, "lIiililIlliliIIl",
                                     "IIIl", {}, 4438, 13593)),
                            SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_iIIlIlliIliI(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[3570070753] or (function()
                            local SynapseXen_iiIiIii =
                                "skisploit is the superior obfuscator, clearly."
                            SynapseXen_iiillI[3570070753] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(1620013742,
                                                              1138973156),
                                    SynapseXen_iIliiIIlIll(2204350949,
                                                           SynapseXen_iIiiIlilll)) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{
                                        4211529636, 3707489824, 3157260188,
                                        3348384438, 1461917610
                                    }
                            return SynapseXen_iiillI[3570070753]
                        end)(), 256)] = SynapseXen_ilillliilIiiiIilIi %
                                            SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2773135231] or (function()
                        local SynapseXen_iiIiIii =
                            "sponsored by ironbrew, jk xen is better"
                        SynapseXen_iiillI[2773135231] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(2371055296, 446487537),
                                SynapseXen_iIliiIIlIll(2169026965,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    529428117, 808173431, 1660741767,
                                    4074846874, 134924896, 1258929092
                                }
                        return SynapseXen_iiillI[2773135231]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_IllillliiIl(
                            SynapseXen_IllillliiIl(SynapseXen_lIIiiI[909370254],
                                                   SynapseXen_iiillI[661910164] or
                                                       (function()
                                    local SynapseXen_iiIiIii =
                                        "what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"
                                    SynapseXen_iiillI[661910164] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                2029242804, 194959035),
                                            SynapseXen_iIliiIIlIll(1709785169,
                                                                   SynapseXen_ilIiII[5])) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            3612275218, 2621320939, 3125429826,
                                            3981792373, 1581263933, 745007138,
                                            2780674453
                                        }
                                    return SynapseXen_iiillI[661910164]
                                end)(), 256), SynapseXen_liIlIlIiiIIii, 256)
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[3619910615] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "now comes with a free n word pass"
                                SynapseXen_iiillI[3619910615] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2636527193,
                                                                  1367264658),
                                        SynapseXen_iIliiIIlIll(3672056400,
                                                               SynapseXen_ilIiII[5])) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{885949748}
                                return SynapseXen_iiillI[3619910615]
                            end)())
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[2893823347] or
                                                   (function()
                                local SynapseXen_iiIiIii = "wally bad bird"
                                SynapseXen_iiillI[2893823347] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2188455401,
                                                                  1711412538),
                                        SynapseXen_iIliiIIlIll(1149102434,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        390039603, 4286260091, 161083166,
                                        499665687, 3998339961, 833234176,
                                        2845597133, 517134186, 3949359496
                                    }
                                return SynapseXen_iiillI[2893823347]
                            end)())
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                        1] = SynapseXen_ilillliilIiiiIilIi;
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI] =
                        SynapseXen_ilillliilIiiiIilIi[SynapseXen_IIiiiiliiIiiilliiIIl]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1927636926] or (function(...)
                        local SynapseXen_iiIiIii =
                            "hi xen crashes on my axon paste plz help"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(2505250474, 2396736919)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(1746280997,
                                                              1746227070)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl -
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[1927636926] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(3828600371,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(3251393713,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                3709639870, 3103158185, 2371444395, 580522938,
                                166018716, 2227764928, 2716887120
                            }
                        return SynapseXen_iiillI[1927636926]
                    end)(6098, 14040, {}, "iIl", 225, "II", 5657, "ililIIlIiI",
                         {}, {})) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_IllillliiIl(SynapseXen_lIIiiI[909370254],
                                                   SynapseXen_iiillI[1673133796] or
                                                       (function()
                                    local SynapseXen_iiIiIii =
                                        "i put more time into this shitty list of dead memes then i did into the obfuscator itself"
                                    SynapseXen_iiillI[1673133796] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                2303951998, 3940562754),
                                            SynapseXen_iIliiIIlIll(3283932128,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            94798182, 3018957619, 797063715,
                                            399067228, 3963863945, 3685916799,
                                            2710942281, 2632112872, 3651600381,
                                            2989897220
                                        }
                                    return SynapseXen_iiillI[1673133796]
                                end)(), 256), SynapseXen_liIlIlIiiIIii, 256)
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[1881376197] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "now with shitty xor string obfuscation"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(181183196,
                                                              435587216)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(110021503,
                                                                      109953191)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[1881376197] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(2097034100,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3486026638,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill - #{
                                        3455162461, 3222523214, 1880798228,
                                        865768533, 1593356924, 1023038380,
                                        3459368799, 2749352720, 2320918699,
                                        3451564208
                                    }
                                return SynapseXen_iiillI[1881376197]
                            end)(13743, {}, 195, {}, "IillIii", {}, 10018,
                                 "iliIillll"), 512)
                    local SynapseXen_iIiiiliIliiilillIiil, SynapseXen_IIlIiill =
                        SynapseXen_lllIII, SynapseXen_lIIiilIIliIIiI;
                    SynapseXen_liillliiliiIlI =
                        SynapseXen_llIilIiliIliIlIlIilI - 1;
                    for SynapseXen_IiIilIiIIliiiil = SynapseXen_llIilIiliIliIlIlIilI, SynapseXen_llIilIiliIliIlIlIilI +
                        (SynapseXen_ilillliilIiiiIilIi > 0 and
                            SynapseXen_ilillliilIiiiIilIi - 1 or
                            SynapseXen_IIliiIllI) do
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil] =
                            SynapseXen_IIlIiill[SynapseXen_IiIilIiIIliiiil -
                                SynapseXen_llIilIiliIliIlIlIilI]
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4188798486] or (function(...)
                        local SynapseXen_iiIiIii =
                            "this is so sad, alexa play ripull.mp4"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(2155058643, 3631583015)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(4025055414,
                                                              4025035459)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[4188798486] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(3260803448,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(2754275281,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) - #{1826318166}
                        return SynapseXen_iiillI[4188798486]
                    end)({}, "lllIllili", "iIiillI", 11135, {})) then
                    SynapseXen_iIIIIIil =
                        SynapseXen_iIIIIIil + SynapseXen_lIIiiI[1300471799]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4044503544] or (function()
                        local SynapseXen_iiIiIii =
                            "wow xen is shit buy luraph ok"
                        SynapseXen_iiillI[4044503544] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(3039917541, 3207871366),
                                SynapseXen_iIliiIIlIll(879920561,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                4071595913, 4139668074, 506526192, 1995122912,
                                3060495312, 3674601260, 3652583638, 3837169988,
                                3490858892
                            }
                        return SynapseXen_iiillI[4044503544]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[2545379456] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "level 1 crook = luraph, level 100 boss = xen"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(3678263227,
                                                              2157058172)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(829837972,
                                                                      829765762)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2545379456] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(293307058,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3938737424,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        1327942600, 2177670977, 3281174567,
                                        1187644053, 2433063578, 1821218727,
                                        3949394554, 2592941751, 1053190118,
                                        1008831952
                                    }
                                return SynapseXen_iiillI[2545379456]
                            end)(1974, "liIIlIIliliIlIili", {}, 9953,
                                 "liilililllliIlIIi", "ilillliiIllIIill", 229,
                                 9348), 256) ~= 0;
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[3234693360] or
                                                   (function()
                                local SynapseXen_iiIiIii = "epic gamer vision"
                                SynapseXen_iiillI[3234693360] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(1607820461,
                                                                  4107751066),
                                        SynapseXen_iIliiIIlIll(185441145,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        3064936283, 3637343301, 3326515635,
                                        3573910845, 504533728, 4182809876,
                                        4018684808, 851164920, 3650489437,
                                        3783961319
                                    }
                                return SynapseXen_iiillI[3234693360]
                            end)())
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1617625881],
                                SynapseXen_iiillI[2017280448] or (function()
                                    local SynapseXen_iiIiIii = "wally bad bird"
                                    SynapseXen_iiillI[2017280448] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(668140525,
                                                                      92487239),
                                            SynapseXen_iIliiIIlIll(3450262356,
                                                                   SynapseXen_ilIiII[4])) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            1629882875, 2410226330, 3403391147,
                                            2051695236, 1210877939, 2059341013,
                                            2900703692
                                        }
                                    return SynapseXen_iiillI[2017280448]
                                end)()), SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    if SynapseXen_ilillliilIiiiIilIi ==
                        SynapseXen_IIiiiiliiIiiilliiIIl ~=
                        SynapseXen_llIilIiliIliIlIlIilI then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1779886182] or (function(...)
                        local SynapseXen_iiIiIii =
                            "SECURE API, IMPOSSIBLE TO BYPASS!"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(3315164, 3693935924)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(3496361228,
                                                              3496308822)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl -
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[1779886182] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(677378854,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(865873423,
                                                       SynapseXen_ilIiII[2])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                2727879595, 1359290799, 3016954614, 3817603310,
                                3976740282, 1535982951, 4024980928
                            }
                        return SynapseXen_iiillI[1779886182]
                    end)(12537)) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[909370254],
                                                SynapseXen_iiillI[702731916] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"
                                SynapseXen_iiillI[702731916] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(862672956,
                                                                  1583622842),
                                        SynapseXen_iIliiIIlIll(2072673108,
                                                               SynapseXen_ilIiII[5])) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        1807215737, 3387059338, 3855972905,
                                        3372491691, 2408515406, 2013006729,
                                        3311722192, 3680764908
                                    }
                                return SynapseXen_iiillI[702731916]
                            end)(), 256)
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[1576999008] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "skisploit is the superior obfuscator, clearly."
                                SynapseXen_iiillI[1576999008] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(584451996,
                                                                  1814956580),
                                        SynapseXen_iIliiIIlIll(1888241349,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            3274789641, 2101429048, 1397109319,
                                            1160326423, 3409316228, 824608587
                                        }
                                return SynapseXen_iiillI[1576999008]
                            end)(), 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_IllillliiIl(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1617625881],
                                SynapseXen_iiillI[294049613] or (function()
                                    local SynapseXen_iiIiIii =
                                        "thats how mafia works"
                                    SynapseXen_iiillI[294049613] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                4223087816, 1662801531),
                                            SynapseXen_iIliiIIlIll(2196223627,
                                                                   SynapseXen_ilIiII[3])) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            2263099022, 394037066, 422933820,
                                            1441048248, 3466223241, 1328974097,
                                            2652349526, 2708806853, 3963100897,
                                            1062246783
                                        }
                                    return SynapseXen_iiillI[294049613]
                                end)()), SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_IIiiiiliiIiiilliiIIl == 0 then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1;
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_ilIIlIIii[SynapseXen_iIIIIIil][103297735]
                    end
                    local SynapseXen_lilliiIii =
                        (SynapseXen_IIiiiiliiIiiilliiIIl - 1) * 50;
                    local SynapseXen_IlliliilliiIll =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI]
                    if SynapseXen_ilillliilIiiiIilIi == 0 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_liillliiliiIlI -
                                SynapseXen_llIilIiliIliIlIlIilI
                    end
                    for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_ilillliilIiiiIilIi do
                        SynapseXen_IlliliilliiIll[SynapseXen_lilliiIii +
                            SynapseXen_IiIilIiIIliiiil] =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                SynapseXen_IiIilIiIIliiiil]
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[4267294943] or (function(...)
                        local SynapseXen_iiIiIii =
                            "https://twitter.com/Ripull_RBLX/status/1059334518581145603"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(2621449952, 2244521439)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(2487363844,
                                                              2487305111)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl -
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[4267294943] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(2200750040,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(987074406,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                108552673, 1091294048, 1943879400, 3009440132,
                                424898006, 2816772858, 3579398873, 2300250723,
                                1552429868
                            }
                        return SynapseXen_iiillI[4267294943]
                    end)("llliiIIIlllliili", {}, "IIilIiiiIlllIil", {}, {},
                         "iIlIIil", {}, 10503, "IiIlii", {})) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[70359698] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "now with shitty xor string obfuscation"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(4182611046,
                                                              3315260932)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                2029150839, 2029137786)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[70359698] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(3967919509,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3995130492,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill -
                                        #{
                                            1969163821, 3972876468, 1033382713,
                                            270292668
                                        }
                                return SynapseXen_iiillI[70359698]
                            end)({}, {}, "IIiIlIili", {}, 2963, "ilIillIIlIil",
                                 {}, 14101, "IiiIliIlIIiiIiIiii"))
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1617625881],
                                                SynapseXen_iiillI[34178209] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1795540782,
                                                              2863900095)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1562119481, 1562084206)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[34178209] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(974939470,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3789823726,
                                                               SynapseXen_ilIiII[3])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            52450277, 493607153, 2943977461,
                                            1671709562, 839697755, 387976177,
                                            2976243909
                                        }
                                return SynapseXen_iiillI[34178209]
                            end)(3230), 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[145078663] or (function()
                            local SynapseXen_iiIiIii = "yed"
                            SynapseXen_iiillI[145078663] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(1646120417,
                                                              3833506461),
                                    SynapseXen_iIliiIIlIll(2431019042,
                                                           SynapseXen_ilIiII[5])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) - #{
                                    1922154015, 4166465009, 637841536,
                                    1849650275, 660377455, 3923409222,
                                    2749649427, 3182611336, 2484919970,
                                    1276376500
                                }
                            return SynapseXen_iiillI[145078663]
                        end)())] = SynapseXen_ilillliilIiiiIilIi -
                                       SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[3985708334] or (function(...)
                        local SynapseXen_iiIiIii =
                            "this is a christian obfuscator, no cursing allowed in our scripts"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(2981274664, 2209266766)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(2940555845,
                                                              2940493740)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[3985708334] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(2822198292,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(975560042,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{4105770804, 733166521}
                        return SynapseXen_iiillI[3985708334]
                    end)("I", "llilll", 4715, "illI", 13726, {}, 647, {},
                         "lIilliIil")) then
                    SynapseXen_lllIII[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[1420749403] or (function(...)
                            local SynapseXen_iiIiIii =
                                "this is so sad, alexa play ripull.mp4"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(868699023, 3724465252)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(720141962,
                                                                  720122178)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl +
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[1420749403] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(2359526913,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(3264603352,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill - #{3849673945}
                            return SynapseXen_iiillI[1420749403]
                        end)({}, {}))] =
                        SynapseXen_lllIII[SynapseXen_iIliiIIlIll(
                            SynapseXen_lIIiiI[1776583566],
                            SynapseXen_iiillI[3007678761] or (function()
                                local SynapseXen_iiIiIii =
                                    "hi xen doesn't work on sk8r please help"
                                SynapseXen_iiillI[3007678761] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(252457413,
                                                                  700512362),
                                        SynapseXen_iIliiIIlIll(1015287110,
                                                               SynapseXen_ilIiII[3])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{4190031040}
                                return SynapseXen_iiillI[3007678761]
                            end)())]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[595945334] or (function(...)
                        local SynapseXen_iiIiIii =
                            "xen doesn't come with instance caching, sorry superskater"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(1345892434, 3170556105)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(2071945684,
                                                              2071938165)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[595945334] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(1756073644,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(610783096,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                4189651224, 3550658240, 349699690, 3703376842,
                                3907722195, 426339145, 591862685, 1281038990
                            }
                        return SynapseXen_iiillI[595945334]
                    end)(3638, 7169, "iliiIlilIilll", 2343, {})) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[779852038] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(676959883,
                                                              2133570094)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1419772193, 1419742614)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[779852038] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(122075997,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(1849912236,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        4147236334, 3179347518, 1830122480,
                                        45617090, 111844990, 2931599705,
                                        3139477483, 511759839, 2760653489
                                    }
                                return SynapseXen_iiillI[779852038]
                            end)({}, "lillll", {}, "IilIiIiIIIl", "i"))
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1617625881],
                                                SynapseXen_iiillI[2315318019] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "sponsored by ironbrew, jk xen is better"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(1739991325,
                                                              3968790044)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(189385682,
                                                                      189323152)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2315318019] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(2445400522,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(4111315882,
                                                               SynapseXen_ilIiII[4])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill -
                                        #{
                                            3572950279, 272128594, 536579826,
                                            2685754759, 1867513890
                                        }
                                return SynapseXen_iiillI[2315318019]
                            end)({}, {}, "iiIlilIiIIliIiIIIl", "lilliiiiiiliIIl"),
                                                512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_lilliiIii =
                        SynapseXen_llIilIiliIliIlIlIilI + 2;
                    local SynapseXen_lililiIllIlliiliIl =
                        {
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI](
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                    1],
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                    2])
                        }
                    for SynapseXen_IiIilIiIIliiiil = 1, SynapseXen_IIiiiiliiIiiilliiIIl do
                        SynapseXen_lllIII[SynapseXen_lilliiIii +
                            SynapseXen_IiIilIiIIliiiil] =
                            SynapseXen_lililiIllIlliiliIl[SynapseXen_IiIilIiIIliiiil]
                    end
                    if SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                        3] ~= nil then
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                            2] =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                3]
                    else
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[200354322] or (function()
                        local SynapseXen_iiIiIii =
                            "pain exist is gonna connect the dots of xen"
                        SynapseXen_iiillI[200354322] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(4042537495, 2541635799),
                                SynapseXen_iIliiIIlIll(3347247999,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                4121326370, 3271428500, 2034202840, 3929932350,
                                2837973859, 2570858533, 649931946, 1338764274,
                                4119422513, 2891533942
                            }
                        return SynapseXen_iiillI[200354322]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[2588829005] or
                                                   (function(...)
                                local SynapseXen_iiIiIii =
                                    "imagine using some lua minifier tool and thinking you are a badass"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(552676273,
                                                              2542225395)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                3221169076, 3221114120)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2588829005] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(3645463779,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(3459351463,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill - #{
                                        364894605, 2014849185, 2476674440,
                                        3731882346, 330687643, 382547188,
                                        2849368602, 924092738
                                    }
                                return SynapseXen_iiillI[2588829005]
                            end)("i", 1099))
                    local SynapseXen_iliIIi = {}
                    for SynapseXen_IiIilIiIIliiiil = 1, #SynapseXen_lililili do
                        local SynapseXen_IiIiiilliiIiIIlii =
                            SynapseXen_lililili[SynapseXen_IiIilIiIIliiiil]
                        for SynapseXen_illIiilIiI = 0, #SynapseXen_IiIiiilliiIiIIlii do
                            local SynapseXen_IiiIilIiIIiilIl =
                                SynapseXen_IiIiiilliiIiIIlii[SynapseXen_illIiilIiI]
                            local SynapseXen_iIiiiliIliiilillIiil =
                                SynapseXen_IiiIilIiIIiilIl[1]
                            local SynapseXen_llIIi =
                                SynapseXen_IiiIilIiIIiilIl[2]
                            if SynapseXen_iIiiiliIliiilillIiil ==
                                SynapseXen_lllIII and SynapseXen_llIIi >=
                                SynapseXen_llIilIiliIliIlIlIilI then
                                SynapseXen_iliIIi[SynapseXen_llIIi] =
                                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIIi]
                                SynapseXen_IiiIilIiIIiilIl[1] =
                                    SynapseXen_iliIIi
                            end
                        end
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1508972779] or (function(...)
                        local SynapseXen_iiIiIii =
                            "now with shitty xor string obfuscation"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(1203064705, 62615007)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(789277919,
                                                              789258405)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[1508972779] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(1050964778,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(1155306162,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{57217000, 3630151773, 2959534425}
                        return SynapseXen_iiillI[1508972779]
                    end)({})) then
                    if SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1786993118],
                                              SynapseXen_iiillI[125078388] or
                                                  (function()
                            local SynapseXen_iiIiIii =
                                "i put more time into this shitty list of dead memes then i did into the obfuscator itself"
                            SynapseXen_iiillI[125078388] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(891376757,
                                                              3351614541),
                                    SynapseXen_iIliiIIlIll(487788432,
                                                           SynapseXen_ilIiII[4])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{
                                        2911201984, 3174769667, 3442635667,
                                        1089031493, 1555957185, 1947764625
                                    }
                            return SynapseXen_iiillI[125078388]
                        end)(), 262144) ==
                        (SynapseXen_iiillI[3142095985] or (function()
                            local SynapseXen_iiIiIii = "yed"
                            SynapseXen_iiillI[3142095985] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(1360065615,
                                                              715948741),
                                    SynapseXen_iIliiIIlIll(1832473907,
                                                           SynapseXen_ilIiII[5])) -
                                    string.len(SynapseXen_iiIiIii) - #{
                                    3273294446, 1277333586, 4010735882,
                                    1000004426, 2670678828, 1658722910,
                                    3813807969, 3261684797, 2369434756,
                                    2020013034
                                }
                            return SynapseXen_iiillI[3142095985]
                        end)()) then
                        SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                            SynapseXen_lIIiiI[909370254],
                            SynapseXen_iiillI[3066423407] or (function()
                                local SynapseXen_iiIiIii =
                                    "sponsored by ironbrew, jk xen is better"
                                SynapseXen_iiillI[3066423407] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(13527111,
                                                                  1021619692),
                                        SynapseXen_iIliiIIlIll(3554449476,
                                                               SynapseXen_ilIiII[4])) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        3297821667, 3979487114, 1051853076,
                                        2181686979, 3676995893, 4258969706,
                                        3198779315, 3333470775, 1457071923,
                                        4224115361
                                    }
                                return SynapseXen_iiillI[3066423407]
                            end)(), 256)] = SynapseXen_iIiiIlilll
                    else
                        SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                            SynapseXen_lIIiiI[909370254],
                            SynapseXen_iiillI[3066423407] or (function()
                                local SynapseXen_iiIiIii =
                                    "sponsored by ironbrew, jk xen is better"
                                SynapseXen_iiillI[3066423407] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(13527111,
                                                                  1021619692),
                                        SynapseXen_iIliiIIlIll(3554449476,
                                                               SynapseXen_ilIiII[4])) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        3297821667, 3979487114, 1051853076,
                                        2181686979, 3676995893, 4258969706,
                                        3198779315, 3333470775, 1457071923,
                                        4224115361
                                    }
                                return SynapseXen_iiillI[3066423407]
                            end)(), 256)] =
                            SynapseXen_ilIiII[SynapseXen_IllillliiIl(
                                SynapseXen_lIIiiI[1786993118],
                                SynapseXen_iiillI[125078388] or (function()
                                    local SynapseXen_iiIiIii =
                                        "i put more time into this shitty list of dead memes then i did into the obfuscator itself"
                                    SynapseXen_iiillI[125078388] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(891376757,
                                                                      3351614541),
                                            SynapseXen_iIliiIIlIll(487788432,
                                                                   SynapseXen_ilIiII[4])) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) -
                                            #{
                                                2911201984, 3174769667,
                                                3442635667, 1089031493,
                                                1555957185, 1947764625
                                            }
                                    return SynapseXen_iiillI[125078388]
                                end)(), 262144)]
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2046684063] or (function()
                        local SynapseXen_iiIiIii =
                            "can we have an f in chat for ripull"
                        SynapseXen_iiillI[2046684063] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(2806243644, 2907819350),
                                SynapseXen_iIliiIIlIll(479466653,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    1054864166, 1636052813, 2682752993,
                                    2276696439, 749194127, 2718216177
                                }
                        return SynapseXen_iiillI[2046684063]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[909370254],
                                                SynapseXen_iiillI[1528019777] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"
                                SynapseXen_iiillI[1528019777] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2189736637,
                                                                  2693617471),
                                        SynapseXen_iIliiIIlIll(2181462738,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{889186768, 1792920475, 3864330739}
                                return SynapseXen_iiillI[1528019777]
                            end)(), 256), SynapseXen_liIlIlIiiIIii, 256)] = {}
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1911969298] or (function()
                        local SynapseXen_iiIiIii = "thats how mafia works"
                        SynapseXen_iiillI[1911969298] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(2914196546, 394313024),
                                SynapseXen_iIliiIIlIll(440181148,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{3574105190, 127412007, 77025218}
                        return SynapseXen_iiillI[1911969298]
                    end)()) then
                    SynapseXen_IlillliIIilIlI[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[1776583566],
                        SynapseXen_iiillI[3557363805] or (function(...)
                            local SynapseXen_iiIiIii =
                                "aspect network better obfuscator"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(2707715183, 334251577)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(2436488140,
                                                                  2436474632)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl -
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[3557363805] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(2899965974,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(4054307896,
                                                           SynapseXen_ilIiII[4])) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill -
                                    #{2920485029, 583725736}
                            return SynapseXen_iiillI[3557363805]
                        end)({}))] = SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                                         SynapseXen_lIIiiI[909370254],
                                         SynapseXen_iiillI[3344712626] or
                                             (function()
                                local SynapseXen_iiIiIii = "hi devforum"
                                SynapseXen_iiillI[3344712626] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(1446157260,
                                                                  1216834385),
                                        SynapseXen_iIliiIIlIll(4047744186,
                                                               SynapseXen_ilIiII[4])) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            1952771960, 2064706760, 3993933636,
                                            812823329
                                        }
                                return SynapseXen_iiillI[3344712626]
                            end)(), 256)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1499830307] or (function()
                        local SynapseXen_iiIiIii =
                            "pain is gonna use the backspace method on xen"
                        SynapseXen_iiillI[1499830307] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1483576139, 4292799086),
                                SynapseXen_iIliiIIlIll(2579920103,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) - #{435857347}
                        return SynapseXen_iiillI[1499830307]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_iIliiIIlIll(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[191132464] or (function()
                            local SynapseXen_iiIiIii =
                                "https://twitter.com/Ripull_RBLX/status/1059334518581145603"
                            SynapseXen_iiillI[191132464] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(3948859513,
                                                              2499682894),
                                    SynapseXen_iIliiIIlIll(3750761402,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{3839466421}
                            return SynapseXen_iiillI[191132464]
                        end)())] = -SynapseXen_lllIII[SynapseXen_IllillliiIl(
                                       SynapseXen_iIliiIIlIll(
                                           SynapseXen_lIIiiI[1776583566],
                                           SynapseXen_iiillI[3143936441] or
                                               (function()
                                    local SynapseXen_iiIiIii =
                                        "wow xen is shit buy luraph ok"
                                    SynapseXen_iiillI[3143936441] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                2775343050, 2865396948),
                                            SynapseXen_iIliiIIlIll(2947132406,
                                                                   SynapseXen_iIiiIlilll)) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) -
                                            #{288630655}
                                    return SynapseXen_iiillI[3143936441]
                                end)()), SynapseXen_liIlIlIiiIIii, 512)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[493601938] or (function()
                        local SynapseXen_iiIiIii =
                            "SECURE API, IMPOSSIBLE TO BYPASS!"
                        SynapseXen_iiillI[493601938] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(2552690324, 3196626092),
                                SynapseXen_iIliiIIlIll(1021339371,
                                                       SynapseXen_ilIiII[3])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1501400291, 4186650405, 2879500413, 2593596454,
                                2228687988, 3578398677, 588495001, 3611248976
                            }
                        return SynapseXen_iiillI[493601938]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[2137511840] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "hi xen crashes on my axon paste plz help"
                                SynapseXen_iiillI[2137511840] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(904312381,
                                                                  2671789681),
                                        SynapseXen_iIliiIIlIll(2496743717,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{1075936081, 4110731815, 2684481574}
                                return SynapseXen_iiillI[2137511840]
                            end)(), 256) ~= 0;
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1776583566],
                                                SynapseXen_iiillI[3106620902] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "pain exist is gonna connect the dots of xen"
                                SynapseXen_iiillI[3106620902] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(426741143,
                                                                  4188129102),
                                        SynapseXen_iIliiIIlIll(1086536142,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            1333690244, 1950337933, 2506591915,
                                            728565965, 238009206
                                        }
                                return SynapseXen_iiillI[3106620902]
                            end)(), 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[3592721855] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "now with shitty xor string obfuscation"
                                SynapseXen_iiillI[3592721855] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2499601572,
                                                                  145474961),
                                        SynapseXen_iIliiIIlIll(1012923967,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        4146400826, 3854687138, 2676966877,
                                        2530588854, 2406613134, 2123061391,
                                        3305326341
                                    }
                                return SynapseXen_iiillI[3592721855]
                            end)(), 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    if SynapseXen_ilillliilIiiiIilIi <
                        SynapseXen_IIiiiiliiIiiilliiIIl ~=
                        SynapseXen_llIilIiliIliIlIlIilI then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[572210195] or (function()
                        local SynapseXen_iiIiIii =
                            "i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."
                        SynapseXen_iiillI[572210195] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1127576782, 3275177658),
                                SynapseXen_iIliiIIlIll(537762627,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{2351227915}
                        return SynapseXen_iiillI[572210195]
                    end)()) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1776583566],
                                               SynapseXen_iiillI[3689788436] or
                                                   (function(...)
                                local SynapseXen_iiIiIii = "epic gamer vision"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(2954839459,
                                                              301903867)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                2311461645, 2311408122)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl +
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[3689788436] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(3742212826,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(2435086500,
                                                               SynapseXen_ilIiII[4])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill -
                                        #{216331552, 874560061, 2697223447}
                                return SynapseXen_iiillI[3689788436]
                            end)({}, "I", {}))
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[2251940225] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "SECURE API, IMPOSSIBLE TO BYPASS!"
                                SynapseXen_iiillI[2251940225] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(1770561671,
                                                                  33481242),
                                        SynapseXen_iIliiIIlIll(3363364828,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        2862599259, 3824669256, 146014944,
                                        1185780959, 2488254951, 440828172,
                                        549300425, 2366869154
                                    }
                                return SynapseXen_iiillI[2251940225]
                            end)())
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[746131507] or (function(...)
                            local SynapseXen_iiIiIii =
                                "aspect network better obfuscator"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(1884189599, 1266611508)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(2251909084,
                                                                  2251889363)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl +
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[746131507] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(2634323794,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(1642677004,
                                                           SynapseXen_ilIiII[2])) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill -
                                    #{
                                        450154503, 813078805, 2598106582,
                                        1008182555, 1933447488, 1405494959
                                    }
                            return SynapseXen_iiillI[746131507]
                        end)(1562, "illlIiilllIi", {}), 256)] =
                        SynapseXen_ilillliilIiiiIilIi ^
                            SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2726522892] or (function()
                        local SynapseXen_iiIiIii =
                            "luraph better then xen bros :pensive:"
                        SynapseXen_iiillI[2726522892] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1990334048, 3612979091),
                                SynapseXen_iIliiIIlIll(33040321,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1952494389, 777334014, 562116356, 4223105539,
                                1328102095, 2972937099, 2379915016, 418940042
                            }
                        return SynapseXen_iiillI[2726522892]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[2014547571] or (function(...)
                            local SynapseXen_iiIiIii = "xen best rerubi paste"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(4038491022, 3475592070)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(2477261549,
                                                                  2477239127)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl +
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[2014547571] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(700246680,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(3056354877,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill -
                                    #{
                                        2271444184, 1139885176, 523180085,
                                        1837156197, 1950912515, 884104112
                                    }
                            return SynapseXen_iiillI[2014547571]
                        end)({}, {}), 256)] =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1776583566],
                                                SynapseXen_iiillI[2424955693] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(419450321,
                                                              2013473451)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                1158178952, 1158152928)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2424955693] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(4001005205,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(781060646,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill - #{3520506152}
                                return SynapseXen_iiillI[2424955693]
                            end)({}, 13595, {}, {}, {}, {}, {}, 8089), 512) ~= 0;
                    if SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1617625881],
                                              SynapseXen_iiillI[321813175] or
                                                  (function()
                            local SynapseXen_iiIiIii =
                                "i put more time into this shitty list of dead memes then i did into the obfuscator itself"
                            SynapseXen_iiillI[321813175] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(3820949731,
                                                              135659052),
                                    SynapseXen_iIliiIIlIll(73310493,
                                                           SynapseXen_ilIiII[4])) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) - #{
                                    2694212084, 1996379512, 72336822,
                                    2570554825, 1442085555, 2578874408,
                                    221425916, 2089895537, 2965287907,
                                    2030474248
                                }
                            return SynapseXen_iiillI[321813175]
                        end)(), 512) ~= 0 then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[3677113070] or (function()
                        local SynapseXen_iiIiIii =
                            "this is a christian obfuscator, no cursing allowed in our scripts"
                        SynapseXen_iiillI[3677113070] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(4247008643, 2578433725),
                                SynapseXen_iIliiIIlIll(3298602711,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    1676528607, 2530689385, 709915686,
                                    3284975103, 3628804469, 4083897860
                                }
                        return SynapseXen_iiillI[3677113070]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[909370254],
                                                SynapseXen_iiillI[4043003871] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "skisploit is the superior obfuscator, clearly."
                                SynapseXen_iiillI[4043003871] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2770538277,
                                                                  371230755),
                                        SynapseXen_iIliiIIlIll(319682090,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{
                                            2786776896, 636664823, 3940470032,
                                            646488919
                                        }
                                return SynapseXen_iiillI[4043003871]
                            end)(), 256), SynapseXen_liIlIlIiiIIii, 256)] =
                        #SynapseXen_lllIII[SynapseXen_IllillliiIl(
                            SynapseXen_IllillliiIl(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[1087016205] or (function()
                                    local SynapseXen_iiIiIii =
                                        "imagine using some lua minifier tool and thinking you are a badass"
                                    SynapseXen_iiillI[1087016205] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                2332346518, 2226255618),
                                            SynapseXen_iIliiIIlIll(422618850,
                                                                   SynapseXen_ilIiII[5])) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) -
                                            #{
                                                3625801674, 4208605682,
                                                668272192, 2082801879, 424065923
                                            }
                                    return SynapseXen_iiillI[1087016205]
                                end)(), 512), SynapseXen_liIlIlIiiIIii, 512)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[52081773] or (function()
                        local SynapseXen_iiIiIii =
                            "SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"
                        SynapseXen_iiillI[52081773] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(2038428918, 3292645727),
                                SynapseXen_iIliiIIlIll(2880989053,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                846856141, 2857399073, 3898330419, 710863425,
                                1091877823, 3489228181, 3467475519, 1100985586
                            }
                        return SynapseXen_iiillI[52081773]
                    end)()) then
                    SynapseXen_lllIII[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[3129168751] or (function()
                            local SynapseXen_iiIiIii =
                                "sponsored by ironbrew, jk xen is better"
                            SynapseXen_iiillI[3129168751] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(2173352780,
                                                              1924010076),
                                    SynapseXen_iIliiIIlIll(1395407752,
                                                           SynapseXen_iIiiIlilll)) -
                                    SynapseXen_IiliiIiilIill -
                                    string.len(SynapseXen_iiIiIii) -
                                    #{
                                        2997373611, 1125168509, 1876786103,
                                        876193598, 1644739340, 3798811834
                                    }
                            return SynapseXen_iiillI[3129168751]
                        end)(), 256)] =
                        SynapseXen_iiIiiiIiIiiII[SynapseXen_iIlIlI[SynapseXen_iIliiIIlIll(
                            SynapseXen_IllillliiIl(
                                SynapseXen_lIIiiI[1786993118],
                                SynapseXen_iiillI[3614410741] or (function(...)
                                    local SynapseXen_iiIiIii =
                                        "https://twitter.com/Ripull_RBLX/status/1059334518581145603"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(3525846274,
                                                                  1480827496)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    2644490434, 2644483330)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[3614410741] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(2422832268,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(3120579753,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) -
                                            SynapseXen_IiliiIiilIill -
                                            #{
                                                3026976677, 2935463647,
                                                2582161028, 1660462004,
                                                460758915
                                            }
                                    return SynapseXen_iiillI[3614410741]
                                end)(451, 5070, "IiIIillliiiIiiiliI", 9817, {},
                                     {}, {}, "IIiiIIIiIllilllIil", 3493), 262144),
                            SynapseXen_liIlIlIiiIIii)]]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1522158606] or (function(...)
                        local SynapseXen_iiIiIii =
                            "hi my 2.5mb script doesn't work with xen please help"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(227508332, 1886720295)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(4051828149,
                                                              4051807322)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[1522158606] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(1004964202,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(1352265646,
                                                       SynapseXen_ilIiII[5])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{1447606521, 198872}
                        return SynapseXen_iiillI[1522158606]
                    end)(6822, {})) then
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIIlIlliIliI(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[326698105] or (function()
                                    local SynapseXen_iiIiIii =
                                        "thats how mafia works"
                                    SynapseXen_iiillI[326698105] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                1355193991, 510497577),
                                            SynapseXen_iIliiIIlIll(2707244567,
                                                                   SynapseXen_ilIiII[4])) -
                                            SynapseXen_IiliiIiilIill -
                                            string.len(SynapseXen_iiIiIii) -
                                            #{
                                                153997148, 2316926977,
                                                2731401574, 825374106,
                                                2274878012
                                            }
                                    return SynapseXen_iiillI[326698105]
                                end)(), 512), SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_liIliiIiiliIlll =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    for SynapseXen_IiIilIiIIliiiil = SynapseXen_ilillliilIiiiIilIi +
                        1, SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                                  SynapseXen_iiillI[3159433972] or
                                                      (function(...)
                            local SynapseXen_iiIiIii =
                                "sometimes it be like that"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(2037567718, 3275108422)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(788030446,
                                                                  788018091)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl +
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[3159433972] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(3023676165,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(2926949142,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill -
                                    #{
                                        1655997409, 2726482294, 2532726524,
                                        861048326, 1517305329
                                    }
                            return SynapseXen_iiillI[3159433972]
                        end)("iIIIlillIiii", 4224)) do
                        SynapseXen_liIliiIiiliIlll =
                            SynapseXen_liIliiIiiliIlll ..
                                SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil]
                    end
                    SynapseXen_lllIII[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[4005480140] or (function(...)
                            local SynapseXen_iiIiIii =
                                "HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(3680263828, 4032609388)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(1563532700,
                                                                  1563524724)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl -
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[4005480140] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(4249227193,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(2008443559,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill - #{
                                    1802961511, 2004568906, 2374768045,
                                    3730611120, 2727115718, 34466491,
                                    1995325446, 1487658627
                                }
                            return SynapseXen_iiillI[4005480140]
                        end)("iIIllilIll", 8319, 9449, 10938, {}, {}, {},
                             "IlIiiIlIlll"), 256)] = SynapseXen_liIliiIiiliIlll
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1454317037] or (function()
                        local SynapseXen_iiIiIii =
                            "sponsored by ironbrew, jk xen is better"
                        SynapseXen_iiillI[1454317037] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(3333435388, 3529768498),
                                SynapseXen_iIliiIIlIll(3541461255,
                                                       SynapseXen_ilIiII[2])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1046098789, 1912663687, 1802490923, 1950500574,
                                1629122017, 3908963528, 2000820675
                            }
                        return SynapseXen_iiillI[1454317037]
                    end)()) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIliiIIlIll(
                            SynapseXen_IllillliiIl(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[3977026417] or (function()
                                    local SynapseXen_iiIiIii =
                                        "i put more time into this shitty list of dead memes then i did into the obfuscator itself"
                                    SynapseXen_iiillI[3977026417] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_lliiiIiIIIlilI(
                                                1211259089, 3167973501),
                                            SynapseXen_iIliiIIlIll(3798217418,
                                                                   SynapseXen_ilIiII[5])) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            2763327793, 4247789243, 2699654519,
                                            3722728021, 4205802907, 1738701753,
                                            4261951331, 3571130306, 2162818440,
                                            1010872510
                                        }
                                    return SynapseXen_iiillI[3977026417]
                                end)(), 512), SynapseXen_liIlIlIiiIIii)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[1617625881],
                                               SynapseXen_iiillI[3316521882] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "https://twitter.com/Ripull_RBLX/status/1059334518581145603"
                                SynapseXen_iiillI[3316521882] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(2329255125,
                                                                  2450870586),
                                        SynapseXen_iIliiIIlIll(3100596982,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) - #{
                                        3048180011, 241702476, 3045680135,
                                        694541886, 2441046559, 3296198434,
                                        2084356768
                                    }
                                return SynapseXen_iiillI[3316521882]
                            end)())
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[3482113991] or (function(...)
                            local SynapseXen_iiIiIii = "xen best rerubi paste"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(2909297731, 2611322732)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(3850804683,
                                                                  3850754650)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl -
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[3482113991] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(1397879493,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(2144520898,
                                                           SynapseXen_ilIiII[3])) -
                                    string.len(SynapseXen_iiIiIii) -
                                    SynapseXen_IiliiIiilIill -
                                    #{
                                        2797963986, 1358636942, 3290156967,
                                        167403664, 2182614080
                                    }
                            return SynapseXen_iiillI[3482113991]
                        end)({}), 256)] =
                        SynapseXen_ilillliilIiiiIilIi +
                            SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[361201953] or (function()
                        local SynapseXen_iiIiIii =
                            "SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"
                        SynapseXen_iiillI[361201953] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(4151175021, 1055926708),
                                SynapseXen_iIliiIIlIll(1771200138,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) - #{
                                3927213083, 4005107826, 477559146, 2540635512,
                                816876653, 4293617740, 3420010868
                            }
                        return SynapseXen_iiillI[361201953]
                    end)()) then
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_IllillliiIl(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[937429640] or (function(...)
                                    local SynapseXen_iiIiIii =
                                        "double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(3553753344,
                                                                  1132652334)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    3549598470, 3549562169)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[937429640] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(1429149619,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(1701990560,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) -
                                            SynapseXen_IiliiIiilIill - #{
                                            2268473195, 819457650, 1472424080,
                                            1331350921, 1972771059, 4283822194,
                                            3791838441, 3635315837, 2561967500,
                                            3069003495
                                        }
                                    return SynapseXen_iiillI[937429640]
                                end)("I", 2159, {}, 8210, 5091,
                                     "IIlliiIilililIIiIll", "illliIlIll")),
                            SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_IIiiiiliiIiiilliiIIl =
                        SynapseXen_iIIlIlliIliI(SynapseXen_lIIiiI[1617625881],
                                                SynapseXen_iiillI[3651314211] or
                                                    (function()
                                local SynapseXen_iiIiIii =
                                    "SECURE API, IMPOSSIBLE TO BYPASS!"
                                SynapseXen_iiillI[3651314211] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(1124727488,
                                                                  2956859664),
                                        SynapseXen_iIliiIIlIll(1396220039,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{645303074, 1490892074}
                                return SynapseXen_iiillI[3651314211]
                            end)(), 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    if SynapseXen_ilillliilIiiiIilIi > 255 then
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIlIlI[SynapseXen_ilillliilIiiiIilIi -
                                256]
                    else
                        SynapseXen_ilillliilIiiiIilIi =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_ilillliilIiiiIilIi]
                    end
                    if SynapseXen_IIiiiiliiIiiilliiIIl > 255 then
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIlIlI[SynapseXen_IIiiiiliiIiiilliiIIl -
                                256]
                    else
                        SynapseXen_IIiiiiliiIiiilliiIIl =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IIiiiiliiIiiilliiIIl]
                    end
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[3949316194] or (function()
                            local SynapseXen_iiIiIii =
                                "hi xen doesn't work on sk8r please help"
                            SynapseXen_iiillI[3949316194] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_lliiiIiIIIlilI(2224282012,
                                                              124081677),
                                    SynapseXen_iIliiIIlIll(603594519,
                                                           SynapseXen_iIiiIlilll)) -
                                    string.len(SynapseXen_iiIiIii) - #{
                                    752290749, 1930769363, 3594916044,
                                    3052066607, 3639405610, 1941279274,
                                    1830585680, 1520410778, 2076408710
                                }
                            return SynapseXen_iiillI[3949316194]
                        end)(), 256)] = SynapseXen_ilillliilIiiiIilIi *
                                            SynapseXen_IIiiiiliiIiiilliiIIl
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[3578318333] or (function(...)
                        local SynapseXen_iiIiIii =
                            "pain exist is gonna connect the dots of xen"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(1847112901, 1452959408)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(2734898002,
                                                              2734845288)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[3578318333] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(3637107384,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(1078241779,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{3002005988, 3288421450, 626393181, 228637325}
                        return SynapseXen_iiillI[3578318333]
                    end)({})) then
                    if not not SynapseXen_lllIII[SynapseXen_IllillliiIl(
                        SynapseXen_lIIiiI[909370254],
                        SynapseXen_iiillI[3668691452] or (function(...)
                            local SynapseXen_iiIiIii =
                                "HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"
                            local SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_lliiiIiIIIlilI(3411944615, 330286082)
                            local SynapseXen_iliiII = {...}
                            for SynapseXen_iiIII, SynapseXen_Iilll in
                                pairs(SynapseXen_iliiII) do
                                local SynapseXen_IlIIlliiIliI;
                                local SynapseXen_iiliIliiIllIlIiilIii =
                                    type(SynapseXen_Iilll)
                                if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                    SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "string" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_Iilll:len()
                                elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                    "table" then
                                    SynapseXen_IlIIlliiIliI =
                                        SynapseXen_lliiiIiIIIlilI(2997365884,
                                                                  2997292612)
                                end
                                SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_iIIliiIIlllIiliIIl +
                                        SynapseXen_IlIIlliiIliI
                            end
                            SynapseXen_iiillI[3668691452] =
                                SynapseXen_iIliiIIlIll(
                                    SynapseXen_iIliiIIlIll(1659064857,
                                                           SynapseXen_iIIliiIIlllIiliIIl),
                                    SynapseXen_iIliiIIlIll(1442531899,
                                                           SynapseXen_ilIiII[4])) -
                                    string.len(SynapseXen_iiIiIii) - #{
                                    1060904194, 285315023, 845630419,
                                    3627125063, 4005316203, 4217306342,
                                    4030779116, 1797057377, 263183100,
                                    4019449779
                                }
                            return SynapseXen_iiillI[3668691452]
                        end)(10773, 9136, "iIlIliII", 3205, {}, 4296, "IIllil",
                             "lIIII", "Ii", "iIlil"), 256)] ==
                        (SynapseXen_IllillliiIl(SynapseXen_lIIiiI[1617625881],
                                                SynapseXen_iiillI[2058555850] or
                                                    (function(...)
                                local SynapseXen_iiIiIii =
                                    "imagine using some lua minifier tool and thinking you are a badass"
                                local SynapseXen_iIIliiIIlllIiliIIl =
                                    SynapseXen_lliiiIiIIIlilI(953797943,
                                                              3124416205)
                                local SynapseXen_iliiII = {...}
                                for SynapseXen_iiIII, SynapseXen_Iilll in
                                    pairs(SynapseXen_iliiII) do
                                    local SynapseXen_IlIIlliiIliI;
                                    local SynapseXen_iiliIliiIllIlIiilIii =
                                        type(SynapseXen_Iilll)
                                    if SynapseXen_iiliIliiIllIlIiilIii ==
                                        "number" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "string" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_Iilll:len()
                                    elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                        "table" then
                                        SynapseXen_IlIIlliiIliI =
                                            SynapseXen_lliiiIiIIIlilI(
                                                4184456883, 4184402309)
                                    end
                                    SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_iIIliiIIlllIiliIIl -
                                            SynapseXen_IlIIlliiIliI
                                end
                                SynapseXen_iiillI[2058555850] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_iIliiIIlIll(2972530438,
                                                               SynapseXen_iIIliiIIlllIiliIIl),
                                        SynapseXen_iIliiIIlIll(230373556,
                                                               SynapseXen_ilIiII[1])) -
                                        string.len(SynapseXen_iiIiIii) -
                                        SynapseXen_IiliiIiilIill -
                                        #{3247576222, 3605116323, 1625146390}
                                return SynapseXen_iiillI[2058555850]
                            end)({}, "lIi", {}, {}, "iiiiilillilIIiIiiii", {},
                                 12896, "i"), 512) == 0) then
                        SynapseXen_iIIIIIil = SynapseXen_iIIIIIil + 1
                    end
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2266758096] or (function()
                        local SynapseXen_iiIiIii =
                            "level 1 crook = luraph, level 100 boss = xen"
                        SynapseXen_iiillI[2266758096] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(3171356214, 29169658),
                                SynapseXen_iIliiIIlIll(481576588,
                                                       SynapseXen_iIiiIlilll)) -
                                string.len(SynapseXen_iiIiIii) -
                                #{1546919762, 4089677477, 2921026671, 968045002}
                        return SynapseXen_iiillI[2266758096]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_iIliiIIlIll(SynapseXen_lIIiiI[909370254],
                                               SynapseXen_iiillI[2533947156] or
                                                   (function()
                                local SynapseXen_iiIiIii =
                                    "skisploit is the superior obfuscator, clearly."
                                SynapseXen_iiillI[2533947156] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(353598643,
                                                                  781688907),
                                        SynapseXen_iIliiIIlIll(2609622349,
                                                               SynapseXen_iIiiIlilll)) -
                                        SynapseXen_IiliiIiilIill -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{2457217483, 1197384597, 2400070750}
                                return SynapseXen_iiillI[2533947156]
                            end)())
                    local SynapseXen_ilillliilIiiiIilIi =
                        SynapseXen_iIIlIlliIliI(
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lIIiiI[1776583566],
                                SynapseXen_iiillI[1196552026] or (function(...)
                                    local SynapseXen_iiIiIii =
                                        "can we have an f in chat for ripull"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(3907667598,
                                                                  2209005627)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    2983891335, 2983861098)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl -
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[1196552026] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(2909717427,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(1713424947,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) - #{
                                            2177751202, 341398035, 451089984,
                                            3023224137, 1583445933, 877891505,
                                            2134835394, 3091783011
                                        }
                                    return SynapseXen_iiillI[1196552026]
                                end)("iiilili", 10591, 3627, {}, 2957, {}, "lI",
                                     14055, 11114, {})),
                            SynapseXen_liIlIlIiiIIii, 512)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    local SynapseXen_IlIiIIllIiiiiiIlil, SynapseXen_Illlli;
                    local SynapseXen_IiIiIIiIl;
                    if SynapseXen_ilillliilIiiiIilIi == 1 then
                        return
                    elseif SynapseXen_ilillliilIiiiIilIi == 0 then
                        SynapseXen_IiIiIIiIl = SynapseXen_liillliiliiIlI
                    else
                        SynapseXen_IiIiIIiIl =
                            SynapseXen_llIilIiliIliIlIlIilI +
                                SynapseXen_ilillliilIiiiIilIi - 2
                    end
                    SynapseXen_Illlli = {}
                    SynapseXen_IlIiIIllIiiiiiIlil = 0;
                    for SynapseXen_IiIilIiIIliiiil = SynapseXen_llIilIiliIliIlIlIilI, SynapseXen_IiIiIIiIl do
                        SynapseXen_IlIiIIllIiiiiiIlil =
                            SynapseXen_IlIiIIllIiiiiiIlil + 1;
                        SynapseXen_Illlli[SynapseXen_IlIiIIllIiiiiiIlil] =
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_IiIilIiIIliiiil]
                    end
                    return SynapseXen_Illlli, SynapseXen_IlIiIIllIiiiiiIlil
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[2658739086] or (function(...)
                        local SynapseXen_iiIiIii =
                            "now comes with a free n word pass"
                        local SynapseXen_iIIliiIIlllIiliIIl =
                            SynapseXen_lliiiIiIIIlilI(3841902991, 1452702870)
                        local SynapseXen_iliiII = {...}
                        for SynapseXen_iiIII, SynapseXen_Iilll in
                            pairs(SynapseXen_iliiII) do
                            local SynapseXen_IlIIlliiIliI;
                            local SynapseXen_iiliIliiIllIlIiilIii =
                                type(SynapseXen_Iilll)
                            if SynapseXen_iiliIliiIllIlIiilIii == "number" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "string" then
                                SynapseXen_IlIIlliiIliI = SynapseXen_Iilll:len()
                            elseif SynapseXen_iiliIliiIllIlIiilIii == "table" then
                                SynapseXen_IlIIlliiIliI =
                                    SynapseXen_lliiiIiIIIlilI(1358621950,
                                                              1358608060)
                            end
                            SynapseXen_iIIliiIIlllIiliIIl =
                                SynapseXen_iIIliiIIlllIiliIIl +
                                    SynapseXen_IlIIlliiIliI
                        end
                        SynapseXen_iiillI[2658739086] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_iIliiIIlIll(4273606416,
                                                       SynapseXen_iIIliiIIlllIiliIIl),
                                SynapseXen_iIliiIIlIll(1923438296,
                                                       SynapseXen_ilIiII[1])) -
                                string.len(SynapseXen_iiIiIii) -
                                #{
                                    1283788638, 3281840140, 2102245561,
                                    3861909759, 2698522848, 3382043685
                                }
                        return SynapseXen_iiillI[2658739086]
                    end)(5142, {}, "iIIiIIlIIiill")) then
                    SynapseXen_liIlIlIiiIIii =
                        SynapseXen_lllIII[SynapseXen_iIIlIlliIliI(
                            SynapseXen_lIIiiI[909370254],
                            SynapseXen_iiillI[1116720423] or (function()
                                local SynapseXen_iiIiIii =
                                    "aspect network better obfuscator"
                                SynapseXen_iiillI[1116720423] =
                                    SynapseXen_iIliiIIlIll(
                                        SynapseXen_lliiiIiIIIlilI(3605785222,
                                                                  1034960101),
                                        SynapseXen_iIliiIIlIll(1263867005,
                                                               SynapseXen_iIiiIlilll)) -
                                        string.len(SynapseXen_iiIiIii) -
                                        #{2719128139}
                                return SynapseXen_iiillI[1116720423]
                            end)(), 256)]
                elseif SynapseXen_IiliiIiilIill ==
                    (SynapseXen_iiillI[1834594209] or (function()
                        local SynapseXen_iiIiIii =
                            "double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"
                        SynapseXen_iiillI[1834594209] =
                            SynapseXen_iIliiIIlIll(
                                SynapseXen_lliiiIiIIIlilI(1992469452, 1283120073),
                                SynapseXen_iIliiIIlIll(4251190461,
                                                       SynapseXen_ilIiII[2])) -
                                string.len(SynapseXen_iiIiIii) - #{
                                1754326017, 1178880326, 3688562448, 544476494,
                                4046115588, 3160388761, 3446957935, 3179214930,
                                66913121, 2285028924
                            }
                        return SynapseXen_iiillI[1834594209]
                    end)()) then
                    local SynapseXen_llIilIiliIliIlIlIilI =
                        SynapseXen_IllillliiIl(
                            SynapseXen_IllillliiIl(SynapseXen_lIIiiI[909370254],
                                                   SynapseXen_iiillI[961806922] or
                                                       (function(...)
                                    local SynapseXen_iiIiIii =
                                        "HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"
                                    local SynapseXen_iIIliiIIlllIiliIIl =
                                        SynapseXen_lliiiIiIIIlilI(4255656167,
                                                                  2886284828)
                                    local SynapseXen_iliiII = {...}
                                    for SynapseXen_iiIII, SynapseXen_Iilll in
                                        pairs(SynapseXen_iliiII) do
                                        local SynapseXen_IlIIlliiIliI;
                                        local SynapseXen_iiliIliiIllIlIiilIii =
                                            type(SynapseXen_Iilll)
                                        if SynapseXen_iiliIliiIllIlIiilIii ==
                                            "number" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "string" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_Iilll:len()
                                        elseif SynapseXen_iiliIliiIllIlIiilIii ==
                                            "table" then
                                            SynapseXen_IlIIlliiIliI =
                                                SynapseXen_lliiiIiIIIlilI(
                                                    749401577, 749384540)
                                        end
                                        SynapseXen_iIIliiIIlllIiliIIl =
                                            SynapseXen_iIIliiIIlllIiliIIl +
                                                SynapseXen_IlIIlliiIliI
                                    end
                                    SynapseXen_iiillI[961806922] =
                                        SynapseXen_iIliiIIlIll(
                                            SynapseXen_iIliiIIlIll(2250902782,
                                                                   SynapseXen_iIIliiIIlllIiliIIl),
                                            SynapseXen_iIliiIIlIll(2005603631,
                                                                   SynapseXen_iIiiIlilll)) -
                                            string.len(SynapseXen_iiIiIii) -
                                            SynapseXen_IiliiIiilIill -
                                            #{162715288, 1540254499}
                                    return SynapseXen_iiillI[961806922]
                                end)({}, "liiIlIlIIiI", "I", {}, 12322,
                                     "IlIilll", {}, "i"), 256),
                            SynapseXen_liIlIlIiiIIii, 256)
                    local SynapseXen_iIiiiliIliiilillIiil = SynapseXen_lllIII;
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI] =
                        assert(tonumber(
                                   SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI]),
                               '`for` initial value must be a number')
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                        1] = assert(tonumber(
                                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                            1]), '`for` limit must be a number')
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                        2] = assert(tonumber(
                                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                            2]), '`for` step must be a number')
                    SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI] =
                        SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI] -
                            SynapseXen_iIiiiliIliiilillIiil[SynapseXen_llIilIiliIliIlIlIilI +
                                2]
                    SynapseXen_iIIIIIil =
                        SynapseXen_iIIIIIil + SynapseXen_lIIiiI[1300471799]
                end
            end
        end
        local SynapseXen_liIIIli = {...}
        for SynapseXen_IiIilIiIIliiiil = 0, SynapseXen_IIliiIllI do
            if SynapseXen_IiIilIiIIliiiil >=
                SynapseXen_IiliIIiIillIlll[1958689028] then
                SynapseXen_lIIiilIIliIIiI[SynapseXen_IiIilIiIIliiiil -
                    SynapseXen_IiliIIiIillIlll[1958689028]] =
                    SynapseXen_liIIIli[SynapseXen_IiIilIiIIliiiil + 1]
            else
                SynapseXen_lllIII[SynapseXen_IiIilIiIIliiiil] =
                    SynapseXen_liIIIli[SynapseXen_IiIilIiIIliiiil + 1]
            end
        end
        local SynapseXen_ilillliilIiiiIilIi, SynapseXen_IIiiiiliiIiiilliiIIl =
            SynapseXen_iilIIlliiIiIlIIIl()
        if SynapseXen_ilillliilIiiiIilIi and SynapseXen_IIiiiiliiIiiilliiIIl > 0 then
            return unpack(SynapseXen_ilillliilIiiiIilIi, 1,
                          SynapseXen_IIiiiiliiIiiilliiIIl)
        end
        return
    end
end
local function SynapseXen_llllIIIlIll(SynapseXen_lIIlIiIii,
                                      SynapseXen_iiIiiiIiIiiII)
    local SynapseXen_liilIiiIiIIilIliIlii =
        SynapseXen_lillilI(SynapseXen_lIIlIiIii)
    return SynapseXen_IiIil(SynapseXen_liilIiiIiIIilIliIlii,
                            SynapseXen_iiIiiiIiIiiII or getfenv(0)),
           SynapseXen_liilIiiIiIIilIliIlii
end
return SynapseXen_llllIIIlIll(SynapseXen_iIIliIiIiilllliIilli(
                                  "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"),
                              getfenv())()
