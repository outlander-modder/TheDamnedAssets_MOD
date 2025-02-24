//--------------------------------------------------------------
// SAVEGAME 
//--------------------------------------------------------------

INSTANCE MENUITEM_PANEL3_SAVELOAD(C_MENU_ITEM_DEF) 
{
	backPic	=	"Menu_Panel3_SaveLoad.tga";
	
	// Positionen  und Dimensionen	
	posx		=	MENU_PANEL3_X;
	posy		=	MENU_PANEL3_Y;
	dimx		=	MENU_PANEL3_WIDTH;
	dimy		=	MENU_PANEL3_HEIGHT;
	// Weitere Eigenschaften
	alphaMode 	=	"BLEND";	
	alpha	=	255;		
	flags	=	flags | IT_TXT_CENTER;
	flags	=	flags & ~IT_SELECTABLE;
};

INSTANCE MENU_SAVEGAME_LOAD(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3_SAVELOAD";
	// Kopfzeile
	items[11] 	= "MENUITEM_LOAD_HEADLINE";

	// gemeinsame Komponenten
	items[12] 	= "MENUITEM_LOADSAVE_THUMBPIC";
	items[13] 	= "MENUITEM_LOADSAVE_DATETIME";
	items[14] 	= "MENUITEM_LOADSAVE_DATETIME_VALUE";
	items[15] 	= "MENUITEM_LOADSAVE_GAMETIME";
	items[16] 	= "MENUITEM_LOADSAVE_GAMETIME_VALUE";
	items[17] 	= "MENUITEM_LOADSAVE_LEVELNAME";
	items[18] 	= "MENUITEM_LOADSAVE_LEVELNAME_VALUE";
	items[19] 	= "MENUITEM_LOADSAVE_PLAYTIME_VALUE";


	// Slots
	items[20] 	= "MENUITEM_LOAD_SLOT1";
	items[21] 	= "MENUITEM_LOAD_SLOT2";
	items[22] 	= "MENUITEM_LOAD_SLOT3";
	items[23] 	= "MENUITEM_LOAD_SLOT4";
	items[24] 	= "MENUITEM_LOAD_SLOT5";
	items[25] 	= "MENUITEM_LOAD_SLOT6";
	items[26] 	= "MENUITEM_LOAD_SLOT7";
	items[27] 	= "MENUITEM_LOAD_SLOT8";
	items[28] 	= "MENUITEM_LOAD_SLOT9";
	items[29] 	= "MENUITEM_LOAD_SLOT10";
	items[30] 	= "MENUITEM_LOAD_SLOT11";
	items[31] 	= "MENUITEM_LOAD_SLOT12";
	items[32] 	= "MENUITEM_LOAD_SLOT13";
	items[33] 	= "MENUITEM_LOAD_SLOT14";
	items[34] 	= "MENUITEM_LOAD_SLOT15";
	

	// Backbutton
	items[35] 	= "MENUITEM_LOAD_BACK";

	flags = flags | MENU_SHOW_INFO;
};

INSTANCE MENU_SAVEGAME_SAVE(C_MENU_WITH_FAKE_PANEL) 
{
	items[10]	= "MENUITEM_PANEL3_SAVELOAD";
	// Kopfzeile
	items[11] 	= "MENUITEM_SAVE_HEADLINE";
	
		// Gemeinsame Komponenten
	items[12] 	= "MENUITEM_LOADSAVE_THUMBPIC";
	items[13] 	= "MENUITEM_LOADSAVE_DATETIME";
	items[14] 	= "MENUITEM_LOADSAVE_DATETIME_VALUE";
	items[15] 	= "MENUITEM_LOADSAVE_GAMETIME";
	items[16] 	= "MENUITEM_LOADSAVE_GAMETIME_VALUE";
	items[31] 	= "MENUITEM_LOADSAVE_LEVELNAME";
	items[32] 	= "MENUITEM_LOADSAVE_LEVELNAME_VALUE";
	items[17] 	= "MENUITEM_LOADSAVE_PLAYTIME_VALUE";

	// Slots
	items[18] 	= "MENUITEM_SAVE_SLOT1";
	items[19] 	= "MENUITEM_SAVE_SLOT2";
	items[20] 	= "MENUITEM_SAVE_SLOT3";
	items[21] 	= "MENUITEM_SAVE_SLOT4";
	items[22] 	= "MENUITEM_SAVE_SLOT5";
	items[23] 	= "MENUITEM_SAVE_SLOT6";
	items[24] 	= "MENUITEM_SAVE_SLOT7";
	items[25] 	= "MENUITEM_SAVE_SLOT8";
	items[26] 	= "MENUITEM_SAVE_SLOT9";
	items[27] 	= "MENUITEM_SAVE_SLOT10";
	items[28] 	= "MENUITEM_SAVE_SLOT11";
	items[29] 	= "MENUITEM_SAVE_SLOT12";
	items[30] 	= "MENUITEM_SAVE_SLOT13";
	items[31] 	= "MENUITEM_SAVE_SLOT14";
	items[32] 	= "MENUITEM_SAVE_SLOT15";		
	// Backbutton
	items[33] 	= "MENUITEM_SAVE_BACK";

	flags = flags | MENU_SHOW_INFO;
};


