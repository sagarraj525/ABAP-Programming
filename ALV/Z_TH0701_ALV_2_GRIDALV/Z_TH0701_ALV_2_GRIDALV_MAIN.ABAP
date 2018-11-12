*&---------------------------------------------------------------------*
*& Report  Z_TH0701_ALV_2_GRIDALV
*&
*&---------------------------------------------------------------------*
*& Writen by TaeHyeong
*& Reporting Data: `18.11.12
*&---------------------------------------------------------------------*
*///////////////////////////////////////////////////////////////////////
* [Setting]
*  1. Screen Painter: Cutsom Container ���� (Name = 'TH_CONT1')
*  2. Screen: 'BACK' ��ư ��� ����. ---> �����ϸ�, ���� SAP�� �ʱ�ȭ������ ���ư��� ���� ������ �� �ִ�. (�Ź�, SE80 ġ�� �������Ƿ�...)
*  3. Screen: ok_code ����.
* [INCLUDE]
*  1. F01: ��� ���� ���� ����.
*  2. O01: ȭ�� ȣ�� �� Status ����.
*  3. I01: OK_CODE ���� ó��.
*  4. TOP: �۷ι� ���� ����.
*  5. MAIN: SELECTION SCREEN �� CALL ��ũ�� ȣ�⹮ ����.
*///////////////////////////////////////////////////////////////////////


INCLUDE Z_TH0701_ALV_2_GRIDALV_TOP              .    " global Data

 INCLUDE Z_TH0701_ALV_2_GRIDALV_O01              .  " PBO-Modules
 INCLUDE Z_TH0701_ALV_2_GRIDALV_I01              .  " PAI-Modules
 INCLUDE Z_TH0701_ALV_2_GRIDALV_F01              .  " FORM-Routines


START-OF-SELECTION.
 PERFORM select_data.
 END-OF-SELECTION.
 CALL SCREEN 100.