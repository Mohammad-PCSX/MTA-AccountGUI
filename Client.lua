local Account = guiCreateWindow(0.25,0.25,0.5,0.5,"Account System",true)
local TAccount = guiCreateTabPanel(0,0.05,1,1,true,Account)
showCursor(true)

-----------------------------------------------------------Login
local Login = guiCreateTab("Login",TAccount)

guiCreateLabel(0.45,0.13,0.1,0.1,"UserName",true,Login)
guiCreateLabel(0.45,0.33,0.1,0.1,"Password",true,Login)

local LT_UserName = guiCreateEdit(0.25,0.2,0.5,0.1,"",true,Login)
local LT_Password = guiCreateEdit(0.25,0.4,0.5,0.1,"",true,Login)

local L_Dokme = guiCreateButton(0.35,0.75,0.3,0.2,"Login",true,Login)




----------------------------------------------------------- Register
local Register = guiCreateTab("Register",TAccount)

guiCreateLabel(0.45,0.13,0.1,0.1,"UserName",true,Register)
guiCreateLabel(0.45,0.33,0.1,0.1,"Password",true,Register)
guiCreateLabel(0.45,0.53,0.1,0.1,"RePassword",true,Register)

local RT_UserName = guiCreateEdit(0.25,0.2,0.5,0.1,"",true,Register)
local RT_Password = guiCreateEdit(0.25,0.4,0.5,0.1,"",true,Register)
local RT_RePassword = guiCreateEdit(0.25,0.6,0.5,0.1,"",true,Register)

local R_Dokme = guiCreateButton(0.35,0.75,0.3,0.2,"Register",true,Register)


addEventHandler("onClientGUIClick",root,function()
    if source == R_Dokme then 
        if string.len(guiGetText(RT_UserName)) >= 3 then 
            if string.len(guiGetText(RT_Password)) >= 8 then 
                if guiGetText(RT_Password) == guiGetText(RT_RePassword) then 
                    outputChatBox("Account Shoma Sakhte Shod.")
                else
                    outputChatBox("Password Shoma Yeki Nist.")
                end
            else
                outputChatBox("Password Shoma Ashtebah Ast.")
            end
        else
            outputChatBox("UserName Shoma Ashtebah Ast.")
        end
    elseif source == L_Dokme then 
        guiSetVisible(Account,false)
        showCursor(false)
        outputChatBox("ok")
    end
end)