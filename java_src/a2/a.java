package a2;

import android.text.TextUtils;
/* compiled from: SystemPropertiesCompat.java */
/* loaded from: classes4.dex */
public class a {
    public static String a(String str) {
        try {
            return (String) com.overmind.virtual.oem.utils.a.x("android.os.SystemProperties").call("get", str).o();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String b(String str, String str2) {
        try {
            return (String) com.overmind.virtual.oem.utils.a.x("android.os.SystemProperties").call("get", str, str2).o();
        } catch (Exception e4) {
            e4.printStackTrace();
            return str2;
        }
    }

    public static int c(String str, int i2) {
        try {
            return ((Integer) com.overmind.virtual.oem.utils.a.x("android.os.SystemProperties").call("getInt", str, Integer.valueOf(i2)).o()).intValue();
        } catch (Exception e4) {
            e4.printStackTrace();
            return i2;
        }
    }

    public static boolean d(String str) {
        return !TextUtils.isEmpty(a(str));
    }
}
