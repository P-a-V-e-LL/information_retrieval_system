//---------------------------------------------------------------------------

#include <vcl.h>
#include <iostream>
#include <string>
#include <fstream>
#pragma hdrstop

#include "Curse.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sDialogs"
#pragma resource "*.dfm"
TTIME *TIME;
int count = -1;
int q = 0, j = 1, i = 1;
bool fnd = false;
bool sac = false;
std::string p1 = "Apartment";
std::string p2 = "Car";
std::string p3 = "Health";
std::string p4 = "Life";
std::string p5 = "Mortgage";
std::string p6 = "Responsibility";
int row = 0;
//---------------------------------------------------------------------------
__fastcall TTIME::TTIME(TComponent* Owner)
        : TForm(Owner)
{
Enter->Font->Size = 10;
Delete->Font->Size = 10;
New->Font->Size = 10;
Button2->Font->Size = 10;
//Label1->Font->Size = 10;
Find->Font->Size = 10;
//Button1->Font->Size = 10;
Search->Font->Size = 10;
ShowAllContracts->Font->Size = 10;
//Label7->Font->Size = 12;
//Label7->Font->Style = TFontStyles()<<fsBold;
StringGrid1->Cells[0][0] = "¹";
StringGrid1->Cells[1][0] = "Name";
StringGrid1->Cells[2][0] = "Surname";
StringGrid1->Cells[3][0] = "Number";
StringGrid1->Cells[4][0] = "Passport";
StringGrid1->Cells[5][0] = "Insurance";
StringGrid1->Cells[6][0] = "Price($ in year)";

ComboBox1->Items->Add("Apartment");
ComboBox1->Items->Add("Car");
ComboBox1->Items->Add("Health");
ComboBox1->Items->Add("Life");
ComboBox1->Items->Add("Mortgage");
ComboBox1->Items->Add("Responsibility");

ComboBox4->Items->Add("Apartment");
ComboBox4->Items->Add("Car");
ComboBox4->Items->Add("Health");
ComboBox4->Items->Add("Life");
ComboBox4->Items->Add("Mortgage");
ComboBox4->Items->Add("Responsibility");
ComboBox4->ItemIndex = 0;

//ComboBox2->Items->Add("Name");
//ComboBox2->Items->Add("Surname");

ComboBox3->Items->Add("Name");
ComboBox3->Items->Add("Surname");
ComboBox3->Items->Add("Insuration");

for (int t = 0; t < 100; t++ ) {mas[t]=NULL;}

ComboBox1->ItemIndex = 0;
ComboBox3->ItemIndex = 0;


}
//---------------------------------------------------------------------------
void __fastcall TTIME::EnterClick(TObject *Sender)
{
    std::string a1 = Edit1->Text.c_str();
    std::string a2 = Edit2->Text.c_str();
    std::string a3 = Edit3->Text.c_str();
    std::string a4 = Edit4->Text.c_str();
    if (a1!="" && a2!="" && a3!="" && a4!="") {
    if (ComboBox1->ItemIndex == 0) {std::string a5 = "80"; mas[q] = new Insurance(a1,a2,a3,a4,p1,a5);q++; }
    if (ComboBox1->ItemIndex == 1) {std::string a5 = "140"; mas[q] = new Insurance(a1,a2,a3,a4,p2,a5);q++; }
    if (ComboBox1->ItemIndex == 2) {std::string a5 = "15"; mas[q] = new Insurance(a1,a2,a3,a4,p3,a5);q++; }
    if (ComboBox1->ItemIndex == 3) {std::string a5 = "30"; mas[q] = new Insurance(a1,a2,a3,a4,p4,a5);q++; }
    if (ComboBox1->ItemIndex == 4) {std::string a5 = "25"; mas[q] = new Insurance(a1,a2,a3,a4,p5,a5);q++; }
    if (ComboBox1->ItemIndex == 5) {std::string a5 = "20"; mas[q] = new Insurance(a1,a2,a3,a4,p6,a5);q++; }
    Edit1->Text = "";
    Edit2->Text = "";
    Edit3->Text = "";
    Edit4->Text = "";
    ComboBox1->ItemIndex = 0;
    ShowAllContracts->Click(); } else {Application->MessageBox("Empty blank.", "Error!",NULL);}
}
//---------------------------------------------------------------------------

