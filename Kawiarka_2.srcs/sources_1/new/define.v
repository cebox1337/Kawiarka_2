`ifndef MY_DEFINES_SV
`define MY_DEFINES_SV
    `timescale 1us / 1ns   
    
     // stany choose module - wyboru
       `define NIC   2'b000      // bezczynnosc 
       `define m1    2'b001      // 1
       `define m2    2'b010      // 1 z�
       `define m3    2'b011      // 1.50 z�
       
       //typy wyboru
          `define k0  2'b000        // brak wyboru
          `define k1  2'b001        // kawa 1 esspresso
          `define k2  2'b010        // kawa 2 dubleesspresso
          `define k3  2'b011        // kawa 3 americana
       
    // MODU� G��WNY STANY
    
    `define IDLE       = 4'b0000;        // stan bezczynnosci
    `define WORKING    = 4'b0001;        // stan pracy
    `define ERROR      = 4'b0010;        // stan b�edu - zwracam 
    `define START      = 4'b0011;        // stan przygotowania do pracy
    `define GRINDING   = 4'b0100;        // mielenie
    `define CAFFE_POUR = 4'b0101;        // sypanie kawy
    `define WATER_BOIL = 4'b0110         // grzanie wody
    `define WATER_POUR = 4'b0111;        // zalewanie gor�ca wod�
    `define CLEANING   = 4'b1000;        // czyszczenie 
  
    
    //STEROWANIE URZDZENIAMI
    `define CMD_ZERO                3'b000
    `define CMD_START               3'b001  // rozpocznij prac�
    `define CMD_GRIND_CAFFE         3'b010  // zmiel kaw�
    `define CMD_CAFFE_POUR          3'b100  // syp kaw 
    `define CMD_WATER_BOIL          3'b101  // grzanie wody
    `define CMD_WATER_POUR          3'b110  // zalej gor�c� wod�
    `define CMD_CLEANING            3'b111  // czy��
        
       
    //MODU�U WYBORU - BUTTONY 
    `define CMD_NO       3'b000  //brak wyboru  
    `define CMD_K1       3'b001  //esspresso   
    `define CMD_K2       3'b010  //duble esspresso   
    `define CMD_K3       3'b011  //amerykanska 
    `define CMD_RESET    3'b100  
//    // konieczne
//    `define  CMD_RESET1   3'b101
//    `define  CMD_RESET2   3'b110
//    `define  CMD_RESET3   3'b111
        
    // MODU� WYBORU - odpowiedzi (return)
    `define  R_NO        2'b00
    `define  R_WORKING   2'b01
    `define  R_ERROR     2'b10
    `define  R_OK        2'b11
    //`define  ODP_RESET   2'b11    
	
	// KOMENDY LICZNIKA
    `define LICZNIK_NULL        4'b0000
    `define ODLICZ_KUBEK        4'b0001
    `define ODLICZ_KAWA_K11     4'b0010
    `define ODLICZ_KAWA_K2      4'b0011
    `define ODLICZ_KAWA_K3      4'b0100
    `define ODLICZ_WODA_K1      4'b0101
    `define ODLICZ_WODA_K2      4'b0110
    `define ODLICZ_WODA_K3      4'b0111
    `define ODLICZ_GRZANIE_WODY  4'b1000
    `define ODLICZ_NAPELN       4'b1001
    `define ODLICZ_CZYSC        4'b1010
    `define LICZNIK_RESET       4'b1111
    
    // ODPOWIEDZI LICZNIKA
    `define NIC_NIE_ODLICZAM    1'b0
    `define SKONCZYLEM_ODLICZAC 1'b0
    `define ODLICZAM            1'b1
    
    // CZASY DLA POSZCZEG�LNYCH OPCJI (w sekundach)
    // MODU� PRZELICZY TO NA ODPOWIEDNI� LICZB�
    // UWZGL�DNIAJ�C CZ�STOTLIWO�� ZEGARA
    `define CZAS_KUBEK          2
    `define CZAS_KAWA_OPCJA1    4
    `define CZAS_KAWA_OPCJA2    6
    `define CZAS_KAWA_OPCJA3    4
    `define CZAS_WODA_OPCJA1    15
    `define CZAS_WODA_OPCJA2    30
    `define CZAS_WODA_OPCJA3    20
    `define CZAS_MLEKO          30
    `define CZAS_NAPELN         3
    `define CZAS_CZYSC          5
    
    // wy�wietlacz - liczby i znaki
    `define W_0             4'b0000 // 0
    `define W_1             4'b0001 // 1
    `define W_2             4'b0010 // 2
    `define W_3             4'b0011 // 3
    `define W_4             4'b0100 // 4
    `define W_5             4'b0101 // 5
    `define W_6             4'b0110 // 6
    `define W_7             4'b0111 // 7
    `define W_8             4'b1000 // 8
    `define W_9             4'b1001 // 9
                    
    `define W_MM            4'b1010 // mm
    `define W_UM            4'b1011 // um
    `define W_UR            4'b1100 // ur
    `define W_UL            4'b1101 // ul
    `define W_DM            4'b1110 // dm
    `define W_NULL          4'b1111 // nic
`endif