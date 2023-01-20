//---------------------------------------------------------------------------

#ifndef CurseH
#define CurseH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <Grids.hpp>
#include <StdCtrls.hpp>
#include <Menus.hpp>
#include "sDialogs.hpp"
#include <Dialogs.hpp>
#include <iostream>
#include <string>
#include <fstream>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class Insurance {
    std::string name;
    std::string surname;
    std::string number;
    std::string passport;
    std::string ins;
    std::string price;
public:
    Insurance(std::string &n, std::string &surn, std::string &num, std::string &pass, std::string &in, std::string &pr) {
        name = n;
        surname = surn;
        number = num;
        passport = pass;
        ins = in;
        price = pr;
    }

    Insurance() {
        name = "";
        surname = "";
        number = "";
        passport = "";
        ins = "";
        price = "";
    }

    ~Insurance () {}

    std::string getName() {return name;}
    std::string getSurname() {return surname;}
    std::string getNumber () {return number;}
    std::string getPassport() {return passport;}
    std::string getIns() {return ins;}
    std::string getPrice() {return price;}

    void setName(std::string n1) {name = n1;}
    void setSurname(std::string sn1) {name = sn1;}
    void setNumber(std::string nu1) {name = nu1;}
    void setPassport(std::string pp1) {name = pp1;}
    void setIns(std::string insr) {name = insr;}
    void setPrice(std::string prc1) {name = prc1;}

    void infile(std::ifstream &n) {
            std::string str6;
            n >> name;
            n >> surname;
            n >> number;
            n >> passport;
            n >> ins;
            n >> price;
            n >> str6;
    }


};

//---------------------------------------------------------------------------
class TTIME : public TForm
{
__published:	// IDE-managed Components
        TStringGrid *StringGrid1;
        TEdit *Edit1;
        TEdit *Edit2;
        TEdit *Edit3;
        TEdit *Edit4;
        TLabel *Name;
        TLabel *Surname;
        TLabel *Number;
        TLabel *Passport;
        TComboBox *ComboBox1;
        TButton *Enter;
        TButton *ShowAllContracts;
        TLabel *New;
        TButton *Delete;
        //TComboBox *ComboBox2;
        //TEdit *Edit5;
        TLabel *Search;
        TComboBox *ComboBox3;
        TLabel *pass;
        TEdit *Edit6;
        TButton *Find;
        //TButton *Button1;
        TButton *Button2;
        TLabel *Label4;
        //TLabel *Label5;
        TLabel *Label6;
        //TLabel *Label7;
        TMainMenu *MainMenu1;
        TMenuItem *FILE1;
        TMenuItem *Save1;
        TMenuItem *Open1;
        TMenuItem *Exit1;
        TOpenDialog *OpenDialog1;
        TSaveDialog *SaveDialog1;
        TComboBox *ComboBox4;
        TButton *Button1;
        void __fastcall EnterClick(TObject *Sender);
        void __fastcall ShowAllContractsClick(TObject *Sender);
        void __fastcall DeleteClick(TObject *Sender);
        void __fastcall FindClick(TObject *Sender);
        //void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Save1Click(TObject *Sender);
        void __fastcall Open1Click(TObject *Sender);
        void __fastcall Edit1KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit3KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit2KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit4KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit6KeyPress(TObject *Sender, char &Key);
        //void __fastcall Edit7KeyPress(TObject *Sender, char &Key);
        //void __fastcall Edit8KeyPress(TObject *Sender, char &Key);
        //void __fastcall Edit5KeyPress(TObject *Sender, char &Key);
        void __fastcall Exit1Click(TObject *Sender);
        void __fastcall FormCloseQuery(TObject *Sender, bool &CanClose);
        void __fastcall StringGrid1Click(TObject *Sender);
        void __fastcall ComboBox3Change(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        //void __fastcall New1Click(TObject *Sender);
        //void __fastcall Button1Click(TObject *Sender);
private:
Insurance* mas[100];	// User declarations
public:		// User declarations
        __fastcall TTIME(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTIME *TIME;
//---------------------------------------------------------------------------
#endif
