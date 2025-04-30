package com.papa91.arc.util;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.Bugly;
import java.io.File;
/* loaded from: classes4.dex */
public class GameSettings {
    private static Context context;

    public static boolean getCustomSettingEnable() {
        return Boolean.parseBoolean((String) queryConfig(null, "CustomSettingEnable", Bugly.SDK_IS_DEV));
    }

    public static int getGameSettingLevel() {
        String str = (String) queryConfig(null, "GameSettingLevel", getGameSettingTotalLevel() == 5 ? "4" : "1");
        return Integer.parseInt(TextUtils.isEmpty(str) ? "1" : str);
    }

    public static int getGameSettingTotalLevel() {
        String str = (String) queryConfig(null, "GameSettingTotalLevel", "4");
        return Integer.parseInt(TextUtils.isEmpty(str) ? "4" : str);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00da A[Catch: Exception -> 0x00e9, TryCatch #0 {Exception -> 0x00e9, blocks: (B:5:0x000b, B:7:0x0016, B:9:0x0020, B:11:0x0028, B:13:0x0061, B:28:0x00cf, B:30:0x00da, B:31:0x00dd, B:16:0x006d, B:18:0x0077, B:20:0x0081, B:22:0x0089, B:24:0x00c2), top: B:36:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getSettingsPath() {
        /*
            java.lang.String r0 = org.ppsspp.ppsspp.NativeActivity.romPath
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            return r1
        Lb:
            java.lang.String r0 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            java.lang.String r2 = "wufan91"
            boolean r2 = r0.contains(r2)     // Catch: java.lang.Exception -> Le9
            r3 = -1
            if (r2 == 0) goto L6d
            java.lang.String r2 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            java.lang.String r4 = "/wufan91"
            int r2 = r2.indexOf(r4)     // Catch: java.lang.Exception -> Le9
            if (r2 == r3) goto Lcf
            java.lang.String r3 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            int r3 = r3.length()     // Catch: java.lang.Exception -> Le9
            if (r2 >= r3) goto Lcf
            java.lang.String r0 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            java.lang.String r0 = r0.substring(r2)     // Catch: java.lang.Exception -> Le9
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le9
            r2.<init>()     // Catch: java.lang.Exception -> Le9
            android.content.Context r3 = com.papa91.arc.util.GameSettings.context     // Catch: java.lang.Exception -> Le9
            java.lang.String r3 = com.papa91.arc.util.SDCardUtil.getExternalStorageDirectory(r3)     // Catch: java.lang.Exception -> Le9
            r2.append(r3)     // Catch: java.lang.Exception -> Le9
            r2.append(r0)     // Catch: java.lang.Exception -> Le9
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> Le9
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le9
            r3.<init>()     // Catch: java.lang.Exception -> Le9
            java.lang.String r4 = com.papa91.arc.util.SDCardUtil.getExternalStorageDirectory()     // Catch: java.lang.Exception -> Le9
            r3.append(r4)     // Catch: java.lang.Exception -> Le9
            r3.append(r0)     // Catch: java.lang.Exception -> Le9
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Exception -> Le9
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> Le9
            r3.<init>(r2)     // Catch: java.lang.Exception -> Le9
            boolean r3 = r3.exists()     // Catch: java.lang.Exception -> Le9
            if (r3 != 0) goto Lce
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> Le9
            r3.<init>(r0)     // Catch: java.lang.Exception -> Le9
            boolean r3 = r3.exists()     // Catch: java.lang.Exception -> Le9
            if (r3 == 0) goto Lce
            goto Lcf
        L6d:
            java.lang.String r2 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            java.lang.String r4 = "mgpapa"
            boolean r2 = r2.contains(r4)     // Catch: java.lang.Exception -> Le9
            if (r2 == 0) goto Lcf
            java.lang.String r2 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            java.lang.String r4 = "/mgpapa"
            int r2 = r2.indexOf(r4)     // Catch: java.lang.Exception -> Le9
            if (r2 == r3) goto Lcf
            java.lang.String r3 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            int r3 = r3.length()     // Catch: java.lang.Exception -> Le9
            if (r2 >= r3) goto Lcf
            java.lang.String r0 = org.ppsspp.ppsspp.NativeActivity.romPath     // Catch: java.lang.Exception -> Le9
            java.lang.String r0 = r0.substring(r2)     // Catch: java.lang.Exception -> Le9
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le9
            r2.<init>()     // Catch: java.lang.Exception -> Le9
            android.content.Context r3 = com.papa91.arc.util.GameSettings.context     // Catch: java.lang.Exception -> Le9
            java.lang.String r3 = com.papa91.arc.util.SDCardUtil.getExternalStorageDirectory(r3)     // Catch: java.lang.Exception -> Le9
            r2.append(r3)     // Catch: java.lang.Exception -> Le9
            r2.append(r0)     // Catch: java.lang.Exception -> Le9
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> Le9
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le9
            r3.<init>()     // Catch: java.lang.Exception -> Le9
            java.lang.String r4 = com.papa91.arc.util.SDCardUtil.getExternalStorageDirectory()     // Catch: java.lang.Exception -> Le9
            r3.append(r4)     // Catch: java.lang.Exception -> Le9
            r3.append(r0)     // Catch: java.lang.Exception -> Le9
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Exception -> Le9
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> Le9
            r3.<init>(r2)     // Catch: java.lang.Exception -> Le9
            boolean r3 = r3.exists()     // Catch: java.lang.Exception -> Le9
            if (r3 != 0) goto Lce
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> Le9
            r3.<init>(r0)     // Catch: java.lang.Exception -> Le9
            boolean r3 = r3.exists()     // Catch: java.lang.Exception -> Le9
            if (r3 == 0) goto Lce
            goto Lcf
        Lce:
            r0 = r2
        Lcf:
            java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> Le9
            r2.<init>(r0)     // Catch: java.lang.Exception -> Le9
            boolean r3 = r2.exists()     // Catch: java.lang.Exception -> Le9
            if (r3 != 0) goto Ldd
            r2.mkdirs()     // Catch: java.lang.Exception -> Le9
        Ldd:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Le9
            r2.<init>()     // Catch: java.lang.Exception -> Le9
            r2.append(r1)     // Catch: java.lang.Exception -> Le9
            r2.append(r0)     // Catch: java.lang.Exception -> Le9
            return r0
        Le9:
            r0 = move-exception
            r0.printStackTrace()
            java.lang.String r0 = org.ppsspp.ppsspp.NativeActivity.romPath
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa91.arc.util.GameSettings.getSettingsPath():java.lang.String");
    }

    public static void init(Context context2) {
        context = context2;
    }

    public static Object queryConfig(String str, String str2) {
        str = (str == null || str.trim().equals("")) ? "GameSetting" : "GameSetting";
        File file = new File(getSettingsPath());
        if (file.exists()) {
            File file2 = new File(file.getParent(), "settings.ini");
            return file2.exists() ? new IniFile(file2).get(str, str2) : "";
        }
        return "";
    }

    public static void saveGameConfig(String str, Object obj) {
        File file = new File(getSettingsPath());
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file.getParent(), "settings.ini");
        if (file2.exists()) {
            IniFile iniFile = new IniFile(file2);
            iniFile.set("GameSetting", str, obj);
            iniFile.save();
            return;
        }
        IniFile iniFile2 = new IniFile();
        iniFile2.set("GameSetting", str, obj);
        iniFile2.save(file2);
    }

    public static void setCustomSettingEnable(boolean z3) {
        saveGameConfig("CustomSettingEnable", Boolean.valueOf(z3));
    }

    public static void setGameSettingLevel(int i2) {
        saveGameConfig("GameSettingLevel", i2 + "");
    }

    public static void setGameSettingTotalLevel(int i2) {
        saveGameConfig("GameSettingTotalLevel", i2 + "");
    }

    public static Object queryConfig(String str, String str2, String str3) {
        str = (str == null || str.trim().equals("")) ? "GameSetting" : "GameSetting";
        if (getSettingsPath().equals("")) {
            return str3;
        }
        File file = new File(getSettingsPath());
        if (file.exists()) {
            File file2 = new File(file.getParent(), "settings.ini");
            return file2.exists() ? new IniFile(file2).get(str, str2, str3) : str3;
        }
        return str3;
    }
}
