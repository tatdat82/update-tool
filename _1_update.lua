---menusetup----
function menuSETUP()

    local dlg = dialog("SETUP")
device.set_brightness(0.5)
    dlg:set_title("SELECT COMBO")

    dlg:add_radio(
        "COMBO",
        {
            "1.6s WIFI",
            "2.6S ETHER NET",
            "3.7G WIFI",
            "4.7G ETHER"
                    },
        "1"
    )

    local confirm, selects = dlg:show()

    -- Cancel → thoát menu
    if not confirm then
        return
    end

    local cv = selects["COMBO"]

    if cv == "1.6s WIFI" then
        -- CÔNG VIỆC 1
        	sys.toast("Mute Volume")
            device.mute_on()
            device.set_volume(0)
            sys.sleep(2) 
            device.set_airdrop_mode(0)
            sys.sleep(2) 
            device.turn_off_bluetooth()
           sys.sleep(2)
        	device.set_brightness(0.0)
			           sys.sleep(2)
            device.turn_on_wifi()
            --sys.sleep(1)
       		sys.sleep(2)
			sys.toast("Enable Assistive Touch")
			sys.assistive_touch_on()  
            device.set_autolock_time(0)  -- Set auto lock time in minutes
            sys.sleep(2)
            sys.toast("Disable Lock Screen")
            sys.sleep(2)
            khoaqua_xoacache(1)
            sys.toast("Dang xoa cache, KHOAQUA....",1)
            sys.sleep(5)
            clear.all_privileges()
            sys.sleep(2)          
			sys.toast("SET LOCATION",1)
            changelocation(1)



    elseif cv == "2.6S ETHER NET" then
        -- CÔNG VIỆC 2
       		sys.toast("Mute Volume")
            device.mute_on()
          sys.sleep(2)
            device.set_volume(0)
          sys.sleep(2)
            device.set_airdrop_mode(0)
           sys.sleep(2)
            device.turn_off_bluetooth()
          sys.sleep(2)
            device.turn_off_wifi()
          sys.sleep(2)
            device.set_autolock_time(0)  -- Set auto lock time in minutes
            sys.sleep(2)         	device.set_brightness(0.0)
            sys.toast("Disable Lock Screen")
	        sys.toast("Enable Assistive Touch")
			sys.assistive_touch_on()  
        	sys.sleep(2)
            khoaqua_xoacache(1)
            sys.toast("Dang xoa cache, KHOAQUA....",1)
            sys.sleep(5)
            clear.all_privileges()
            sys.sleep(2)          
			sys.toast("SET LOCATION",1)
            changelocation(1)



    elseif cv ==  "3.7G WIFI" then
        -- CÔNG VIỆC 3
			sys.toast("Mute Volume")
            device.mute_on()
          sys.sleep(2)
            device.set_volume(0)
         sys.sleep(2) 
            device.set_airdrop_mode(0)
            sys.sleep(2)
            device.turn_off_bluetooth()
        sys.sleep(2)
            --device.turn_off_wifi()
            --sys.sleep(1)
       		 --sys.sleep(2)
			--sys.toast("Enable Assistive Touch")
			--sys.assistive_touch_on()          	
        	device.set_brightness(0.0)
        sys.sleep(2)
            device.set_autolock_time(0)  -- Set auto lock time in minutes
            sys.sleep(2)
            sys.toast("Disable Lock Screen")
            sys.sleep(2)
            khoaqua_xoacache(1)
            sys.toast("Dang xoa cache, KHOAQUA....",1)
            sys.sleep(5)
            clear.all_privileges()
            sys.sleep(2)          
			sys.toast("SET LOCATION",1)
            changelocation(1)


    elseif cv == "4.7G ETHER" then
        -- CÔNG VIỆC 4
		sys.toast("Mute Volume")
            device.mute_on()
          sys.sleep(2)
            device.set_volume(0)
           sys.sleep(2)
            device.set_airdrop_mode(0)
          sys.sleep(2)
            device.turn_off_bluetooth()
          sys.sleep(2)
            device.turn_off_wifi()
         sys.sleep(2)
            device.set_autolock_time(0)  -- Set auto lock time in minutes
            sys.sleep(2)
            sys.toast("Disable Lock Screen")
	        --sys.toast("Enable Assistive Touch")
			--sys.assistive_touch_on()  
        	sys.sleep(2)         	device.set_brightness(0.0)
           khoaqua_xoacache(1)
            sys.toast("Dang xoa cache, KHOAQUA....",1)
            sys.sleep(5)
            clear.all_privileges()
            sys.sleep(2)          
			sys.toast("SET LOCATION",1)
            changelocation(1)


    end

