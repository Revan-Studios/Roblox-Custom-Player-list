-- Decompiled with the Synapse X Luau decompiler.

while true do
	wait();
	if game.Players.LocalPlayer.Character and game.Players.LocalPlayer:FindFirstChild("Stats") and game.Players.LocalPlayer:FindFirstChild("Stats"):FindFirstChild("House") then
		break;
	end;
end;
local l__Players__1 = game.Players;
local l__Template__2 = game.ReplicatedStorage.Template;
local l__List__3 = script.Parent.List;
for v4 = 0, l__Players__1.MaxPlayers do
	local v5 = l__Template__2:Clone();
	v5.Name = l__Players__1.LocalPlayer:WaitForChild("Stats").PlayerName.Value .. " " .. l__Players__1.LocalPlayer:WaitForChild("Stats").House.Value;
	v5.Position = UDim2.new(0.027, 0, v4 * l__Template__2.Size.Y.Scale, 0);
	v5.Parent = l__List__3;
end;
while wait(2) do
	local v6, v7, v8 = pairs(l__List__3:GetChildren());
	while true do
		local v9 = nil;
		local v10 = nil;
		v10, v9 = v6(v7, v8);
		if not v10 then
			break;
		end;
		v8 = v10;
		if l__Players__1:GetChildren()[v10] then
			v9.Text = l__Players__1:GetChildren()[v10]:WaitForChild("Stats").PlayerName.Value .. " " .. l__Players__1:GetChildren()[v10]:WaitForChild("Stats").House.Value;
			v9.MouseEnter:Connect(function()
				if l__Players__1:GetChildren()[v10] then
					v9.Text = l__Players__1:GetChildren()[v10].Name;
				end;
			end);
			v9.MouseLeave:Connect(function()
				if l__Players__1:GetChildren()[v10] then
					v9.Text = l__Players__1:GetChildren()[v10]:WaitForChild("Stats").PlayerName.Value .. " " .. l__Players__1:GetChildren()[v10]:WaitForChild("Stats").House.Value;
				end;
			end);
		else
			v9.Text = "";
		end;	
	end;
end;
