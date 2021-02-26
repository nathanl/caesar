defmodule CaesarTest do
  use ExUnit.Case
  doctest Caesar

  describe "cipher/2" do
    test "ciphers with 0" do
      assert Caesar.cipher("ABC", 0) == "ABC"
    end

    test "ciphers with any positive key" do
      assert Caesar.cipher("A", 1) == "B"
      assert Caesar.cipher("A", 2) == "C"
      assert Caesar.cipher("A", 3) == "D"
      assert Caesar.cipher("A", 4) == "E"
      assert Caesar.cipher("A", 5) == "F"
      assert Caesar.cipher("A", 6) == "G"
      assert Caesar.cipher("A", 7) == "H"
      assert Caesar.cipher("A", 8) == "I"
      assert Caesar.cipher("A", 9) == "J"
      assert Caesar.cipher("A", 10) == "K"
      assert Caesar.cipher("A", 11) == "L"
      assert Caesar.cipher("A", 12) == "M"
      assert Caesar.cipher("A", 13) == "N"
      assert Caesar.cipher("A", 14) == "O"
      assert Caesar.cipher("A", 15) == "P"
      assert Caesar.cipher("A", 16) == "Q"
      assert Caesar.cipher("A", 17) == "R"
      assert Caesar.cipher("A", 18) == "S"
      assert Caesar.cipher("A", 19) == "T"
      assert Caesar.cipher("A", 20) == "U"
      assert Caesar.cipher("A", 21) == "V"
      assert Caesar.cipher("A", 22) == "W"
      assert Caesar.cipher("A", 23) == "X"
      assert Caesar.cipher("A", 24) == "Y"
      assert Caesar.cipher("A", 25) == "Z"
      assert Caesar.cipher("A", 26) == "A"
      assert Caesar.cipher("A", 27) == "B"
    end

    test "ciphers with any negative key" do
      assert Caesar.cipher("A", -1) == "Z"
      assert Caesar.cipher("A", -2) == "Y"
      assert Caesar.cipher("A", -3) == "X"
      assert Caesar.cipher("A", -4) == "W"
      assert Caesar.cipher("A", -5) == "V"
      assert Caesar.cipher("A", -6) == "U"
      assert Caesar.cipher("A", -7) == "T"
      assert Caesar.cipher("A", -8) == "S"
      assert Caesar.cipher("A", -9) == "R"
      assert Caesar.cipher("A", -10) == "Q"
      assert Caesar.cipher("A", -11) == "P"
      assert Caesar.cipher("A", -12) == "O"
      assert Caesar.cipher("A", -13) == "N"
      assert Caesar.cipher("A", -14) == "M"
      assert Caesar.cipher("A", -15) == "L"
      assert Caesar.cipher("A", -16) == "K"
      assert Caesar.cipher("A", -17) == "J"
      assert Caesar.cipher("A", -18) == "I"
      assert Caesar.cipher("A", -19) == "H"
      assert Caesar.cipher("A", -20) == "G"
      assert Caesar.cipher("A", -21) == "F"
      assert Caesar.cipher("A", -22) == "E"
      assert Caesar.cipher("A", -23) == "D"
      assert Caesar.cipher("A", -24) == "C"
      assert Caesar.cipher("A", -25) == "B"
      assert Caesar.cipher("A", -26) == "A"
    end

    test "deciphers what it ciphers" do
      text = "CHUNKY BACON!"

      for i <- -100..100 do
        result =
          text
          |> Caesar.cipher(i)
          |> Caesar.cipher(0 - i)

        assert text == result
      end
    end

    test "ciphers with a multi-item key" do
      assert Caesar.cipher("ABC DEF", [1, 2]) == "BDD FFH"
    end

    test "leaves non-letters as-is" do
      assert Caesar.cipher("AAAH! OH NO?", 1) == "BBBI! PI OP?"
    end
  end

  describe "cipherings/1" do
    test "comes up with all possible one-key cipherings" do
      assert Caesar.cipherings("N QTAJ RD XRFWY PNIX") ==
               [
                 {1, "M PSZI QC WQEVX OMHW"},
                 {2, "L ORYH PB VPDUW NLGV"},
                 {3, "K NQXG OA UOCTV MKFU"},
                 {4, "J MPWF NZ TNBSU LJET"},
                 {5, "I LOVE MY SMART KIDS"},
                 {6, "H KNUD LX RLZQS JHCR"},
                 {7, "G JMTC KW QKYPR IGBQ"},
                 {8, "F ILSB JV PJXOQ HFAP"},
                 {9, "E HKRA IU OIWNP GEZO"},
                 {10, "D GJQZ HT NHVMO FDYN"},
                 {11, "C FIPY GS MGULN ECXM"},
                 {12, "B EHOX FR LFTKM DBWL"},
                 {13, "A DGNW EQ KESJL CAVK"},
                 {14, "Z CFMV DP JDRIK BZUJ"},
                 {15, "Y BELU CO ICQHJ AYTI"},
                 {16, "X ADKT BN HBPGI ZXSH"},
                 {17, "W ZCJS AM GAOFH YWRG"},
                 {18, "V YBIR ZL FZNEG XVQF"},
                 {19, "U XAHQ YK EYMDF WUPE"},
                 {20, "T WZGP XJ DXLCE VTOD"},
                 {21, "S VYFO WI CWKBD USNC"},
                 {22, "R UXEN VH BVJAC TRMB"},
                 {23, "Q TWDM UG AUIZB SQLA"},
                 {24, "P SVCL TF ZTHYA RPKZ"},
                 {25, "O RUBK SE YSGXZ QOJY"},
                 {26, "N QTAJ RD XRFWY PNIX"}
               ]
    end
  end
end