end



------MENU------


function layURL(tenURL)

    local path = "/var/mobile/Media/1ferver/ds.txt"
    local file = io.open(path, "r")

    if not file then
        return nil
    end

    for dong in file:lines() do

        local ten, url = dong:match("^(%S+)%s+(.+)$")

        if ten == tenURL then
            file:close()
            return url
        end

    end

    file:close()
    return nil
end






function menuCongViec()

    local dlg = dialog("Menu")

    dlg:set_title("Select Menu")

    dlg:add_radio(
        "Select Menu",
        {
            "1.Wait...",
            "2.Q1V",
            "3.Normal",
            "4.Turn Off Wifi",
            "5.b96_1",
            "6.b96_2",
            "7.bmm_1",
            "8.bmm_2",
            "9.Update KC",
            "10.Download DS"
        },
        "1"
    )

    local confirm, selects = dlg:show()

    -- Cancel → thoát menu
    if not confirm then
        return
    end

    local cv = selects["Select Menu"]

    if cv == "1.Wait..." then
	device.set_brightness(0.3)
	sys.sleep(1)
        repeat
            sys.toast("Wait...")
            sys.sleep(1)
            wait=screen.get_color(81,35)
         until wait==13355979 or wait==9605779 
        sys.sleep(2)
    elseif cv == "2.Q1V" then         	device.set_brightness(0.0)
           		trangthai1=1
			if trangthai1==0 then showtool="🐶🐯🐶🐯-" sys.alert("KO TANG QUA",2)  end
        	if trangthai1==1 then showtool="🎁🎁🎁🎁-" sys.alert("BAT DAU TANG QUA",2) end
   		
		
        -- CÔNG VIỆC 2


    elseif cv == "3.Normal" then device.set_brightness(0.0)
        	trangthai1=0
			if trangthai1==0 then showtool="🐶🐯🐶🐯-" sys.alert("KO TANG QUA",2)  end
        	if trangthai1==1 then showtool="🎁🎁🎁🎁-" sys.alert("BAT DAU TANG QUA",2) end
   		
        -- CÔNG VIỆC 3


    elseif cv == "4.Turn Off Wifi" then device.set_brightness(0.0)
       sys.sleep(1)
        device.mute_on()
          sys.sleep(2)
		device.set_volume(0)
  sys.sleep(2)
        device.set_airdrop_mode(0)
       sys.sleep(2)
        device.turn_off_bluetooth()
          sys.sleep(2)
            device.turn_off_wifi() sys.sleep(1)
        -- CÔNG VIỆC 4


    elseif cv == "5.b96_1" then device.set_brightness(0.0)
        -- Ví dụ
        --taiFileNgay() 
        sys.sleep(1)
            url = layURL("url1")

            if url then
                app.open_url(url)
            else
                sys.alert("Không tìm thấy url1")
            end
        -- CÔNG VIỆC 5


    elseif cv == "6.b96_2" then device.set_brightness(0.0)
        -- CÔNG VIỆC 6
