# Caesar

Caesar Cipher toy for playing with kids.

## Usage

```
iex -S mix
Caesar.cipher("APPLES", 1) # => "BQQMFT"
Caesar.cipher("BQQMFT", -1) # => "APPLES"
Caesar.cipherings("LILLG, GWC AUMTT NCVVG!") # =>
[
  {1, "KHKKF, FVB ZTLSS MBUUF!"},
  {2, "JGJJE, EUA YSKRR LATTE!"},
  {3, "IFIID, DTZ XRJQQ KZSSD!"},
  {4, "HEHHC, CSY WQIPP JYRRC!"},
  {5, "GDGGB, BRX VPHOO IXQQB!"},
  {6, "FCFFA, AQW UOGNN HWPPA!"},
  {7, "EBEEZ, ZPV TNFMM GVOOZ!"},
  {8, "DADDY, YOU SMELL FUNNY!"}, # Aha, your key was 8!
  {9, "CZCCX, XNT RLDKK ETMMX!"},
  {10, "BYBBW, WMS QKCJJ DSLLW!"},
  {11, "AXAAV, VLR PJBII CRKKV!"},
  {12, "ZWZZU, UKQ OIAHH BQJJU!"},
  {13, "YVYYT, TJP NHZGG APIIT!"},
  {14, "XUXXS, SIO MGYFF ZOHHS!"},
  {15, "WTWWR, RHN LFXEE YNGGR!"},
  {16, "VSVVQ, QGM KEWDD XMFFQ!"},
  {17, "URUUP, PFL JDVCC WLEEP!"},
  {18, "TQTTO, OEK ICUBB VKDDO!"},
  {19, "SPSSN, NDJ HBTAA UJCCN!"},
  {20, "RORRM, MCI GASZZ TIBBM!"},
  {21, "QNQQL, LBH FZRYY SHAAL!"},
  {22, "PMPPK, KAG EYQXX RGZZK!"},
  {23, "OLOOJ, JZF DXPWW QFYYJ!"},
  {24, "NKNNI, IYE CWOVV PEXXI!"},
  {25, "MJMMH, HXD BVNUU ODWWH!"},
  {26, "LILLG, GWC AUMTT NCVVG!"}
]
```
