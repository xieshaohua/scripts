#!/usr/bin/lua

--[[
struct
.name
.online
.

display:

CPU		cpu0	cpu1	cpu2	cpu3	cpu4	cpu5	cpu6	cpu7
online		1	1	1	1	0	0	0	0
freq		1000
--]]


--local cmdhead = ""
local cmdhead = "adb shell "
local cpupath = "/sys/bus/cpu/devices/"
local cpuinfo_tbl = {}

function display_items(n)
	local item_cpu = "CPU\r"
	local item_online = "online\r"
	local item_freq = "freq\r"
	for i = 1, n do
		item_cpu = string.format("%s\t%s", item_cpu, cpuinfo_tbl[i].name)
		item_online = string.format("%s\t%s", item_online, tostring(cpuinfo_tbl[i].online))
		item_freq = string.format("%s\t%s", item_freq, tostring(cpuinfo_tbl[i].freq))
	end
	os.execute("clear")
	print(string.format("%s\n%s\n%s\r", item_cpu, item_online, item_freq))
end

while true do
	local cpu_num = 0
	local file = io.popen(cmdhead .. "ls " .. cpupath, "r")

	for line in file:lines() do
		line = string.match(line, "(cpu%d+)")	-- delete the "\t" and "Enter" of tail
		if line ~= nil then
			local f = io.popen(cmdhead .. "cat " .. cpupath .. line .. "/" .. "online");
			cpu_num = cpu_num + 1
			cpuinfo_tbl[cpu_num] = {}
			cpuinfo_tbl[cpu_num].name = line
			cpuinfo_tbl[cpu_num].online = f:read("*n")
			if cpuinfo_tbl[cpu_num].online ~= 0 then
				f = io.popen(cmdhead .. "cat " .. cpupath .. line .. "/" .. "cpufreq/cpuinfo_cur_freq")
				cpuinfo_tbl[cpu_num].freq = f:read("*n")
			end
		end
	end

	file:close()

	display_items(cpu_num)
--	os.execute("sleep 5")
end