-- taiFileNgay() 
        sys.sleep(1)
            url = layURL("url2")

            if url then
                app.open_url(url)
            else
                sys.alert("Không tìm thấy url2")
            end


    elseif cv == "7.bmm_1" then device.set_brightness(0.0)
        -- taiFileNgay() 
        sys.sleep(1)
            url = layURL("url3")

            if url then
                app.open_url(url)
            else
                sys.alert("Không tìm thấy url3")
            end
        -- CÔNG VIỆC 7


    elseif cv == "8.bmm_2" then device.set_brightness(0.0)
                -- taiFileNgay() 
         sys.sleep(1)
            url = layURL("url4")

            if url then
                app.open_url(url)
            else
                sys.alert("Không tìm thấy url4")
            end
        -- CÔNG VIỆC 8

        elseif cv == "9.Update KC" then  device.set_brightness(0.0)
        sys.sleep(1)
        xemkc()
        --  if kc1>=50 then trangthai1=0 

 --if trangthai1==0 then showtool="🐶🐯🐶🐯-" sys.alert("KO TANG QUA",2)  end
   --if trangthai1==1 then showtool="🎁🎁🎁🎁-" sys.alert("BAT DAU TANG QUA",2) end
--end
       
       elseif cv == "10.Download DS" then  device.set_brightness(0.0) taiFileNgay()


    end

end



-- ==========================================
-- TẢI FILE NGAY KHI GỌI
-- ==========================================
function taiFileNgay()

    local url = "https://raw.githubusercontent.com/tatdat82/qua_tang/main/ds.txt"
    local path = "/var/mobile/Media/1ferver/ds.txt"

    local code, header, data = http.get(url, 30)

    if code == 200 and data then

        local f = io.open(path, "w")

        if f then sys.alert("Download Done ds.txt",2)
            f:write(data)
            f:close()
            else sys.alert("Can Not Download",2) l=6
        end
    end
end



------------

function kiemTraQua(qua)
    local path = "/var/mobile/Media/1ferver/ds.txt"
    local file = io.open(path, "r")

    if not file then
        sys.alert("Không mở được ds.txt",2)
        return
    end

    qua = qua:match("^%s*(.-)%s*$"):lower()

    for dong in file:lines() do
        dong = dong:match("^%s*(.-)%s*$"):lower()

        if dong == qua then
            file:close()
            sys.alert("TÌM THẤY QUÀ: " .. qua,2)
                    touch.tap(375, 1214) sys.sleep(1) mofan(1) l=6
            return
        end
    end

    file:close()
    sys.alert("KHÔNG TÌM THẤY QUÀ: " .. qua,2) l=6
end

---vao xem kc---
function xemkc()
    -- vao vi ten
    app.quit("sg.bigo.live")
    sys.sleep(1)

    app.run("sg.bigo.live")


    -- cho vao duoc app bigo
    local doi = os.time()

    repeat
        local doi0 = os.time() - doi

        sys.sleep(1)

        local trangchu2 = screen.get_color(343,998)
        local trangchu = screen.get_color(43,1310)
        local yctheodoi = screen.get_color(141,796)

        if yctheodoi == 31487 then
            touch.tap(141,796)
            sys.sleep(1)
        end

        if (trangchu == 58335 and trangchu2 ~= 16777215) then
            break
        end

        if doi0 >= 20 then
            return nil
        end

    until false


    -- vao bigo
    touch.tap(663,1283)
    sys.sleep(2)


    -- tim vi
    local vt1, vt2 = screen.find_color({
        { 0, 0, {0xff7a50, 0x000000} },
        { 0, 0, {0xff7a50, 0x000000} },
        { 0, 0, {0xff7a50, 0x000000} },
    }, 90, 4, 611, 70, 1223)

    if vt1 and vt2 then
        touch.tap(vt1, vt2)
    else
        return nil
    end

    sys.sleep(5)


    -- doc so KC
    local kc = screen.ocr_text {
        left = 111,
        top = 280,
        right = 357,
        bottom = 340,
        languages = "eng",
        timeout = 0.01
    }

    if type(kc) == "table" and #kc > 0 then
        kc = kc[1]
        kc = kc:match("^%s*(.-)%s*$")
        kc1 = tonumber(kc)

        if kc1 then 
		if kc1>=50 then trangthai1=0  showtool = "🐶🐯🐶🐯-" end
		if kc1<=30 then trangthai1=1 showtool = "🎁🎁🎁🎁-" end
             app.quit("*")
            return kc1
        end
    end

    return nil