void __fastcall TTIME::ShowAllContractsClick(TObject *Sender)
{
sac = false;
while (StringGrid1->RowCount!=1){
StringGrid1->RowCount = StringGrid1->RowCount-1;
}
int j = 1;



for ( int qq=0; qq<100; qq++) {
    if (mas[qq]!=NULL) {
        StringGrid1->RowCount = StringGrid1->RowCount + 1;
        StringGrid1->Cells[0][j] = j;
        StringGrid1->Cells[1][j] = mas[qq]->getName().c_str();
        StringGrid1->Cells[2][j] = mas[qq]->getSurname().c_str();
        StringGrid1->Cells[3][j] = mas[qq]->getNumber().c_str();
        StringGrid1->Cells[4][j] = mas[qq]->getPassport().c_str();
        StringGrid1->Cells[5][j] = mas[qq]->getIns().c_str();
        StringGrid1->Cells[6][j] = mas[qq]->getPrice().c_str();
        j++;
        }
}
}
//---------------------------------------------------------------------------

void __fastcall TTIME::DeleteClick(TObject *Sender)
{
int u = row-1;
if (row!=0) {
    for (u;u<100;u++) { if (mas[u]!=NULL) {
        mas[u] = mas[u+1];
    } }
 } else {Application->MessageBox("Contract not found.", "Error!",NULL); }
 ShowAllContracts->Click();
}
//---------------------------------------------------------------------------

void __fastcall TTIME::FindClick(TObject *Sender)
{
    sac = true;
    while (StringGrid1->RowCount!=1){
        StringGrid1->RowCount = StringGrid1->RowCount-1;
    }
    int i = 1;
    bool flf = false;



    if (Edit6->Text!="" || ComboBox3->ItemIndex == 2)
    {

    if (ComboBox3->ItemIndex == 0) { for (int qqq = 0; qqq<100;qqq++) {
        if ((mas[qqq]!=NULL) && (mas[qqq]->getName() == Edit6->Text.c_str())) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qqq]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qqq]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qqq]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qqq]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qqq]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qqq]->getPrice().c_str();
            i++;
            flf = true;
        }
    }
    }

    if (ComboBox3->ItemIndex == 1) { for (int qq2 = 0; qq2<100;qq2++) {
        if ((mas[qq2]!=NULL) && (mas[qq2]->getSurname() == Edit6->Text.c_str())) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq2]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq2]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq2]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq2]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq2]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq2]->getPrice().c_str();
            i++;
            flf = true;
        }
    }
    }
    if (ComboBox3->ItemIndex == 2) { for (int qq3 = 0; qq3<100;qq3++) {
        if ((mas[qq3]!=NULL) && (ComboBox4->ItemIndex == 0) && (mas[qq3]->getIns() == p1)) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq3]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq3]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq3]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq3]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq3]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq3]->getPrice().c_str();
            i++;
            flf = true;
        } }}

        if (ComboBox3->ItemIndex == 2) { for (int qq3 = 0; qq3<100;qq3++) {
        if ((mas[qq3]!=NULL) && (ComboBox4->ItemIndex == 1) && (mas[qq3]->getIns() == p2)) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq3]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq3]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq3]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq3]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq3]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq3]->getPrice().c_str();
            i++;
            flf = true;
        } }}

        if (ComboBox3->ItemIndex == 2) { for (int qq3 = 0; qq3<100;qq3++) {
        if ((mas[qq3]!=NULL) && (ComboBox4->ItemIndex == 2) && (mas[qq3]->getIns() == p3)) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq3]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq3]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq3]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq3]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq3]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq3]->getPrice().c_str();
            i++;
            flf = true;
        } }}

        if (ComboBox3->ItemIndex == 2) { for (int qq3 = 0; qq3<100;qq3++) {
        if ((mas[qq3]!=NULL) && (ComboBox4->ItemIndex == 3) && (mas[qq3]->getIns() == p4)) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq3]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq3]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq3]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq3]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq3]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq3]->getPrice().c_str();
            i++;
            flf = true;
        } }}

        if (ComboBox3->ItemIndex == 2) { for (int qq3 = 0; qq3<100;qq3++) {
        if ((mas[qq3]!=NULL) && (ComboBox4->ItemIndex == 4) && (mas[qq3]->getIns() == p5)) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq3]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq3]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq3]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq3]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq3]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq3]->getPrice().c_str();
            i++;
            flf = true;
        } }}

        if (ComboBox3->ItemIndex == 2) { for (int qq3 = 0; qq3<100;qq3++) {
        if ((mas[qq3]!=NULL) && (ComboBox4->ItemIndex == 5) && (mas[qq3]->getIns() == p6)) {
            StringGrid1->RowCount = StringGrid1->RowCount + 1;
            StringGrid1->Cells[0][i] = i;
            StringGrid1->Cells[1][i] = mas[qq3]->getName().c_str();
            StringGrid1->Cells[2][i] = mas[qq3]->getSurname().c_str();
            StringGrid1->Cells[3][i] = mas[qq3]->getNumber().c_str();
            StringGrid1->Cells[4][i] = mas[qq3]->getPassport().c_str();
            StringGrid1->Cells[5][i] = mas[qq3]->getIns().c_str();
            StringGrid1->Cells[6][i] = mas[qq3]->getPrice().c_str();
            i++;
            flf = true;
        } }}

    //}

    //}
    if (!flf) {
        StringGrid1->RowCount = StringGrid1->RowCount + 1;
        StringGrid1->Cells[1][1] = "No match";
        StringGrid1->Cells[2][1] = "No match";
        StringGrid1->Cells[3][1] = "No match";
        StringGrid1->Cells[4][1] = "No match";
        StringGrid1->Cells[5][1] = "No match";
        StringGrid1->Cells[6][1] = "No match";
    }
    Edit6->Text = ""; } else {Application->MessageBox("Empty blank.", "Error!",NULL);}
}
//---------------------------------------------------------------------------