const int SAVEGAME_X1 = MENU_PANEL3_COL1_X - 64;
const int SAVEGAME_X2 = MENU_PANEL3_COL2_X + 64;
const int SAVEGAME_Y  = MENU_TITLE_Y + 600;

const int SAVEGAME_Y_LEVELNAME = 3960;
const int SAVEGAME_Y_DATETIME  = 4700;
const int SAVEGAME_Y_GAMETIME  = 5800;


const int SAVEGAME_DY =  300;
const int SAVEGAME_DX1= 3500;
const int SAVEGAME_DX2= 1000;


	


instance MENUITEM_LOAD_HEADLINE(C_MENU_ITEM_PANEL3_DEF)  
{	
	text[0]		=	"WCZYTAJ GR�";   
	type		=	MENU_ITEM_TEXT;
	posx		= 	SAVEGAME_X1;
	posy		=	MENU_TITLE_Y;	
	flags		=	IT_CHROMAKEYED|IT_TRANSPARENT;
	flags		= flags  & ~IT_SELECTABLE;
};


INSTANCE MENUITEM_SAVE_HEADLINE(C_MENU_ITEM_PANEL3_DEF)  
{
	text[0]		=	"ZAPISZ GR�";   
	type		=	MENU_ITEM_TEXT;
	posx		= 	SAVEGAME_X1;
	posy		=	MENU_TITLE_Y;	
	flags		=	flags | IT_CHROMAKEYED | IT_TRANSPARENT;
	flags		=   flags & ~IT_SELECTABLE;
};

//--------------------------------------------------------------
// Gemeinsame Komponenten
//--------------------------------------------------------------

instance MENUITEM_LOADSAVE_THUMBPIC(C_MENU_ITEM_DEF)
{
	backpic		= "";	
	posx		= SAVEGAME_X2 - 64;
	posy		= SAVEGAME_Y;
	dimx		= MENU_PANEL3_X + MENU_PANEL3_WIDTH - SAVEGAME_X2 - 256 ;
	dimy		= MENU_PANEL3_X + MENU_PANEL3_WIDTH - SAVEGAME_X2;					
	flags		= flags  & ~IT_SELECTABLE;
};


