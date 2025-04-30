package com.join.mgps.Util;
/* compiled from: NumberChangeToChinese.java */
/* loaded from: classes3.dex */
public class h1 {

    /* renamed from: a  reason: collision with root package name */
    public static String[] f27586a = {"零", "一", "二", "三", "四", "五", "六", "七", "八", "九"};

    /* renamed from: b  reason: collision with root package name */
    public static char[] f27587b = {38646, 19968, 20108, 19977, 22235, 20116, 20845, 19971, 20843, 20061};

    /* renamed from: c  reason: collision with root package name */
    public static String[] f27588c = {"", "万", "亿", "万亿"};

    /* renamed from: d  reason: collision with root package name */
    public static String[] f27589d = {"", "十", "百", "千"};

    public static String a(int i2) {
        String str;
        if (i2 == 0) {
            return "零";
        }
        String str2 = new String();
        String str3 = new String();
        new String();
        boolean z3 = false;
        int i4 = 0;
        while (i2 > 0) {
            int i5 = i2 % 10000;
            if (z3) {
                str2 = f27586a[0] + str2;
            }
            String b4 = b(i5, str3);
            if (i5 != 0) {
                str = b4 + f27588c[i4];
            } else {
                str = f27588c[0] + b4;
            }
            str2 = str + str2;
            z3 = i5 < 1000 && i5 > 0;
            i2 /= 10000;
            i4++;
            str3 = "";
        }
        return str2;
    }

    public static String b(int i2, String str) {
        new String();
        int i4 = 0;
        boolean z3 = true;
        while (i2 > 0) {
            int i5 = i2 % 10;
            if (i5 != 0) {
                str = (f27586a[i5] + f27589d[i4]) + str;
                z3 = false;
            } else if (!z3) {
                str = f27586a[0] + str;
                z3 = true;
            }
            i4++;
            i2 /= 10;
        }
        return str;
    }
}
