function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "����� �� ���� ��� ������" end
local jdat = json:decode(url)
local text = '?? ���� : '..jdat.FAtime..' \n?? ����� '..jdat.FAdate..' ������.\n----------------------------\n?? '..jdat.ENtime..'\n?? '..jdat.ENdate..''
return text
end
return {
  patterns = {
  "^����",
  "^[]([Tt][iI][Mm][Ee])$" 
  }, 
run = run 
}