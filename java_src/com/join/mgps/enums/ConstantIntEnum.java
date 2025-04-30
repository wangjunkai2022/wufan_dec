package com.join.mgps.enums;

import com.papa91.arc.CContext;
import tv.danmaku.ijk.media.player.IMediaPlayer;
/* loaded from: classes4.dex */
public enum ConstantIntEnum {
    GAMEOL(7, "网游"),
    CONSOLEGAME(23, "单机"),
    FBA(31, "街机"),
    NDS(32, "NDS"),
    GBA(33, CContext.SCENE_GBA),
    PSP(34, CContext.SCENE_PSP),
    FC(35, CContext.SCENE_FC),
    AVG(39, "AVG"),
    FIGHT(41, "FIGHT"),
    SFC(43, "SFC"),
    WORLD(44, "WORLD"),
    NET(45, "NET"),
    MGAME(46, "MGAME"),
    DATA(47, "DATA"),
    OBB(48, "OBB"),
    MD(51, "MD"),
    GBA_ENHANCE(52, "GBA_ENHANCE"),
    PS(53, "PS"),
    WSC(54, "WSC"),
    CHOICENESS(55, "精选应用"),
    GBC(56, "GBC"),
    N64(57, "N64"),
    ONS(58, "ONS"),
    DC(60, "DC"),
    H5(102, "H5"),
    VA32(165, "VA32"),
    VA64(166, "VA64"),
    PS2(167, "PS2"),
    FEATURED_ONLINE(10001, "精选网游"),
    LARGE_SINGLE(10002, "大型单机"),
    OBBDATA(154, "OBBDATA"),
    MOD(IMediaPlayer.MEDIA_INFO_VIDEO_DECODED_START, "MOD");
    
    private String nickName;
    private int value;

    ConstantIntEnum(int i2, String str) {
        this.value = 0;
        this.nickName = "";
        this.value = i2;
        this.nickName = str;
    }

    public String nickName() {
        return this.nickName;
    }

    public int value() {
        return this.value;
    }
}
