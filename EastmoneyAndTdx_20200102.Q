[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=2e774aed-7465-43f0-a92c-dc8e81ff9325
Description=东方财富数据导出
Enable=1
AutoRun=1
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Delay 20000
Hwnd = Plugin.Window.Find(0, "按键精灵")
Call Plugin.Window.Min(Hwnd)
Delay 2000
RunApp "C:\eastmoney\swc8\mainfree.exe C:\eastmoney\swc8\StockWay.ico"
Delay 75000
Rem A
If Weekday(Now) >= 1 and Weekday(Now) <= 7 Then 
	If (Hour(now)= 9 and Minute(now)>25) or Hour(now) = 10 or (Hour(now) = 11 and Minute(now) < 40) or (Hour(now) = 12 and Minute(now) > 55) or Hour(now) = 13 or Hour(now) = 14 or (Hour(now) = 15 and Minute(now) < 10) Then 
		MoveTo 1059, 74
		//此段关闭广告，没有广告时点击在宏观数据上
		Delay 200
		LeftClick 1
		Delay 300
        MoveTo 30, 47
        //移动到首页
        Delay 200
		LeftClick 1
		//点击首页增加稳定性
		Delay 300
		//此段移动到左侧沪深个股位置并点击
		MoveTo 27, 163
		Delay 200
		LeftClick 1
		If Second(Now) = 0 or Second(Now) = 1 or Second(Now) = 2 Then
			//这个循环在每个秒=0时导出数据一次，即每分钟导出数据一次
			Delay 2000
			//------------------------------
			//------------------------------
			//此段移动到沪深个股主窗口并点击
			MoveTo 209, 199
			Delay 200
			LeftClick 1
			Delay 300
			//------------------------------
			//------------------------------
			//此段在个股界面进行右键菜单操作
			RightClick 1
			Delay 1500
			MoveTo 252, 210
			//移动到打开菜单
			Delay 500
			MoveTo 256, 374
			//移动到导出数据
			Delay 1500
			MoveTo 455, 374
			Delay 1000
			LeftClick 1
			Delay 1500
			//点击导出所有数据菜单，并等待菜单弹出
			//---------------------------------------------------
			//---------------------------------------------------
        	//下段程序保存股票数据
			MoveTo 816, 325
			LeftClick 1
			//移动到对话框并点击
			Delay 500
			KeyDown 17, 1
			KeyPress 65, 1
			KeyUp 17, 1
			KeyPress "BackSpace", 1
			Delay 1000
			
			If Month(Now) >= 1 and Month(Now) <= 9 Then 
				Mstr = "0"&CStr(Month(Now))
			Else 
				Mstr = CStr(Month(Now))
			End If
			
			If Day(Now) >= 1 and Day(Now) <= 9 Then 
				Dstr = "0"&Day(Now)
			Else 
				Dstr = CStr(Day(Now))
			End If
			
			If Hour(Now) >= 1 and Hour(Now) <= 9 Then 
				Hstr = "0"&CStr(Hour(Now))
			Else 
				Hstr = CStr(Hour(Now))
			End If
			
			If Minute(Now) >= 0 and Minute(Now) <= 9 Then 
				Minstr = "0"&CStr(Minute(Now))
			Else 
				Minstr = CStr(Minute(Now))
			End If
			
			stockname="C:\stock\stock"+CStr(Year(Now))+Mstr+"\stock"+CStr(Year(Now))+Mstr+Dstr+Hstr+Minstr+".txt"
			SayString stockname
			TracePrint stockname
			Delay 1000
			MoveTo 759, 475
			Delay 500
			LeftClick 1
			//点击下一步
			Delay 1000
			LeftClick 1
			//点击下一步
			Delay 2000
			LeftClick 1
			Delay 500
			LeftClick 1
			Delay 500
			LeftClick 1
			//点击完成
			
			//------------------------------------------
			//------------------------------------------
        	//下段程序保存板块数据
			MoveTo 27, 198
			LeftClick 1
			Delay 1500
			//移动到“沪深版块”菜单
			
			MoveTo 217, 201
			LeftClick 1
			Delay 1000
			//移动到板块栏，点击选中
			
			RightClick 1
			Delay 1500
			//右键展开菜单
			MoveTo 280, 211
			//移动到菜单打开
			Delay 500
			MoveTo 270, 332
			Delay 1500
			//移动到“数据导出”菜单
			MoveTo 474, 332
			LeftClick 1
			//移动到“导出所有数据”菜单,并点击
			Delay 2000
			MoveTo 816, 325
			LeftClick 1
			//移动到对话框并点击
			Delay 500
			KeyDown 17, 1
			KeyPress 65, 1
			KeyUp 17, 1
			KeyPress "BackSpace", 1
			Delay 1000
			industryname="C:\industry\industry"+CStr(Year(Now))+Mstr+"\industry"+CStr(Year(Now))+Mstr+Dstr+Hstr+Minstr+".txt"
			SayString industryname
			Delay 1000
			MoveTo 759, 475
			Delay 500
			LeftClick 1
			//点击下一步
			Delay 1000
			LeftClick 1
			//点击下一步
			Delay 2000
			LeftClick 1
			Delay 500
			LeftClick 1
			Delay 500
			LeftClick 1
			//点击完成
			
			//---------------------------------------
			//---------------------------------------
			//下面程序采集指数数据
			MoveTo 28, 230
			LeftClick 1
			Delay 1500
			//移动到“沪深指数”菜单
			'==========以下是按键精灵录制的内容==========
			MoveTo 201, 160
			//指数窗口
			Delay 500
			LeftClick 1
			RightClick 1
			//打开右键菜单
			Delay 1500
			MoveTo 273, 170
			//移动到打开菜单
			Delay 1000
			MoveTo 266, 332
			Delay 1500
			//移动到导出数据菜单
			MoveTo 457, 332
			//移动到导出所有数据菜单
			Delay 500
			LeftClick 1
			Delay 2000
			MoveTo 816, 325
			LeftClick 1
			//移动到对话框并点击
			Delay 500
			KeyDown 17, 1
			KeyPress 65, 1
			KeyUp 17, 1
			KeyPress "BackSpace", 1
			Delay 1000
			indexname="C:\index\index"+CStr(Year(Now))+Mstr+"\index"+CStr(Year(Now))+Mstr+Dstr+Hstr+Minstr+".txt"
			SayString indexname
			Delay 1000
			MoveTo 759, 475
			Delay 500
			LeftClick 1
			//点击下一步
			Delay 1000
			LeftClick 1
			//点击下一步
			Delay 2000
			LeftClick 1
			Delay 500
			LeftClick 1
			Delay 500
			LeftClick 1
			//点击完成
			
			
		
		End If
	End If
	//-------------------------------------------------------------------------
	//-------------------------------------------------------------------------
	//下面是通达信数据采集
	If Hour(now) > 16 Then 
		RunApp "c:\users\administrator\desktop\killdfcf.bat"	
		Delay 2000
		RunApp "C:\new_tdx\TdxW.exe"
		Delay 10000	
		MoveTo 816, 412
		LeftClick 1
		Delay 500
		//点击“免费精选行情”
		
		MoveTo 924, 447
		LeftClick 1
		Delay 10000
		//点击“登录”
		
		MoveTo 676, 100
		Delay 5000
		LeftClick 1
		Delay 500
		//移动到广告界面
		KeyPress "Esc", 1
		//ESC键广告界面
		Delay 5000
		
		//615为板块综合界面
		Delay 5000
		KeyPress "6", 1
		Delay 3000
		KeyPress "1", 1
		Delay 3000
		KeyPress "5", 1
		Delay 3000
		KeyPress "Enter", 1
		Delay 3000
		
		MoveTo 167, 33
		Delay 1000
		LeftClick 1
		Delay 1000
		//点击概念板块
		
		
		KeyPress "3", 1
		Delay 3000
		KeyPress "4", 1
		Delay 3000
		KeyPress "Enter", 1
		MoveTo 804, 392
		Delay 1000
		LeftClick 1
		Delay 3000
		KeyPress "Enter", 1
		Delay 120000
		
		KeyPress "Esc", 1
		
		
		
		
		//.933为盘后数据下载快捷键
		KeyPress ".", 1
		Delay 2000
		KeyPress "9", 1
		Delay 2000
		KeyPress "3", 1
		Delay 2000
		KeyPress "3", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		//盘后数据下载界面操作
		MoveTo 499, 200
		LeftClick 1
		Delay 500
		//点击“沪深分钟线”
		MoveTo 460, 234
		LeftClick 1
		Delay 1000
		//点击“一分钟线数据下载”
		MoveTo 836, 542
		LeftClick 1
		Delay 600000
		Delay 600000
		//点击开始下载，测试7分钟完成，可以放宽十分钟
		MoveTo 922, 546
		Delay 500
		LeftClick 1
		Delay 500
		//关闭下载界面
		
		
		//------------------------------------------
		//------------------------------------------
		//导出沪深A股
		
		//数据导出界面
		KeyPress "3", 1
		Delay 2000
		KeyPress "4", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		
		//高级导出界面
		MoveTo 879, 275
		LeftClick 1
		Delay 2000
		//点击高级导出界面
		MoveTo 652, 333
		LeftClick 1
		Delay 2000
		//点击分钟线数据
		MoveTo 808, 508
		Delay 500
		LeftClick 1
		Delay 2000
		//点击“导出品种”
		
		
		MoveTo 371, 279
		LeftClick 1
		Delay 10000
		//选择沪深A股
		
		MoveTo 822, 594
		Delay 500
		LeftClick 1
		//点击全选
		Delay 5000
		
		
		
		MoveTo 924, 591
		Delay 500
		LeftClick 1
		//点击确定
		Delay 10000
		MoveTo 808, 538
		Delay 500
		LeftClick 1
		//点击开始导出
		KeyPress "Enter", 1
		Delay 600000
		Delay 600000
		Delay 600000
		//导出要7分钟，放宽一点到10分钟
		
		KeyPress "Enter", 1
		Delay 500
		KeyPress "Enter", 1
		Delay 2000
		KeyDown 18, 1
		KeyPress 115, 1
		KeyUp 18, 1
		Delay 2000
		
		MoveTo 880, 537
		Delay 500
		LeftClick 1
		//点击关闭
		
		
		
		
		//------------------------------------
		//------------------------------------
		//下面导出板块数据
		//数据导出界面
		KeyPress "3", 1
		Delay 2000
		KeyPress "4", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		
		//高级导出界面
		MoveTo 879, 275
		LeftClick 1
		Delay 2000
		//点击高级导出界面
		MoveTo 652, 333
		LeftClick 1
		Delay 2000
		//点击分钟线数据
		MoveTo 808, 508
		Delay 500
		LeftClick 1
		Delay 2000
		//点击“导出品种”
		
		MoveTo 369, 482
		LeftClick 1
		Delay 10000
		//选择板块数据
		
		MoveTo 822, 594
		Delay 500
		LeftClick 1
		//点击全选
		Delay 5000
		
		
		MoveTo 924, 591
		Delay 500
		LeftClick 1
		//点击确定
		Delay 10000
		MoveTo 808, 538
		Delay 500
		LeftClick 1
		//点击开始导出
		KeyPress "Enter", 1
		Delay 600000
		Delay 300000
		//导出要10分钟，放宽到10分钟
		
		KeyPress "Enter", 1
		Delay 500
		KeyPress "Enter", 1
		Delay 2000
		KeyDown 18, 1
		KeyPress 115, 1
		KeyUp 18, 1
		Delay 2000
		
		MoveTo 880, 537
		Delay 500
		LeftClick 1
		//点击关闭
		
		
		//-------------------------------------
		//-------------------------------------
		//导出指数数据
		
		//数据导出界面
		KeyPress "3", 1
		Delay 2000
		KeyPress "4", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		
		//高级导出界面
		MoveTo 879, 275
		LeftClick 1
		Delay 2000
		//点击高级导出界面
		MoveTo 652, 333
		LeftClick 1
		Delay 2000
		//点击分钟线数据
		MoveTo 808, 508
		Delay 500
		LeftClick 1
		Delay 2000
		//点击“导出品种”
		
		MoveTo 377, 364
		LeftClick 1
		Delay 10000
		//选择指数数据
		
		MoveTo 822, 594
		Delay 500
		LeftClick 1
		//点击全选
		Delay 5000
		
		
		MoveTo 924, 591
		Delay 500
		LeftClick 1
		//点击确定
		Delay 10000
		MoveTo 808, 538
		Delay 500
		LeftClick 1
		//点击开始导出
		KeyPress "Enter", 1
		Delay 300000
		Delay 300000
		//导出要1分钟，放宽到5分钟
		
		KeyPress "Enter", 1
		Delay 500
		KeyPress "Enter", 1
		Delay 2000
		KeyDown 18, 1
		KeyPress 115, 1
		KeyUp 18, 1
		Delay 2000
		MoveTo 880, 537
		Delay 500
		LeftClick 1
		//点击关闭
	End If
End If

Goto A
//Loop
