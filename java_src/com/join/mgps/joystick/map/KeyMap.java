package com.join.mgps.joystick.map;

import java.util.HashMap;
/* loaded from: classes4.dex */
public class KeyMap {
    public static final int MAX_FILE_NUM = 4;
    public static final String[] dcDefKeysValue;
    public static final String dcKeyMapSection = "DC_KEY_MAP";
    public static final String[] dcKeysKey;
    public static final String[] emuDefKeysValue;
    public static final String emuKeyMapSection = "EMU_KEY_MAP";
    public static final String[] emuKeysKey;
    public static final String[] fbaDefKeysValue;
    public static final String fbaKeyMapSection = "FBA_KEY_MAP";
    public static final String[] fbaKeysKey;
    public static final String[] fcDefKeysValue;
    public static final String fcKeyMapSection = "FC_KEY_MAP";
    public static final String[] fcKeysKey;
    public static final String[] gbaDefKeysValue;
    public static final String gbaKeyMapSection = "GBA_KEY_MAP";
    public static final String[] gbaKeysKey;
    public static final String[] gbcDefKeysValue;
    public static final String gbcKeyMapSection = "GBC_KEY_MAP";
    public static final String[] gbcKeysKey;
    public static final String keySection = "KEY";
    public static final String[] mdDefKeysValue;
    public static final String mdKeyMapSection = "MD_KEY_MAP";
    public static final String[] mdKeysKey;
    public static final String[] n64DefKeysValue;
    public static final String n64KeyMapSection = "N64_KEY_MAP";
    public static final String[] n64KeysKey;
    public static final String[] psDefKeysValue;
    public static final String psKeyMapSection = "PS_KEY_MAP";
    public static final String[] psKeysKey;
    public static final String[] pspDefKeysValue;
    public static final String pspKeyMapSection = "PSP_KEY_MAP";
    public static final String[] pspKeysKey;
    public static final String[] sections;
    public static final String[] sfcDefKeysValue;
    public static final String sfcKeyMapSection = "SFC_KEY_MAP";
    public static final String[] sfcKeysKey;
    public static final String[] wscDefKeysValue;
    public static final String wscKeyMapSection = "WSC_KEY_MAP";
    public static final String[] wscKeysKey;
    public static final String[] inifiles = {"key_map.ini", "", "", ""};
    public static final int[] defJoystickKeys = {109, 108, 99, 96, 100, 97, 102, 104, 103, 105, 21, 19, 22, 20, 106, 107};
    public static final int[] defKeyboardKeys = {67, 66, 8, 9, 11, 10, 12, 14, 13, 15, 29, 51, 32, 47, 16, 7};
    public static final String[] keysKey = {b.f50911c, b.f50914d, b.f50917e, b.f50923g, b.f50920f, b.f50926h, b.f50929i, b.f50932j, b.f50935k, b.f50938l, b.f50941m, b.f50944n, b.f50950p, b.f50947o, b.f50953q, b.f50956r};

    /* loaded from: classes4.dex */
    public enum EmuMap {
        FBA(KeyMap.fbaKeyMapSection, KeyMap.fbaKeysKey, KeyMap.fbaDefKeysValue),
        FC(KeyMap.fcKeyMapSection, KeyMap.fcKeysKey, KeyMap.fcDefKeysValue),
        SFC(KeyMap.sfcKeyMapSection, KeyMap.sfcKeysKey, KeyMap.sfcDefKeysValue),
        PSP(KeyMap.pspKeyMapSection, KeyMap.pspKeysKey, KeyMap.pspDefKeysValue),
        GBA(KeyMap.gbaKeyMapSection, KeyMap.gbaKeysKey, KeyMap.gbaDefKeysValue),
        MD(KeyMap.mdKeyMapSection, KeyMap.mdKeysKey, KeyMap.mdDefKeysValue),
        PS(KeyMap.psKeyMapSection, KeyMap.psKeysKey, KeyMap.psDefKeysValue),
        WSC(KeyMap.wscKeyMapSection, KeyMap.wscKeysKey, KeyMap.wscDefKeysValue),
        GBC(KeyMap.gbcKeyMapSection, KeyMap.gbcKeysKey, KeyMap.gbcDefKeysValue),
        DC(KeyMap.dcKeyMapSection, KeyMap.dcKeysKey, KeyMap.dcDefKeysValue),
        N64(KeyMap.n64KeyMapSection, KeyMap.n64KeysKey, KeyMap.n64DefKeysValue);
        
        public String[] keysKey;
        public HashMap<String, String> map;
        public String section;