end


---------------------------

function khoaqua_xoacache(k5)
   for i5=1, k5 do
---xoacahe va khoaqua bigo----
----lay path data bigo
bigopath = app.data_path("sg.bigo.live")
doc1="chmod 0 "..bigopath.."/Documents/ActivityResDir"
doc2="chmod 0 "..bigopath.."/Documents/CommonResDir"
doc3="chmod 0 "..bigopath.."/Documents/CustomGiftImageDir"
doc4="chmod 0 "..bigopath.."/Documents/CustomGiftResDir"
doc5="chmod 0 "..bigopath.."/Documents/drawGiftTemple"
doc6="chmod 0 "..bigopath.."/Documents/launchAdResDir"
doc7="chmod 0 "..bigopath.."/Documents/GiftResDir"
doc8="chmod 0 "..bigopath.."/Documents/multiLiveTitleAndTagDir"
doc9="chmod 0 "..bigopath.."/Documents/PetResDir"
doc10="chmod 0 "..bigopath.."/Documents/ResFilterDir"
doc11="chmod 0 "..bigopath.."/Documents/statisticsDir"
doc12="chmod 0 "..bigopath.."/Documents/teamPkGuideImage"
doc13="chmod 0 "..bigopath.."/Documents/VideoRecord"
doc14="chmod 0 "..bigopath.."/Documents/VItemResDir"
--xoacache1="rm -rf "..bigopath.."/Library/Caches"
os.run(doc1)
os.run(doc2)
os.run(doc3)
os.run(doc4)
os.run(doc5)
os.run(doc6)
os.run(doc7)
os.run(doc8)
os.run(doc9)
os.run(doc10)
os.run(doc11)
os.run(doc12)
os.run(doc13)
os.run(doc14)

--os.run(xoacache1)

end end

----------
function changelocation(a4)
for m4=1, a4 do 
app.quit("sg.bigo.live") sys.sleep(2)

sys.location_services_off() sys.sleep(2) 
app.run("sg.bigo.live") sys.sleep(3)
cho0=os.time()
repeat
locationoff=screen.get_color(482,776) sys.sleep(1)
if locationoff==31487 then touch.tap(482,776) sys.sleep(1) end
cho=os.time()-cho0
until locationoff==31487 or cho>=10
app.quit("sg.bigo.live") sys.sleep(2)

sys.location_services_on() 
        
app.quit("live.cclerc.geranium") sys.sleep(2)
  
app.run("live.cclerc.geranium")
sys.sleep(1)
 touch.tap(632,101) sys.sleep(1) touch.tap(632,101) sys.sleep(1)       


touch.tap(290,811) sys.sleep(1) touch.tap(290,811) sys.sleep(1)
 sys.sleep(4)
touch.tap(375,1260) sys.sleep(2) touch.tap(375,1260) sys.sleep(2) touch.tap(375,1260) sys.sleep(2)
touch.tap(699,60) sys.sleep(2)touch.tap(699,60) sys.sleep(2)touch.tap(699,60) sys.sleep(2)
touch.tap(117,431) sys.sleep(2)
app.quit("*")
--app.run("sg.bigo.live") sys.sleep(2)

end end


----------

function exitcall(k1)
    for i3=1,k1 do
videocall=screen.get_color(375,1225) 
 videocall2=screen.get_color(350,1225)
 videocall3=screen.get_color(704,1017) --9086361 RGB(138, 143, 153) 9080729 --call audio min

if videocall==9080729 or videocall2==9080729 then touch.tap(375,1225) sys.sleep(1) end
if videocall3==9086361 or videocall3==9080729 then touch.tap (704,1017) sys.sleep(1) end
end end
 ---------



function mofan(k)
for i0=1,k do
 
 ---cho fan xuat hien----
exitcall(1)
start0=os.time()
repeat
 sys.toast("Cho Fan...",1)
 app.run("sg.bigo.live")
