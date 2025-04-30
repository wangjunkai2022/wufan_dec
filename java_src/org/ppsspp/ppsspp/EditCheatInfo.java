package org.ppsspp.ppsspp;
/* loaded from: classes5.dex */
public class EditCheatInfo {
    public boolean GBA_IS_GS;
    public String cheatName;
    public String cheatValue;
    public boolean isEnable;

    public EditCheatInfo(boolean z3, boolean z4, String str, String str2) {
        this.cheatName = "";
        this.cheatValue = "";
        this.isEnable = false;
        this.GBA_IS_GS = false;
        this.cheatName = str;
        this.cheatValue = str2;
        this.isEnable = z3;
        this.GBA_IS_GS = z4;
    }
}