//
// WorldName
//
instance MENUITEM_LOADSAVE_LEVELNAME(C_MENU_ITEM_DEF)	
{
	type		= MENU_ITEM_TEXT;
	text[0]		= "Obszar:";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_LEVELNAME;
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_LEVELNAME_VALUE(C_MENU_ITEM_DEF)
{
	type		= MENU_ITEM_TEXT;
	text[0]		= "";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_LEVELNAME + SAVEGAME_DY;
	dimx		= 8192 - posx;
	dimy		= 350;	
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};


//
// Datum und Uhrzeit
//
instance MENUITEM_LOADSAVE_DATETIME(C_MENU_ITEM_DEF)	
{	
	type		= MENU_ITEM_TEXT;
	text[0]		= "zapisane:";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_DATETIME;
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_DATETIME_VALUE(C_MENU_ITEM_DEF)
{
	type		= MENU_ITEM_TEXT;	
	text[0]		= "";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_DATETIME + SAVEGAME_DY;
	dimx		= 8192 - posx;
	dimy		= 350;	
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};




//
// Gametime
//

instance MENUITEM_LOADSAVE_GAMETIME(C_MENU_ITEM_DEF)	
{	
	type		= MENU_ITEM_TEXT;
	text[0]		= "Czas gry:";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_GAMETIME;
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};

instance MENUITEM_LOADSAVE_GAMETIME_VALUE(C_MENU_ITEM_DEF)
{
	type		= MENU_ITEM_TEXT;	
	text[0]		= "";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_GAMETIME+SAVEGAME_DY;
	dimx		= 8192 - posx;
	dimy		= 350;	
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};


//
// Playtime
//

instance MENUITEM_LOADSAVE_PLAYTIME_VALUE(C_MENU_ITEM_DEF)
{
	type		= MENU_ITEM_TEXT;	
	text[0]		= "";	
	posx		= SAVEGAME_X2;
	posy		= SAVEGAME_Y_GAMETIME + SAVEGAME_DY*2;
	dimx		= 8192 - posx;
	dimy		= 350;	
	fontName	= MENU_FONT_SMALL;
	flags		= flags  & ~IT_SELECTABLE;
};


//--------------------------------------------------------------
// SAVGE-GAME-Komponenten
//--------------------------------------------------------------

instance MENUITEM_SAVE_BACK(C_MENU_ITEM_PANEL3_DEF) 
{
	text[0]		=	"Wstecz";
	text[1]		=	"Wstecz";
	posx		=	SAVEGAME_X1;
	posy		=	MENU_BACK_Y;	
};

//--------------------------------------------------------------
// LOAD-GAME-Komponenten
//--------------------------------------------------------------


INSTANCE MENUITEM_LOAD_BACK(C_MENU_ITEM_DEF) 
{
	text[0]		=	"Wstecz";	
	posx		=	SAVEGAME_X1;	
	posy		=	MENU_BACK_Y;				
};

//--------------------------------------------------------------
// SAVE-SLOTS (Editierbar)
//--------------------------------------------------------------

INSTANCE MENUITEM_SAVE_SLOT1(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 1 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 0 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT1";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_SAVE_SLOT2(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 2 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 1 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT2";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT3(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 3 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 2 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT3";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_SAVE_SLOT4(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 4 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 3 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT4";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_SAVE_SLOT5(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 5 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 4 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT5";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT6(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 6 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 5 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT6";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT7(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 7 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 6 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT7";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_SAVE_SLOT8(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 8 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 7 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT8";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT9(C_MENU_ITEM_DEF) 
{
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 9 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar
		
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 8 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT9";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_SAVE_SLOT10(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 10 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 9 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT10";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};

INSTANCE MENUITEM_SAVE_SLOT11(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 11 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 10 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT11";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT12(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 12 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 11 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT12";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT13(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 13 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 12 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT13";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT14(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 14 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 13 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT14";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_SAVE_SLOT15(C_MENU_ITEM_DEF) 
{
	backPic		=   MENU_INPUT_BACK_PIC;
	type		=	MENU_ITEM_INPUT;
	text[0]		=   "---";
	text[1]		=   "Pozycja 15 - naci�nij ENTER, by zapisa� tu gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 14 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	=	SEL_ACTION_STARTITEM;
	onSelAction_S[0]=	"MENUITEM_SAVE_SLOT15";	
	onSelAction[1]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[1]=	"SAVEGAME_SAVE";
	fontName	=	MENU_FONT_SMALL;	
};


//--------------------------------------------------------------
// LOAD-SLOTS (nicht editierbar)
//--------------------------------------------------------------


INSTANCE MENUITEM_LOAD_SLOT1(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 1 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 0 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_LOAD_SLOT2(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 2 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 1 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;	
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT3(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 3 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 2 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_LOAD_SLOT4(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 4 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 3 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_LOAD_SLOT5(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 5 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 4 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT6(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 6 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 5 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT7(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 7 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 6 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_LOAD_SLOT8(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";	
	text[1]		=   "Pozycja 8 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 7 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT9(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 9 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 8 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;
};
INSTANCE MENUITEM_LOAD_SLOT10(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 10 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 9 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};



INSTANCE MENUITEM_LOAD_SLOT11(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 11 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 10 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT12(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 12 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 11 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT13(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 13 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 12 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT14(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 14 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 13 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
INSTANCE MENUITEM_LOAD_SLOT15(C_MENU_ITEM_DEF) 
{
	text[0]		=   "---";
	text[1]		=   "Pozycja 15 - naci�nij ENTER, by otworzy� t� gr�."; // Kommentar	
	
	posx		=	SAVEGAME_X1;
	posy		=	SAVEGAME_Y + 14 * SAVEGAME_DY;
	dimx		= 	SAVEGAME_DX1;
	dimy		=	SAVEGAME_DY;
	onSelAction[0]	= 	SEL_ACTION_CLOSE;
	onSelAction_S[0]=	"SAVEGAME_LOAD";
	fontName	=	MENU_FONT_SMALL;	
};
