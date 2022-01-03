import os
import re
startFile = "Section[1].asm"
workingFolder = "functions"
newFile = "Section[1]New.asm"
addr = 0x81075A2C
offset = 0
with open(newFile, "w") as new:
    with open(startFile, 'r') as section:
        lines = section.readlines()
        function = ""
        file = None
        for line in lines:
            if not line.startswith("    ") and not line.startswith("loc") and not line.startswith(".") and not line.startswith("\n"):
                try:
                    file.close()
                except Exception:
                    pass
                #print(line)
                
                new.write("#" + hex(offset) + " " + hex(addr + offset) + "\n")
                new.write(line)
                line = line[:-2]
                print(line)
                obj,command = line.split("__", 1)
                path = "/" + obj + "/"
                
                if not os.path.exists(workingFolder + path):
                    os.makedirs(workingFolder + path)

                path = path + "/" + command + ".asm"
                file = open(workingFolder + path, "w")
                new.write('.include "src/sora_menu_intro/functions' + path + '" \n\n')
                #print(workingFolder + path)
            else:
                if not line.startswith("loc"):
                    offset+=4
                file.write(line)
        file.close()
        
