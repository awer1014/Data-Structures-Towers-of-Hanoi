//---------------------------------------------------------------------------
#include <iostream>
#include <cstdlib>
#include <stdio.h>


#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int count = 1;
void hanoi(int n, String a, String b, String c) {

	if( n == 1){
		if(Form1->CheckBox1->Checked){
			Form1->Memo2->Lines->Add("---------------Step:"+IntToStr(count)+" Move sheet from "+ a +" to "+c);
		}
		Form1->Memo1->Lines->Add("Step"+IntToStr(count)+" : Move sheet from "+ a +" to "+ c);
		count ++;
	}
	else{
		hanoi(n-1,a,c,b);
		if(Form1->CheckBox1->Checked){
			Form1->Memo2->Lines->Add("Move sheet "+IntToStr(n) +" from "+ a +" to "+c);
		}
		hanoi(1,a,b,c);
		hanoi(n-1,b,a,c);
		if (Form1->CheckBox1->Checked) {
			Form1->Memo2->Lines->Add("Move sheet "+ IntToStr(n) +" from "+ a +" to "+c);
		}
	}

}
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	int n = StrToInt(Edit1->Text);
	hanoi(n,"A","B","C");

	Form1->Memo1->Lines->Add("-----------"+IntToStr(count-1)+" Steps in total for "+ IntToStr(n) +" disks-----------");
	count = 1;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
 	Edit1->Clear();
	Memo1->Clear();
	Memo2->Clear();
}
//---------------------------------------------------------------------------

