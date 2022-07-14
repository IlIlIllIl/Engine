        local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
            local NotificationBindable = Instance.new("BindableFunction")
            game.StarterGui:SetCore("SendNotification", {
                Title = Title;
                Text = Text;
                Icon = "";
                Duration = Duration;
                Button1 = Button1Text;
                Button2 = Button2Text;
                Callback = NotificationBindable;
            })
            return NotificationBindable
        end
        
        Msgreq("Valkyrie","Whitelist starting...",5,"","").OnInvoke = function(result)
        
        end
        wait(5)
        
        Msgreq("Valkyrie","Would you like to login?",9999,"Yes","No").OnInvoke = function(result)
            if result == "Yes" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIlIllIl/Engine/main/whitelist.lua"))()
            else
                while true do
                    wait(1000000)
                end
            end
        end
