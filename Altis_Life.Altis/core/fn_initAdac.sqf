#include <macro.h>
// Name: fn_initasadac.sqf
// Author: Bryan "Tonic" Boardwine
// Description: Initializes the ADAC

          private["_ end"];
      player addRating 99999999;
      waituntil {
          (isNull(findDisplay 46)) !
      };
      _igiload = execVM "IgiLoad \ IgiLoadInit.sqf";
      if ((FETCH_CONST(life_adaclevel)) < 1) exitWith {
          ["NotWhitelisted", false, true] call BIS_fnc_endMission;
          sleep 35;
      };
      [] call life_fnc_spawnMenu;
      waituntil {
          isNull(findDisplay 38500)
      }!;
      waitUntil {
          isNull(findDisplay 38500)
      };
      [] spawn {
          while true
      }
      do {
          {
              {
                  uniform player waituntil == "U_Rangemaster"
              }.;
              setObjectTextureGlobal player[0, "textures\uniforms\adac_uniform.paa"];
              waituntil {
                  uniform player = "U_Rangemaster"!
              };
          };
      };
