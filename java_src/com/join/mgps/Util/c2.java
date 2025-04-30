package com.join.mgps.Util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: StringMinUtil.java */
/* loaded from: classes3.dex */
public class c2 {
    public static int a(String str) {
        Matcher matcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(str);
        int i2 = 0;
        while (matcher.find()) {
            for (int i4 = 0; i4 <= matcher.groupCount(); i4++) {
                i2++;
            }
        }
        return i2;
    }

    public static int b(String str) {
        if (d2.h(str)) {
            return 0;
        }
        return str.length() + a(str);
    }

    public static boolean c(String str, int i2, int i4) {
        int b4 = b(str);
        return b4 >= i2 && b4 <= i4;
    }

    public static boolean d(String str, int i2) {
        return b(str) >= i2;
    }
}
