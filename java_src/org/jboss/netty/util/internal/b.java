package org.jboss.netty.util.internal;

import com.join.mgps.Util.u;
import com.join.mgps.dto.PayCenterOrderRequest;
import java.util.ArrayList;
import java.util.regex.Pattern;
/* compiled from: ConversionUtil.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f73728a = Pattern.compile("[, \\t\\n\\r\\f\\e\\a]");

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f73729b = {"0", "1", PayCenterOrderRequest.PAY_TYPE_RECHARGE, "3", "4", "5", "6", "7", "8", "9", u.f27861t, "11", "12", "13", "14", "15"};

    private b() {
    }

    public static boolean a(Object obj) {
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue() != 0;
        }
        String valueOf = String.valueOf(obj);
        if (valueOf.length() == 0) {
            return false;
        }
        try {
            return Integer.parseInt(valueOf) != 0;
        } catch (NumberFormatException unused) {
            char upperCase = Character.toUpperCase(valueOf.charAt(0));
            return upperCase == 'T' || upperCase == 'Y';
        }
    }

    public static int b(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        return Integer.parseInt(String.valueOf(obj));
    }

    public static String c(int i2) {
        if (i2 >= 0) {
            String[] strArr = f73729b;
            if (i2 < strArr.length) {
                return strArr[i2];
            }
        }
        return Integer.toString(i2);
    }

    public static String[] d(Object obj) {
        if (obj instanceof String[]) {
            return (String[]) obj;
        }
        if (obj instanceof Iterable) {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : (Iterable) obj) {
                if (obj2 == null) {
                    arrayList.add(null);
                } else {
                    arrayList.add(String.valueOf(obj2));
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return f73728a.split(String.valueOf(obj));
    }
}