fan1= screen.find_color({
  { 0, 0,  {0xfa62bc, 0x000000} },
  { 1, 0,  {0xfa62bb, 0x000000} },
  { 2, 0,  {0xfa61bb, 0x000000} },
}, 100, 202, 40, 600, 90)
x1,y1= screen.find_color({
  { 0, 0,  {0xfa62bc, 0x000000} },
  { 1, 0,  {0xfa62bb, 0x000000} },
  { 2, 0,  {0xfa61bb, 0x000000} },
}, 100, 202, 40, 600, 90)

sys.sleep(1) exitcall(1)
start1=os.time()-start0
until fan1>0 or start1>=30
if start1>=30 then sys.toast("Ko thay FAN",1) l=6 else
 	start0=os.time()
  repeat
      exitcall(1)
    start1=os.time()-start0
  sys.toast("Da thay FAN, dang mo FAN...",1)
    exitcall(1)
     x1,y1= screen.find_color({
  { 0, 0,  {0xfa62bc, 0x000000} },
  { 1, 0,  {0xfa62bb, 0x000000} },
  { 2, 0,  {0xfa61bb, 0x000000} },
}, 100, 202, 40, 600, 90)
--app.run("sg.bigo.live")
                ---mobigo lai neu bi tat----
       bigo_open = app.is_running("sg.bigo.live")
		if bigo_open and "sg.bigo.live"==app.front_bid() then 
              app.run("sg.bigo.live")  yctheodoi=screen.get_color(141,796)--31487
if yctheodoi==31487 then touch.tap(141,796) sys.sleep(1) end
 end
                ------
                
touch.tap(x1,y1) sys.sleep(1) 
  exitcall(1)   
    tgchofan=os.time() 
    repeat          
               tgchofan0=os.time()-tgchofan     start1=os.time()-start0
fanOK1=screen.get_color(5,808)--12931582 12931583
fanOK2=screen.get_color(5,995)--12931582    
Fanhoanthanh=screen.get_color(44,1268)--57035


  sys.msleep(500)
exitcall(1)
--sys.alert(a)
           until   Fanhoanthanh==57035 or fanOK1==12931582 or fanOK1==12931583  or fanOK2==12931582 or start1>=30 or tgchofan0>=30
until Fanhoanthanh==57035 or fanOK1==12931582 or fanOK1==12931583  or fanOK2==12931582 or start1>=30
exitcall(1) sys.msleep(500)
--if fanOK1==12931582 or fanOK1==12931583 then sys.toast("Fan OK",1)  touch.tap(5,808) sys.msleep(500) end 
--if fanOK2==12931582 then sys.toast("Fan OK",1)  touch.tap(5,995) sys.msleep(500) end 

  if start1>=30 then sys.toast("Ko mo duoc Fan",1) l=6 else 

--if fanOK2==1677215 then sys.toast("Fan OK",1)  touch.tap(1,1075) sys.msleep(500) end 
--if fanOK1==1677215 then sys.toast("Fan OK",1) touch.tap(1,830) sys.msleep(500) end

sys.toast("Fan OK",1) sys.msleep(400) end
        
end end
end

----lamnv---



function lamvn(k2)
for i2=1, k2 do

exitcall(1)
lamnvf=screen.get_color(377,1247) fandemnguoc=screen.get_color(612,1224)
        
        	nhanqua= screen.find_color({
              { 0, 0,  {0xffbde1, 0x000000} }, 
              { 0, 0,  {0xffbde1, 0x000000} },
              { 0, 0,  {0xffbde1, 0x000000} },
            }, 90, 118, 1207, 610, 1307)

       		nhanqua1= screen.find_color({
              { 0, 0,  {0xfebee0, 0x000000} }, 
              { 0, 0,  {0xfebee0, 0x000000} },
              { 0, 0,  {0xfebee0, 0x000000} },
            }, 90, 118, 1207, 610, 1307)
--a=screen.get_color(377,1247)--tang qua 15888352  --tgf 15955681  --chiase 16228586

