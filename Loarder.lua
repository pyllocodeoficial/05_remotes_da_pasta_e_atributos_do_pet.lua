-- 05: Lista os remotes de ReplicatedStorage.Remotes e os atributos
-- do primeiro pet do plot 1 (Workspace.Plots["1"].Animals).
-- Imprime no console (F9) e copia para a area de transferencia.

local RS = game:GetService("ReplicatedStorage")
local out = {}
local R = RS:FindFirstChild("Remotes")
if R then
	for _, v in ipairs(R:GetChildren()) do
		table.insert(out, v.ClassName .. " | " .. v.Name)
	end
end
local pet = workspace.Plots["1"].Animals:GetChildren()[1]
if pet then
	table.insert(out, "PET: " .. pet.Name)
	for k, v in pairs(pet:GetAttributes()) do
		table.insert(out, "  attr " .. k .. " = " .. tostring(v))
	end
end
local t = table.concat(out, "\n")
print(t)
if setclipboard then setclipboard(t) end
