src_name = arg[1]
dst_name = arg[2]
if src_name == nil then
	os.exit(1)
end

if dst_name == nil then
	os.exit(1)
end

f = io.open(src_name, "r")

if f == nil then
	os.exit(1)
end

print('do')
print(string.format('local f = file.open(%q, "w")', dst_name))

for line in f:lines() do
	print(string.format("f:writeline(%q)", line))
end

print("f:close()")
print('end')

f:close()
