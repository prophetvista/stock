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
Description=�����Ƹ����ݵ���
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
Hwnd = Plugin.Window.Find(0, "��������")
Call Plugin.Window.Min(Hwnd)
Delay 2000
RunApp "C:\eastmoney\swc8\mainfree.exe C:\eastmoney\swc8\StockWay.ico"
Delay 75000
Rem A
If Weekday(Now) >= 1 and Weekday(Now) <= 7 Then 
	If (Hour(now)= 9 and Minute(now)>25) or Hour(now) = 10 or (Hour(now) = 11 and Minute(now) < 40) or (Hour(now) = 12 and Minute(now) > 55) or Hour(now) = 13 or Hour(now) = 14 or (Hour(now) = 15 and Minute(now) < 10) Then 
		MoveTo 1059, 74
		//�˶ιرչ�棬û�й��ʱ����ں��������
		Delay 200
		LeftClick 1
		Delay 300
        MoveTo 30, 47
        //�ƶ�����ҳ
        Delay 200
		LeftClick 1
		//�����ҳ�����ȶ���
		Delay 300
		//�˶��ƶ�����໦�����λ�ò����
		MoveTo 27, 163
		Delay 200
		LeftClick 1
		If Second(Now) = 0 or Second(Now) = 1 or Second(Now) = 2 Then
			//���ѭ����ÿ����=0ʱ��������һ�Σ���ÿ���ӵ�������һ��
			Delay 2000
			//------------------------------
			//------------------------------
			//�˶��ƶ���������������ڲ����
			MoveTo 209, 199
			Delay 200
			LeftClick 1
			Delay 300
			//------------------------------
			//------------------------------
			//�˶��ڸ��ɽ�������Ҽ��˵�����
			RightClick 1
			Delay 1500
			MoveTo 252, 210
			//�ƶ����򿪲˵�
			Delay 500
			MoveTo 256, 374
			//�ƶ�����������
			Delay 1500
			MoveTo 455, 374
			Delay 1000
			LeftClick 1
			Delay 1500
			//��������������ݲ˵������ȴ��˵�����
			//---------------------------------------------------
			//---------------------------------------------------
        	//�¶γ��򱣴��Ʊ����
			MoveTo 816, 325
			LeftClick 1
			//�ƶ����Ի��򲢵��
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
			//�����һ��
			Delay 1000
			LeftClick 1
			//�����һ��
			Delay 2000
			LeftClick 1
			Delay 500
			LeftClick 1
			Delay 500
			LeftClick 1
			//������
			
			//------------------------------------------
			//------------------------------------------
        	//�¶γ��򱣴�������
			MoveTo 27, 198
			LeftClick 1
			Delay 1500
			//�ƶ����������顱�˵�
			
			MoveTo 217, 201
			LeftClick 1
			Delay 1000
			//�ƶ�������������ѡ��
			
			RightClick 1
			Delay 1500
			//�Ҽ�չ���˵�
			MoveTo 280, 211
			//�ƶ����˵���
			Delay 500
			MoveTo 270, 332
			Delay 1500
			//�ƶ��������ݵ������˵�
			MoveTo 474, 332
			LeftClick 1
			//�ƶ����������������ݡ��˵�,�����
			Delay 2000
			MoveTo 816, 325
			LeftClick 1
			//�ƶ����Ի��򲢵��
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
			//�����һ��
			Delay 1000
			LeftClick 1
			//�����һ��
			Delay 2000
			LeftClick 1
			Delay 500
			LeftClick 1
			Delay 500
			LeftClick 1
			//������
			
			//---------------------------------------
			//---------------------------------------
			//�������ɼ�ָ������
			MoveTo 28, 230
			LeftClick 1
			Delay 1500
			//�ƶ���������ָ�����˵�
			'==========�����ǰ�������¼�Ƶ�����==========
			MoveTo 201, 160
			//ָ������
			Delay 500
			LeftClick 1
			RightClick 1
			//���Ҽ��˵�
			Delay 1500
			MoveTo 273, 170
			//�ƶ����򿪲˵�
			Delay 1000
			MoveTo 266, 332
			Delay 1500
			//�ƶ����������ݲ˵�
			MoveTo 457, 332
			//�ƶ��������������ݲ˵�
			Delay 500
			LeftClick 1
			Delay 2000
			MoveTo 816, 325
			LeftClick 1
			//�ƶ����Ի��򲢵��
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
			//�����һ��
			Delay 1000
			LeftClick 1
			//�����һ��
			Delay 2000
			LeftClick 1
			Delay 500
			LeftClick 1
			Delay 500
			LeftClick 1
			//������
			
			
		
		End If
	End If
	//-------------------------------------------------------------------------
	//-------------------------------------------------------------------------
	//������ͨ�������ݲɼ�
	If Hour(now) > 16 Then 
		RunApp "c:\users\administrator\desktop\killdfcf.bat"	
		Delay 2000
		RunApp "C:\new_tdx\TdxW.exe"
		Delay 10000	
		MoveTo 816, 412
		LeftClick 1
		Delay 500
		//�������Ѿ�ѡ���顱
		
		MoveTo 924, 447
		LeftClick 1
		Delay 10000
		//�������¼��
		
		MoveTo 676, 100
		Delay 5000
		LeftClick 1
		Delay 500
		//�ƶ���������
		KeyPress "Esc", 1
		//ESC��������
		Delay 5000
		
		//615Ϊ����ۺϽ���
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
		//���������
		
		
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
		
		
		
		
		//.933Ϊ�̺��������ؿ�ݼ�
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
		
		
		//�̺��������ؽ������
		MoveTo 499, 200
		LeftClick 1
		Delay 500
		//�������������ߡ�
		MoveTo 460, 234
		LeftClick 1
		Delay 1000
		//�����һ�������������ء�
		MoveTo 836, 542
		LeftClick 1
		Delay 600000
		Delay 600000
		//�����ʼ���أ�����7������ɣ����Էſ�ʮ����
		MoveTo 922, 546
		Delay 500
		LeftClick 1
		Delay 500
		//�ر����ؽ���
		
		
		//------------------------------------------
		//------------------------------------------
		//��������A��
		
		//���ݵ�������
		KeyPress "3", 1
		Delay 2000
		KeyPress "4", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		
		//�߼���������
		MoveTo 879, 275
		LeftClick 1
		Delay 2000
		//����߼���������
		MoveTo 652, 333
		LeftClick 1
		Delay 2000
		//�������������
		MoveTo 808, 508
		Delay 500
		LeftClick 1
		Delay 2000
		//���������Ʒ�֡�
		
		
		MoveTo 371, 279
		LeftClick 1
		Delay 10000
		//ѡ����A��
		
		MoveTo 822, 594
		Delay 500
		LeftClick 1
		//���ȫѡ
		Delay 5000
		
		
		
		MoveTo 924, 591
		Delay 500
		LeftClick 1
		//���ȷ��
		Delay 10000
		MoveTo 808, 538
		Delay 500
		LeftClick 1
		//�����ʼ����
		KeyPress "Enter", 1
		Delay 600000
		Delay 600000
		Delay 600000
		//����Ҫ7���ӣ��ſ�һ�㵽10����
		
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
		//����ر�
		
		
		
		
		//------------------------------------
		//------------------------------------
		//���浼���������
		//���ݵ�������
		KeyPress "3", 1
		Delay 2000
		KeyPress "4", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		
		//�߼���������
		MoveTo 879, 275
		LeftClick 1
		Delay 2000
		//����߼���������
		MoveTo 652, 333
		LeftClick 1
		Delay 2000
		//�������������
		MoveTo 808, 508
		Delay 500
		LeftClick 1
		Delay 2000
		//���������Ʒ�֡�
		
		MoveTo 369, 482
		LeftClick 1
		Delay 10000
		//ѡ��������
		
		MoveTo 822, 594
		Delay 500
		LeftClick 1
		//���ȫѡ
		Delay 5000
		
		
		MoveTo 924, 591
		Delay 500
		LeftClick 1
		//���ȷ��
		Delay 10000
		MoveTo 808, 538
		Delay 500
		LeftClick 1
		//�����ʼ����
		KeyPress "Enter", 1
		Delay 600000
		Delay 300000
		//����Ҫ10���ӣ��ſ���10����
		
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
		//����ر�
		
		
		//-------------------------------------
		//-------------------------------------
		//����ָ������
		
		//���ݵ�������
		KeyPress "3", 1
		Delay 2000
		KeyPress "4", 1
		Delay 2000
		KeyPress "Enter", 1
		Delay 2000
		
		
		
		//�߼���������
		MoveTo 879, 275
		LeftClick 1
		Delay 2000
		//����߼���������
		MoveTo 652, 333
		LeftClick 1
		Delay 2000
		//�������������
		MoveTo 808, 508
		Delay 500
		LeftClick 1
		Delay 2000
		//���������Ʒ�֡�
		
		MoveTo 377, 364
		LeftClick 1
		Delay 10000
		//ѡ��ָ������
		
		MoveTo 822, 594
		Delay 500
		LeftClick 1
		//���ȫѡ
		Delay 5000
		
		
		MoveTo 924, 591
		Delay 500
		LeftClick 1
		//���ȷ��
		Delay 10000
		MoveTo 808, 538
		Delay 500
		LeftClick 1
		//�����ʼ����
		KeyPress "Enter", 1
		Delay 300000
		Delay 300000
		//����Ҫ1���ӣ��ſ���5����
		
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
		//����ر�
	End If
End If

Goto A
//Loop