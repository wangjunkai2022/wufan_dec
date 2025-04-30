package com.umeng.analytics.pro;
/* compiled from: Logger.java */
/* loaded from: classes4.dex */
public class ah {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60399a = "OpenId";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f60400b;

    public static void a(boolean z3) {
        StringBuilder sb = new StringBuilder();
        sb.append("setDebug:");
        sb.append(z3);
        f60400b = z3;
    }

    public static void b(String str, Object... objArr) {
        if (f60400b) {
            e(str, objArr);
        }
    }

    public static void c(String str, Object... objArr) {
        if (f60400b) {
            e(str, objArr);
        }
    }

    public static void d(String str, Object... objArr) {
        if (f60400b) {
            e(str, objArr);
        }
    }

    private static String e(String str, Object... objArr) {
        if (str == null && objArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Object[] objArr2 = new Object[1];
        if (str == null) {
            str = "-";
        }
        int i2 = 0;
        objArr2[0] = str;
        sb.append(String.format("[%s] ", objArr2));
        if (objArr != null) {
            int length = objArr.length;
            while (true) {
                int i4 = i2 + 1;
                if (i4 >= objArr.length) {
                    break;
                }
                sb.append(a(objArr[i2], objArr[i4]));
                if (i4 < length - 1) {
                    sb.append(",");
                }
                i2 = i4 + 1;
            }
            if (i2 == objArr.length - 1) {
                sb.append(objArr[i2]);
            }
        }
        return sb.toString();
    }

    public static void a(String str, Object... objArr) {
        if (f60400b) {
            e(str, objArr);
        }
    }

    private static String a(Object obj, Object obj2) {
        Object[] objArr = new Object[2];
        if (obj == null) {
            obj = "";
        }
        objArr[0] = obj;
        if (obj2 == null) {
            obj2 = "";
        }
        objArr[1] = obj2;
        return String.format("%s:%s", objArr);
    }
}
