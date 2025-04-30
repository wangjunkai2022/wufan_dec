package org.jboss.netty.util.internal;

import java.util.ArrayList;
import java.util.Formatter;
/* compiled from: StringUtil.java */
/* loaded from: classes5.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final String f73741a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f73742b = "";

    static {
        String str;
        try {
            str = new Formatter().format("%n", new Object[0]).toString();
        } catch (Exception unused) {
            str = "\n";
        }
        f73741a = str;
    }

    private i() {
    }

    public static String[] a(String str, char c4) {
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.charAt(i4) == c4) {
                if (i2 == i4) {
                    arrayList.add("");
                } else {
                    arrayList.add(str.substring(i2, i4));
                }
                i2 = i4 + 1;
            }
        }
        if (i2 == 0) {
            arrayList.add(str);
        } else if (i2 != length) {
            arrayList.add(str.substring(i2, length));
        } else {
            for (int size = arrayList.size() - 1; size >= 0 && ((String) arrayList.get(size)).length() == 0; size--) {
                arrayList.remove(size);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String b(Object obj) {
        if (obj == null) {
            return null;
        }
        return c(obj.toString());
    }

    public static String c(String str) {
        boolean z3;
        if (str == null) {
            return null;
        }
        int length = str.length() - 1;
        while (true) {
            if (length < 0) {
                z3 = false;
                break;
            } else if (Character.isISOControl(str.charAt(length))) {
                z3 = true;
                break;
            } else {
                length--;
            }
        }
        if (z3) {
            StringBuilder sb = new StringBuilder(str.length());
            int i2 = 0;
            while (i2 < str.length() && Character.isISOControl(str.charAt(i2))) {
                i2++;
            }
            boolean z4 = false;
            while (i2 < str.length()) {
                if (Character.isISOControl(str.charAt(i2))) {
                    z4 = true;
                } else {
                    if (z4) {
                        sb.append(' ');
                        z4 = false;
                    }
                    sb.append(str.charAt(i2));
                }
                i2++;
            }
            return sb.toString();
        }
        return str;
    }
}