if trangthai1==1 then 
       if lamnvf== 15888352 then sys.alert("TANG QUA",2) taiFileNgay() 
           ---ktra qua---
                tx1,ty1= screen.find_color({
              { 0, 0,  {0x2f3033, 0x000000} }, 
              { 0, 0,  {0x2f3033, 0x000000} },
              { 0, 0,  {0x2f3033, 0x000000} },
            }, 90, 97, 1133, 597, 1183)
--sys.alert(x1-10)

if tx1>=97 or tx1==nil then tx1=97 end
qua = screen.ocr_text {
  left = tx1-10,
  top = 1133,
  right = 597,
  bottom = 1183,
  languages = "eng",
  timeout = 0.01
}

if type(qua) == "table" and #qua>0 then
qua=qua[1]
qua = qua:match("^%s*(.-)%s*$")
 
 kiemTraQua(qua) 
               else sys.alert("Ko Nhin thay qua",2) sys.sleep(2) l=4

  end
                
                
         else
                hoanthanh=screen.get_color(44,1268)--57035
                if hoanthanh==57035 then l=6 end
            
            end end
if fandemnguoc==15970045 or nhanqua>0 or nhanqua1>0 or lamnvf==15887583 or lamnvf==16228586 or lamnvf==16161513 or lamnvf==16162025 
then
   if fandemnguoc==15970045 or nhanqua>0 or nhanqua1>0 then sys.alert("FAN DEM NGUOC",2)	
       --mofan(1) 
            exitcall(1)sys.sleep(3)   exitcall(1)  fandemnguoc=screen.get_color(612,1224) 
       if fandemnguoc==15970045 then sys.sleep(5) exitcall(1)
       thoigiandemnguoc=0  batdaudemnguoc=os.time()
          repeat 
	thoigiandemnguoc=os.time()-batdaudemnguoc
        	fanOK1=screen.get_color(5,808)--12931582 12931583
sys.msleep(5)
       		
            sys.toast('CHO NHAN QUA'..thoigiandemnguoc..' giay',1) 
            touch.tap(139,1219) sys.msleep(5);
             if fanOK1==12931582 or fanOK1==12931583  then  dn=1 else dn=2 end 
            
          until dn==2 or thoigiandemnguoc>=190
                    exitcall(1) 
          sys.msleep(5) touch.tap(139,1219) sys.msleep(5)	touch.tap(139,1219) sys.msleep(5) touch.tap(139,1219) sys.msleep(5) l=6 
                    if thoigiandemnguoc>=190 then app.quit("*") end
                   
       end
    else
       exitcall(1)
       touch.tap(375,1229) sys.msleep(800) 
       	if  lamnvf==16228586 or lamnvf==16161513 or lamnvf==16162025 then
        exitcall(1)
        sys.toast('fanchiase',1)  touch.tap(294,380) sys.msleep(400)  touch.tap(294,380) sys.msleep(400)	
        s0=os.time()	
        repeat 
          s=os.time()-s0 
          exitcall(1)
        tap1= screen.find_color({
          { 0, 0,  {0xe9eaec, 0x000000} },
          { 0, 0,  {0xe9eaec, 0x000000} },
          { 0, 0,  {0xe9eaec, 0x000000} },
        	}, 90, 668, 530, 678, 1130)
          x2,y2= screen.find_color({
          { 0, 0,  {0xe9eaec, 0x000000} },
          { 0, 0,  {0xe9eaec, 0x000000} },
          { 0, 0,  {0xe9eaec, 0x000000} },
        	}, 90, 668, 530, 678, 1130)
        --  tap1=findColor(0xC47ACC,1,{668,530,10,600}) 
           sys.msleep(200) 
        until tap1>0 or s>=30 sys.msleep(500)
                    --682,572,0xe9eaec}
        touch.tap(x2,y2) sys.msleep(500) end 	
        sys.msleep(200) sendchiase=screen.get_color(42,1260) 
        if sendchiase==2351578 then touch.tap(375,1214) sys.msleep(400) end 
      end 
