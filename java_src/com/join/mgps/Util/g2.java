package com.join.mgps.Util;

import java.util.Random;
/* compiled from: TextUtils.java */
/* loaded from: classes3.dex */
public class g2 {
    public static int a(String str) {
        char[] charArray = str.toCharArray();
        int i2 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < charArray.length; i5++) {
            if (((char) ((byte) charArray[i5])) != charArray[i5]) {
                i2++;
            } else {
                i4++;
            }
        }
        return (i2 * 2) + i4;
    }

    public static String b(int i2) {
        Random random = new Random(System.currentTimeMillis());
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i2; i4++) {
            stringBuffer.append(random.nextInt(10));
        }
        return stringBuffer.toString();
    }
}
