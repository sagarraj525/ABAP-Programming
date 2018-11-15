*&---------------------------------------------------------------------*
*&  Include           Z_TH0701_ALV_2_GRIDALV_F01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  SELECT_DATA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
*& Written by TaeHyeong
*& Reporting Date `18.11.12
*----------------------------------------------------------------------
* New ����� Ȱ���Ͽ�, CREATE OBJECT ������ ������ �� ������ Ȯ���غ���.
* New�� NetWeaver 7.40 �̻���� �����ϴ� �����.
* ������ �ٷ�� ���α׷��� ALV -> Z_TH0701_ALV_2_GRIDALV -> Z_TH0701_ALV_2_GRIDALV_F01 �� �����Ͽ� �������.
* ---> ���� �� ���� �����δ� ������ �ȵ�. 
FORM select_data.
  SELECT *
    FROM zthsoccer INTO TABLE it_tab
    UP TO 10 ROWS.
ENDFORM.                    " SELECT_DATA
*&---------------------------------------------------------------------*
*&      Module  INIT_CONT  OUTPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module INIT_CONT output.

    IF container IS INITIAL.
*    CREATE OBJECT container                                               " ���� �ڵ�.
*      EXPORTING
*        container_name = 'THCONT1'.
     CREATE OBJECT grid
     EXPORTING
        i_parent = NEW cl_gui_custom_container( container_name = 'THCONT1' ). "New �������� ���� �ּ�ó���� �������� ��ü�Ͽ���.

     CALL METHOD grid->set_table_for_first_display  
     EXPORTING
       i_structure_name = 'ZTHSOCCER'               
       CHANGING
         it_outtab = it_tab.
     ENDIF.



endmodule.                 " INIT_CONT  OUTPUT