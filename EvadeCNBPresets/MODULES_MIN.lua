-- this is the module that houses all separated modules into one modulescript

local greyexpandablebutton = {}
local assetidformatting = {}


--[[local BDATA = { -- api docs
	 ["BUTTON"] = script.Parent,
	["IMAGE"] = 12806997431,
	 ["TEXT"] = "TEST BUTTON",
	 ["CALLBACK"] = function()
print("CLICKED")
	end,
	
}]]

local TS = game:GetService("TweenService")

function greyexpandablebutton.new(BDATA)

	local btn = BDATA["BUTTON"]

	btn:FindFirstChild("Title").Text = tostring(BDATA["TEXT"])
	btn:FindFirstChild("Icon").Image = string.format("rbxassetid://%s",tostring(BDATA["IMAGE"]))

	local CLICK = btn:FindFirstChild("Interact")

	CLICK.MouseEnter:Connect(function()


		TS:Create(btn,TweenInfo.new(0.52,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
			Size = UDim2.new(0.314, 0,0.603, 0)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			TextTransparency = 0
		}):Play()
		TS:Create(btn.Icon,TweenInfo.new(0.32,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{
			Position = UDim2.new(0.199, 0,0.5, 0)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.32,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{
			Position = UDim2.new(0.644, 0,0.5, 0)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.32,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{
			Size = UDim2.new(0.57, 0,0.368, 0)
		}):Play()

		-- tween color 

		TS:Create(btn,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		}):Play()
		TS:Create(btn.UIStroke,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			Color = Color3.fromRGB(158, 158, 158)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			TextColor3 = Color3.fromRGB(38, 38, 38)
		}):Play()
		TS:Create(btn.Icon,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			ImageColor3 = Color3.fromRGB(38, 38, 38)
		}):Play()


	end)

	CLICK.MouseLeave:Connect(function()


		TS:Create(btn,TweenInfo.new(0.52,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
			Size = UDim2.new(0.104, 0,0.603, 0)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			TextTransparency = 1
		}):Play()
		TS:Create(btn.Icon,TweenInfo.new(0.42,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{
			Position = UDim2.new(0.5, 0,0.5, 0)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{
			Position = UDim2.new(0.696, 0,0.526, 0)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{
			Size = UDim2.new(1.141, 0,0.368, 0)
		}):Play()

		-- tween color 

		TS:Create(btn,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		}):Play()
		TS:Create(btn.UIStroke,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			Color = Color3.fromRGB(80, 80, 80)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			TextColor3 = Color3.fromRGB(240, 240, 240)
		}):Play()
		TS:Create(btn.Icon,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			ImageColor3 = Color3.fromRGB(150, 150, 150)
		}):Play()


	end)

	CLICK.MouseButton1Down:Connect(function(...)
		warn("CLICKED")
		coroutine.wrap(BDATA["CALLBACK"])(...)

		TS:Create(btn.UIStroke,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			Transparency = 1
		}):Play()
		TS:Create(btn,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			BackgroundColor3 = Color3.fromRGB(109, 109, 109)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			TextColor3 = Color3.fromRGB(34, 34, 34)
		}):Play()
		TS:Create(btn.Icon,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			ImageColor3 = Color3.fromRGB(34, 34, 34)
		}):Play()

		task.wait(0.23)

		TS:Create(btn.UIStroke,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			Transparency = 0
		}):Play()
		TS:Create(btn,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			BackgroundColor3 = Color3.fromRGB(116, 116, 116)
		}):Play()
		TS:Create(btn.Title,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			TextColor3 = Color3.fromRGB(38, 38, 38)
		}):Play()
		TS:Create(btn.Icon,TweenInfo.new(0.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
			ImageColor3 = Color3.fromRGB(38, 38, 38)
		}):Play()


	end)
end

-------------------------------------

function assetidformatting.Format(ID)
	if typeof(ID) == "string" then
		return ID
	elseif typeof(ID) == "number" then
		return string.format("rbxassetid://%s",tostring(ID))
	end
end

function assetidformatting.ReturnIDAsNumber(ID)
	if typeof(ID) == "string" then
		if string.match(string.lower(ID),"rbxassetid://") ~= nil then
			tonumber(string.sub(tostring(ID),14,string.len(tostring(ID))))
		elseif string.match(string.lower(ID),"roblox.com/asset") ~= nil then
			return tonumber(string.sub(tostring(ID),33,string.len(tostring(ID))))
			else
		return "Unable to parse ID"
		end
	elseif typeof(ID) == "number" then
		return ID
	end
end

-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------
-------------------------------------


return greyexpandablebutton,assetidformatting
