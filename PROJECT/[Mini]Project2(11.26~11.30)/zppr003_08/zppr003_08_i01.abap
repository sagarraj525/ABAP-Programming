*&---------------------------------------------------------------------*
*&  Include           ZPPR003_08_I01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module USER_COMMAND_0100 input.
CASE OK_CODE.
  WHEN 'BACK'.
    LEAVE TO SCREEN 0.
    ENDCASE.
endmodule.                 " USER_COMMAND_0100  INPUT

----------------------------------------------------------------------------------
Extracted by Direct Download Enterprise version 1.3.1 - E.G.Mellodew. 1998-2005 UK. Sap Release 701