else 
    if trangthai1==1 then if l>=3 then l=6 end sys.msleep(500)  else sys.toast('FINISH',1) sys.sleep(2) l=6  end
                
  end       
           
end end
-----


--------

----MainRun---
function mokhoa(k10)
    for i10=1,k10 do
while (device.is_screen_locked()) do
  device.unlock_screen()
  sys.msleep(1000)
end
sys.toast("Screen unlocked, script starting")
-- You can start the script below
 bd=os.time()
repeat 
    kt=os.time()-bd
 touch_id_fail=screen.get_color(381,786)--,0x007aff}, 31487
	sys.sleep(1)
  if device.is_screen_locked() then unlock=1
  -- Screen is locked
else unlock=0
  -- Screen is unlocked
end


if  touch_id_fail==31487 and unlock==0  then touch.tap(381,786) sys.sleep(1) kt=16 end
   
        
until touch_id_fail==31487 or kt>=8
end end
-------
sys.toast("BAT DAU",1)
sys.sleep(2)

--mokhoa(1)
--sys.sleep(2)
 trangthai1=0 trangthai2=0 thoigian=0  showtool="🐶🐯🐶🐯-"
menuSETUP()

sys.sleep(2)

bigo_open = app.is_running("sg.bigo.live")
		if bigo_open and "sg.bigo.live"==app.front_bid() then sys.toast(showtool..thoigian.."s",1) else app.run("sg.bigo.live")  yctheodoi=screen.get_color(141,796)--31487
if yctheodoi==31487 then touch.tap(141,796) sys.sleep(1) end
 end


--app.run("sg.bigo.live")  
sys.sleep(2)
 device.set_brightness(0.0)

xemkc() if kc1 then kc1=tonumber(kc1) else kc1=0 end 
-- yctheodoi=screen.get_color(141,796)--31487
--if yctheodoi==31487 then touch.tap(141,796) sys.sleep(1) end
 

---da vao phong cho OK---

while 1==1 do
 thoigian0=os.time()
repeat
        ----xem so kc theo gio----
        local h = tonumber(os.date("%H"))
local m = tonumber(os.date("%M"))
local s11 = tonumber(os.date("%S"))

if (h == 0 or h == 4 or h == 8 or h == 12 or h == 16 or h == 20)
and m == 0
and s11 <= 8 then

    if lanChay ~= h then
        lanChay = h

        xemkc()

        if kc1 >= 50 then
            trangthai = 0
        end

        if kc1 <= 20 then
            trangthai = 1
        end
                
        if trangthai1 == 0 then
            showtool = "🐶🐯🐶🐯-"
        elseif trangthai1 == 1 then
            showtool = "🎁🎁🎁🎁-"
        end
    end
end
        
 
        -------
        
       bigo_open = app.is_running("sg.bigo.live")
		if bigo_open and "sg.bigo.live"==app.front_bid() then sys.toast(showtool..thoigian.."s",1) sys.toast(kc1,2) else app.run("sg.bigo.live")  yctheodoi=screen.get_color(141,796)--31487
if yctheodoi==31487 then touch.tap(141,796) sys.sleep(1) end
 end
	 ------
        share=screen.get_color(89,156)---254 510
		share2=screen.get_color(99,149)--14483456 --- acc do
        sys.msleep(500)
----MENU-----
        
        
       wait=screen.get_color(81,35)--13355979 9605779 7095672 9802135
        if wait==13355979 or wait==9605779 then sys.toast("OPEN MENU") sys.sleep(2)
            device.set_brightness(0.5)
            menuCongViec()
			end
			
        exitcall(1)
        ---dinh room thoat---
   -- a=screen.get_color(647,799)-- (647,799) (647,699) 15329770

            sc1=screen.get_color(647,699) -- (640,630) 16777215 --(640,800)16777215
        sc2=screen.get_color(647,799) --sys.alert(sc2)
        sc3=screen.get_color(195,780)
   		 sys.msleep(500)		--sys.alert(sc3)
        if sc1==15329770 and sc2==15329770 then touch.tap(300,800)sys.msleep(500) end
        if sc3==31487 then touch.tap(300,800) sys.msleep(500)end
        
       lv1=screen.get_color(362,432)--0xfdde23 = 16637475
		lv2=screen.get_color(212,509)--0xfdde23 = 16790335 16397119
		OKlv=screen.get_color(351,969)--0 
        if lv1==16637475 then
			if lv2==16397119 or lv2==16790335 then 
        		if OKlv==0 then touch.tap(351,969) sys.msleep(500) end end end
 yctheodoi=screen.get_color(141,796)--31487
