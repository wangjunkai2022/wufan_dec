package com.papa91.activity;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.Comparator;
/* loaded from: classes4.dex */
public class Emulator {
    public static int CONTROL_CMD_RESET = 2;
    public static int CONTROL_CMD_RESUME = 1;
    public static int CONTROL_CMD_STOP = 3;
    public static int CONTROL_TYPE_STATUS = 1;

    /* loaded from: classes4.dex */
    public static class SortComparator implements Comparator {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((String) obj).compareTo((String) obj2);
        }
    }

    public static native short EmulatorReadRAM16(int i2);

    public static native byte EmulatorReadRAM8(int i2);

    public static native int EmulatorWriteRAM16(int i2, int i4);

    public static native int EmulatorWriteRAM8(int i2, int i4);

    public static native int addIpsPatch(String str);

    public static native int cheatEnable(int i2, int i4);

    public static native int coreLoop(int i2);

    public static native int deinit();

    public static native int drawBmp(Bitmap bitmap);

    public static native int drawGL();

    public static native int enableIpsPatch(int i2);

    public static native int getCheatOptionCount(int i2);

    public static native String getCheatOptionName(int i2, int i4);

    public static native String getDrvInfo(int i2, int i4);

    public static native String getIpsPatchDesc(String str);

    public static native int getRomInfo(String str, int i2);

    public static native String getRomText(String str, int i2, int i4);

    public static native byte[] getStateBuff();

    public static native int getVideoHeight();

    public static native int getVideoWidth();

    public static native int init(int i2);

    public static native int ipsInit(int i2);

    public static native int loadRom(String str);

    public static native int loadState(String str);

    public static native int saveState(String str);

    public static native int setControl(int i2, int i4);

    public static native int setGLQuality(int i2);

    public static native int setKeyState(int i2, int i4);

    public static native int setSoundEnable(int i2);

    public static native int setStateBuff(byte[] bArr, int i2);

    public static native String signData(Context context);

    public static native int soInit(int i2, String str, String str2, String str3);

    public static native int unloadRom();
}