void __fastcall TTIME::Button2Click(TObject *Sender)
{

        if (row!=0) {
        delete mas[row-1];
        mas[row-1] = NULL;
        std::string b1 = Edit1->Text.c_str();
        std::string b2 = Edit2->Text.c_str();
        std::string b3 = Edit3->Text.c_str();
        std::string b4 = Edit4->Text.c_str();
        if (Edit1->Text!="" && Edit2->Text!="" && Edit3->Text!="" && Edit4->Text!="") {
        if (ComboBox1->ItemIndex == 0) {std::string b5 = "80"; mas[row-1] = new Insurance(b1,b2,b3,b4,p1,b5); }
        if (ComboBox1->ItemIndex == 1) {std::string b5 = "140"; mas[row-1] = new Insurance(b1,b2,b3,b4,p2,b5); }
        if (ComboBox1->ItemIndex == 2) {std::string b5 = "15"; mas[row-1] = new Insurance(b1,b2,b3,b4,p3,b5); }
        if (ComboBox1->ItemIndex == 3) {std::string b5 = "30"; mas[row-1] = new Insurance(b1,b2,b3,b4,p4,b5); }
        if (ComboBox1->ItemIndex == 4) {std::string b5 = "25"; mas[row-1] = new Insurance(b1,b2,b3,b4,p5,b5); }
        if (ComboBox1->ItemIndex == 5) {std::string b5 = "20"; mas[row-1] = new Insurance(b1,b2,b3,b4,p6,b5); }
        ShowAllContracts->Click();
        } else {Application->MessageBox("Empty blank.", "Error!",NULL);}
    }
    if (Edit1->Text!="" && Edit2->Text!="" && Edit3->Text!="" && Edit4->Text!="") {
    Edit1->Text = "";
    Edit2->Text = "";
    Edit3->Text = "";
    Edit4->Text = ""; ComboBox1->ItemIndex = 0; }
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

void __fastcall TTIME::Save1Click(TObject *Sender)
{
   if (SaveDialog1->Execute()) {
        std::ofstream fout;
        fout.open((SaveDialog1->FileName+".txt").c_str(), std::ios_base::out);
        if (fout.is_open()) {
            for (int m = 0; m < 100; m++) {
               if (mas[m]!=NULL) { if (m == 0) {fout << mas[m]->getName() << "\n"<< mas[m]->getSurname() << "\n" << mas[m]->getNumber() << "\n" << mas[m]->getPassport() << "\n" << mas[m]->getIns() << "\n" << mas[m]->getPrice() << "\n" << "-";}
                   else { fout << "\n" << mas[m]->getName() << "\n"<< mas[m]->getSurname() << "\n" << mas[m]->getNumber() << "\n" << mas[m]->getPassport() << "\n" << mas[m]->getIns() << "\n" << mas[m]->getPrice() << "\n" << "-";}
               }
            }
        }

    fout.close();
    }
}
//---------------------------------------------------------------------------

void __fastcall TTIME::Open1Click(TObject *Sender)
{
    int r = 0;
    if (OpenDialog1->Execute()) {
        while (StringGrid1->RowCount!=1){
        StringGrid1->Cells[0][1] = "";
        StringGrid1->Cells[1][1] = "";
        StringGrid1->Cells[2][1] = "";
        StringGrid1->Cells[3][1] = "";
        StringGrid1->Cells[4][1] = "";
        StringGrid1->Cells[5][1] = "";
        StringGrid1->Cells[6][1] = "";
        StringGrid1->RowCount = StringGrid1->RowCount-1;
    }
        for (int yy = 0;yy<100; yy++) {
            if (mas[yy]!=NULL) {
                delete mas[yy];
                mas[yy] = NULL;
                }
        }
        std::ifstream fin;
        fin.open(OpenDialog1->FileName.c_str(), std::ios_base::in);

        while (1) {
        mas[r] = new Insurance();
        mas[r]->infile(fin);
        r++;
        q++; if (fin.eof()) {break;}
    }

    }
    ShowAllContracts->Click();
}
//---------------------------------------------------------------------------

void __fastcall TTIME::Edit1KeyPress(TObject *Sender, char &Key)
{
if ((Key!= VK_BACK)&&(Key < 'A' || (Key > 'Z' && Key < 'a') || Key > 'z') ) Key=0;
}
//---------------------------------------------------------------------------


void __fastcall TTIME::Edit3KeyPress(TObject *Sender, char &Key)
{
if ((Key!= VK_BACK)&&(Key < '0' || Key > '9')) Key=0;


}
//---------------------------------------------------------------------------


void __fastcall TTIME::Edit2KeyPress(TObject *Sender, char &Key)
{
if ((Key!= VK_BACK)&&(Key < 'A' || (Key > 'Z' && Key < 'a') || Key > 'z') ) Key=0;
}
//---------------------------------------------------------------------------

void __fastcall TTIME::Edit4KeyPress(TObject *Sender, char &Key)
{

if ((Key!= VK_BACK)&&(Key < '0' || Key > '9')) Key=0;
}
//---------------------------------------------------------------------------


void __fastcall TTIME::Edit6KeyPress(TObject *Sender, char &Key)
{
if ((Key!= VK_BACK)&&(Key < 'A' || (Key > 'Z' && Key < 'a') || Key > 'z') ) Key=0;
}
//---------------------------------------------------------------------------

//void __fastcall TTIME::Edit7KeyPress(TObject *Sender, char &Key)
//{
//if ((Key!= VK_BACK)&&(Key < 'A' || (Key > 'Z' && Key < 'a') || Key > 'z') ) Key=0;
//}
//---------------------------------------------------------------------------

//void __fastcall TTIME::Edit8KeyPress(TObject *Sender, char &Key)
//{
//if ((Key!= VK_BACK)&&(Key < 'A' || (Key > 'Z' && Key < 'a') || Key > 'z') ) Key=0;
//}
//---------------------------------------------------------------------------

//void __fastcall TTIME::Edit5KeyPress(TObject *Sender, char &Key)
//{
//if ((Key!= VK_BACK)&&(Key < 'A' || (Key > 'Z' && Key < 'a') || Key > 'z') ) Key=0;
//}
//---------------------------------------------------------------------------


void __fastcall TTIME::Exit1Click(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------


void __fastcall TTIME::FormCloseQuery(TObject *Sender, bool &CanClose)
{


if (Application->MessageBox("You want to close the program?","TIME",MB_YESNO | MB_DEFBUTTON2 | MB_ICONQUESTION) == IDNO) {CanClose = false;}
else {if (Application->MessageBox("You want to save changes?","TIME",MB_YESNO | MB_DEFBUTTON2 | MB_ICONQUESTION) == IDNO) {CanClose = true;}
else { if (SaveDialog1->Execute()) {
        std::ofstream fout;
        fout.open(SaveDialog1->FileName.c_str(), std::ios_base::out);
        if (fout.is_open()) {
            for (int m = 0; m < 100; m++) {
               if (mas[m]!=NULL) { if (m == 0) {fout << mas[m]->getName() << "\n"<< mas[m]->getSurname() << "\n" << mas[m]->getNumber() << "\n" << mas[m]->getPassport() << "\n" << mas[m]->getIns() << "\n" << mas[m]->getPrice() << "\n" << "-";}
                   else { fout << "\n" << mas[m]->getName() << "\n"<< mas[m]->getSurname() << "\n" << mas[m]->getNumber() << "\n" << mas[m]->getPassport() << "\n" << mas[m]->getIns() << "\n" << mas[m]->getPrice() << "\n" << "-";}
               }
            }
        }

    fout.close();
    } }


}
}
//---------------------------------------------------------------------------


void __fastcall TTIME::StringGrid1Click(TObject *Sender)
{
if (!sac) {
Edit1->Text=mas[StringGrid1->Row-1]->getName().c_str();
Edit2->Text=mas[StringGrid1->Row-1]->getSurname().c_str();
Edit3->Text=mas[StringGrid1->Row-1]->getNumber().c_str();
Edit4->Text=mas[StringGrid1->Row-1]->getPassport().c_str();
if (mas[StringGrid1->Row-1]->getIns() == p1) {ComboBox1->ItemIndex = 0;}
if (mas[StringGrid1->Row-1]->getIns() == p2) {ComboBox1->ItemIndex = 1;}
if (mas[StringGrid1->Row-1]->getIns() == p3) {ComboBox1->ItemIndex = 2;}
if (mas[StringGrid1->Row-1]->getIns() == p4) {ComboBox1->ItemIndex = 3;}
if (mas[StringGrid1->Row-1]->getIns() == p5) {ComboBox1->ItemIndex = 4;}
if (mas[StringGrid1->Row-1]->getIns() == p6) {ComboBox1->ItemIndex = 5;}
row = StringGrid1->Row; }

else {
    for (int it = 0; it<100;it++) {
        if (mas[it]!=NULL) {
            if (StringGrid1->Cells[1][StringGrid1->Row] == mas[it]->getName().c_str() &&
                StringGrid1->Cells[2][StringGrid1->Row] == mas[it]->getSurname().c_str() &&
                StringGrid1->Cells[3][StringGrid1->Row] == mas[it]->getNumber().c_str() &&
                StringGrid1->Cells[4][StringGrid1->Row] == mas[it]->getPassport().c_str() &&
                StringGrid1->Cells[5][StringGrid1->Row] == mas[it]->getIns().c_str() )
                {
                    Edit1->Text=mas[it]->getName().c_str();
                    Edit2->Text=mas[it]->getSurname().c_str();
                    Edit3->Text=mas[it]->getNumber().c_str();
                    Edit4->Text=mas[it]->getPassport().c_str();
                    if (mas[it]->getIns() == p1) {ComboBox1->ItemIndex = 0;}
                    if (mas[it]->getIns() == p2) {ComboBox1->ItemIndex = 1;}
                    if (mas[it]->getIns() == p3) {ComboBox1->ItemIndex = 2;}
                    if (mas[it]->getIns() == p4) {ComboBox1->ItemIndex = 3;}
                    if (mas[it]->getIns() == p5) {ComboBox1->ItemIndex = 4;}
                    if (mas[it]->getIns() == p6) {ComboBox1->ItemIndex = 5;}
                    row = it+1;
                }

        }
    }
}
}
//---------------------------------------------------------------------------


void __fastcall TTIME::ComboBox3Change(TObject *Sender)
{
if (ComboBox3->ItemIndex == 2) {Edit6->Visible = false; ComboBox4->Visible = true; }
if (ComboBox3->ItemIndex == 0 || ComboBox3->ItemIndex == 1) {Edit6->Visible = true; ComboBox4->Visible = false; }
}
//---------------------------------------------------------------------------


void __fastcall TTIME::Button1Click(TObject *Sender)
{
Edit1->Text = "";
Edit2->Text = "";
Edit3->Text = "";
Edit4->Text = "";
Edit6->Text = "";
ComboBox1->ItemIndex = 0;
ComboBox4->ItemIndex = 0;
ComboBox3->ItemIndex = 0;
}
//---------------------------------------------------------------------------