        EmuMap(String str, String[] strArr, String[] strArr2) {
            this.section = str;
            this.keysKey = strArr;
            if (strArr == null) {
                return;
            }
            boolean z3 = strArr2 == null || strArr2.length != strArr.length;
            this.map = new HashMap<>();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (z3) {
                    this.map.put(strArr[i2], "");
                } else {
                    this.map.put(strArr[i2], strArr2[i2]);
                }
            }
        }

        public static EmuMap getEmuMap(String str) {
            EmuMap[] values;
            if (str == null || str.trim().equals("")) {
                return null;
            }
            for (EmuMap emuMap : values()) {
                if (emuMap.section.equals(str)) {
                    return emuMap;
                }
            }
            return null;
        }

        public String defValue(String str) {
            HashMap<String, String> hashMap = this.map;
            return hashMap != null ? "" : hashMap.get(str);
        }
    }

    static {
        KeyCodes keyCodes;
        KeyCodes keyCodes2;
        KeyCodes keyCodes3;
        KeyCodes keyCodes4;
        KeyCodes keyCodes5;
        KeyCodes keyCodes6;
        KeyCodes keyCodes7;
        StringBuilder sb = new StringBuilder();
        KeyCodes keyCodes8 = KeyCodes.KEY_SELECT;
        sb.append(keyCodes8.value());
        sb.append("");
        StringBuilder sb2 = new StringBuilder();
        KeyCodes keyCodes9 = KeyCodes.KEY_START;
        sb2.append(keyCodes9.value());
        sb2.append("");
        StringBuilder sb3 = new StringBuilder();
        KeyCodes keyCodes10 = KeyCodes.KEY_A;
        sb3.append(keyCodes10.value());
        sb3.append("");
        StringBuilder sb4 = new StringBuilder();
        KeyCodes keyCodes11 = KeyCodes.KEY_B;
        sb4.append(keyCodes11.value());
        sb4.append("");
        StringBuilder sb5 = new StringBuilder();
        KeyCodes keyCodes12 = KeyCodes.KEY_C;
        sb5.append(keyCodes12.value());
        sb5.append("");
        StringBuilder sb6 = new StringBuilder();
        KeyCodes keyCodes13 = KeyCodes.KEY_D;
        sb6.append(keyCodes13.value());
        sb6.append("");
        StringBuilder sb7 = new StringBuilder();
        sb7.append(KeyCodes.KEY_E.value());
        sb7.append("");
        StringBuilder sb8 = new StringBuilder();
        sb8.append(KeyCodes.KEY_F.value());
        sb8.append("");
        fbaKeysKey = new String[]{sb.toString(), sb2.toString(), sb3.toString(), sb4.toString(), sb5.toString(), sb6.toString(), sb7.toString(), sb8.toString(), (keyCodes10.value() | keyCodes11.value()) + "", (keyCodes12.value() | keyCodes13.value()) + "", (keyCodes10.value() | keyCodes11.value() | keyCodes12.value()) + ""};
        fbaDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50917e, b.f50923g, b.f50920f, b.f50926h, b.f50929i, b.f50932j, b.f50935k, b.f50938l, b.f50956r};
        fcKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes13.value() + "", keyCodes12.value() + "", keyCodes11.value() + "", keyCodes10.value() + "", (keyCodes10.value() | keyCodes11.value()) + ""};
        fcDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50923g, b.f50926h, b.f50917e, b.f50920f, b.f50935k};
        StringBuilder sb9 = new StringBuilder();
        sb9.append(KeyCodes.KEY_L1.value());
        sb9.append("");
        StringBuilder sb10 = new StringBuilder();
        sb10.append(KeyCodes.KEY_R1.value());
        sb10.append("");
        sfcKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes12.value() + "", keyCodes10.value() + "", keyCodes13.value() + "", keyCodes11.value() + "", sb9.toString(), sb10.toString()};
        sfcDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50917e, b.f50923g, b.f50920f, b.f50926h, b.f50929i, b.f50935k};
        pspKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes12.value() + "", keyCodes10.value() + "", keyCodes13.value() + "", keyCodes11.value() + "", keyCodes3.value() + "", keyCodes4.value() + ""};
        pspDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50917e, b.f50923g, b.f50920f, b.f50926h, b.f50929i, b.f50935k};
        gbaKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes12.value() + "", keyCodes11.value() + "", keyCodes13.value() + "", keyCodes10.value() + "", keyCodes4.value() + "", keyCodes3.value() + ""};
        gbaDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50926h, b.f50917e, b.f50920f, b.f50923g, b.f50935k, b.f50929i};
        mdKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes13.value() + "", keyCodes11.value() + "", keyCodes.value() + "", keyCodes10.value() + "", keyCodes12.value() + "", keyCodes2.value() + ""};
        mdDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50917e, b.f50926h, b.f50920f, b.f50923g, b.f50935k, b.f50929i};
        StringBuilder sb11 = new StringBuilder();
        sb11.append(KeyCodes.KEY_L2.value());
        sb11.append("");
        StringBuilder sb12 = new StringBuilder();
        sb12.append(KeyCodes.KEY_R2.value());
        sb12.append("");
        psKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes12.value() + "", keyCodes10.value() + "", keyCodes11.value() + "", keyCodes13.value() + "", keyCodes3.value() + "", keyCodes4.value() + "", sb11.toString(), sb12.toString()};
        psDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50917e, b.f50923g, b.f50920f, b.f50926h, b.f50929i, b.f50935k, b.f50932j, b.f50938l};
        StringBuilder sb13 = new StringBuilder();
        sb13.append(KeyCodes.KEY_LEFT1.value());
        sb13.append("");
        wscKeysKey = new String[]{keyCodes8.value() + "", keyCodes9.value() + "", keyCodes10.value() + "", keyCodes11.value() + "", KeyCodes.KEY_UP1.value() + "", KeyCodes.KEY_RIGHT1.value() + "", sb13.toString(), KeyCodes.KEY_DOWN1.value() + "", KeyCodes.KEY_LEFT.value() + "", KeyCodes.KEY_UP.value() + "", KeyCodes.KEY_RIGHT.value() + "", KeyCodes.KEY_DOWN.value() + ""};
        wscDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50923g, b.f50926h, b.f50929i, b.f50935k, b.f50932j, b.f50938l, b.f50941m, b.f50944n, b.f50950p, b.f50947o};
        StringBuilder sb14 = new StringBuilder();
        sb14.append(keyCodes8.value());
        sb14.append("");
        StringBuilder sb15 = new StringBuilder();
        sb15.append(keyCodes9.value());
        sb15.append("");
        StringBuilder sb16 = new StringBuilder();
        sb16.append(keyCodes13.value());
        sb16.append("");
        StringBuilder sb17 = new StringBuilder();
        sb17.append(keyCodes12.value());
        sb17.append("");
        StringBuilder sb18 = new StringBuilder();
        sb18.append(keyCodes11.value());
        sb18.append("");
        StringBuilder sb19 = new StringBuilder();
        sb19.append(keyCodes10.value());
        sb19.append("");
        StringBuilder sb20 = new StringBuilder();
        sb20.append(keyCodes10.value() | keyCodes11.value());
        sb20.append("");
        gbcKeysKey = new String[]{sb14.toString(), sb15.toString(), sb16.toString(), sb17.toString(), sb18.toString(), sb19.toString(), sb20.toString()};
        gbcDefKeysValue = new String[]{b.f50911c, b.f50914d, b.f50923g, b.f50926h, b.f50917e, b.f50920f, b.f50935k};
        dcKeysKey = new String[]{keyCodes9.value() + "", keyCodes10.value() + "", keyCodes11.value() + "", keyCodes12.value() + "", keyCodes13.value() + "", keyCodes3.value() + "", keyCodes4.value() + ""};
        dcDefKeysValue = new String[]{b.f50914d, b.f50923g, b.f50926h, b.f50917e, b.f50920f, b.f50929i, b.f50935k};
        n64KeysKey = new String[]{keyCodes9.value() + "", keyCodes10.value() + "", keyCodes11.value() + "", keyCodes12.value() + "", keyCodes13.value() + "", keyCodes3.value() + "", keyCodes4.value() + "", keyCodes5.value() + "", keyCodes6.value() + "", keyCodes7.value() + ""};
        n64DefKeysValue = new String[]{b.f50914d, b.f50923g, b.f50926h, b.f50917e, b.f50920f, b.f50929i, b.f50935k, b.f50932j, b.f50938l, b.f50953q};
        emuKeysKey = new String[]{"hideVirtual", fbaKeyMapSection, fcKeyMapSection, sfcKeyMapSection, gbaKeyMapSection, pspKeyMapSection, mdKeyMapSection, psKeyMapSection, wscKeyMapSection, gbcKeyMapSection, dcKeyMapSection, n64KeyMapSection};
        emuDefKeysValue = new String[]{"true", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1"};
        sections = new String[]{keySection, emuKeyMapSection, fbaKeyMapSection, sfcKeyMapSection, fcKeyMapSection, gbaKeyMapSection, pspKeyMapSection, mdKeyMapSection, psKeyMapSection, wscKeyMapSection, gbcKeyMapSection, dcKeyMapSection, n64KeyMapSection};
    }
}
