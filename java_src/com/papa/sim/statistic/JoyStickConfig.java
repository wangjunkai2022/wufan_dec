package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class JoyStickConfig {
    public static final int TYPE_DC = 60;
    public static final int TYPE_FBA = 31;
    public static final int TYPE_FC = 35;
    public static final int TYPE_GBA = 33;
    public static final int TYPE_GBC = 56;
    public static final int TYPE_MD = 51;
    public static final int TYPE_N64 = 57;
    public static final int TYPE_NDS = 32;
    public static final int TYPE_ONS = 58;
    public static final int TYPE_PS = 53;
    public static final int TYPE_PSP = 34;
    public static final int TYPE_SFC = 43;
    public static final int TYPE_WSC = 54;
    private String file;
    private String gamepad_mac;
    private String gamepad_name;
    private int id;
    private int type;
    private int uid;
    private long update_time;

    public String getFile() {
        return this.file;
    }

    public String getGamepad_mac() {
        return this.gamepad_mac;
    }

    public String getGamepad_name() {
        return this.gamepad_name;
    }

    public int getId() {
        return this.id;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public long getUpdate_time() {
        return this.update_time;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public void setGamepad_mac(String str) {
        this.gamepad_mac = str;
    }

    public void setGamepad_name(String str) {
        this.gamepad_name = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUpdate_time(long j4) {
        this.update_time = j4;
    }
}