if yctheodoi==31487 then touch.tap(141,796) sys.sleep(1) end
       
        -------lam nhiem vu bi sot---
        lamnvf=screen.get_color(377,1247) 
if lamnvf==15887583 or lamnvf==16228586 or lamnvf==16161513 or lamnvf==16162025 then sys.sleep(3) thoigian=0
		lamnvf=screen.get_color(377,1247) sys.msleep(800)if lamnvf==15887583 or lamnvf==16228586 or lamnvf==16161513 or lamnvf==16162025 then sys.msleep(500)
		exitcall(1) touch.tap(375,1229) sys.msleep(800) 
		if lamnvf==16228586 or lamnvf==16161513 or lamnvf==16162025 then
			exitcall(1)	sys.toast('fanchiase',1)  touch.tap(294,380) sys.msleep(400)  touch.tap(294,380) sys.msleep(400)	
			s0=os.time()	
              repeat 
                        s=os.time()-s0 
           				exitcall(1)
                        tap1= screen.find_color({
                          { 0, 0,  {0xe9eaec, 0x000000} },
                          { 0, 0,  {0xe9eaec, 0x000000} },
                          { 0, 0,  {0xe9eaec, 0x000000} },
                            }, 90, 668, 530, 678, 1130)
                        --  tap1=findColor(0xC47ACC,1,{668,530,10,600}) 
                        sys.msleep(200) until tap1>0 or s>=60 sys.msleep(500)
                            x2,y2= screen.find_color({
                          { 0, 0,  {0xe9eaec, 0x000000} },
                          { 0, 0,  {0xe9eaec, 0x000000} },
                          { 0, 0,  {0xe9eaec, 0x000000} },
                            }, 90, 668, 530, 678, 1130)
                    touch.tap(x2,y2) sys.msleep(200) sendchiase=screen.get_color(42,1260) 
                    	 if sendchiase==2351578 then touch.tap(375,1214) sys.msleep(400) end 

                end 
--mofan(1)
            end 
  --mofan(1)
        end
thoigian=os.time()-thoigian0
 --sole=thoigian%360
        --if sole==0 then TangQ(1) end
until share==254 or share==510 or share==132094 or share==508  or share2==14418176 or share2==14483456 or thoigian>=1600 
sys.msleep(300)

if thoigian>=1600  then 
     sys.alert('RESET TIME',2) 
        
sys.sleep(2)
 app.quit("*")
 sys.sleep(2)
app.run("sg.bigo.live")
 sys.sleep(2)
 sys.toast("Mute Volume")
device.mute_on()
  sys.sleep(2)
device.set_volume(0)  thoigian=0 sys.sleep(3)
  device.set_brightness(0.0)

        --end 
else 
	 if share==254 or share==510 or share==132094 or share==508 then
           touch.tap(119,119) sys.sleep(1)

      		exitcall(1)
            l=0 repeat l=l+1 mofan(1) sys.sleep(1) exitcall(1)  sys.sleep(1) lamvn(1)  until l>=4 
     end
     ---acc do acc do
     if share2==14418176 or share2==14483456 then 
            --tgf1=screen.get_color(518,1260)
            touch.tap(375,1255) sys.sleep(5)
            
        l=0 repeat l=l+1 mofan(1) sys.sleep(2) exitcall(1)  sys.sleep(2) lamvn(1) until l>=2
                                       
end end end
