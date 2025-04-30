package com.xinzhu.overmind.utils.helpers;

import com.xinzhu.overmind.Overmind;
/* compiled from: ArgReplaceHelper.java */
/* loaded from: classes.dex */
public class a {
    public static int a(Object[] args, Class<?> type) {
        return b(args, type, 0);
    }

    public static int b(Object[] args, Class<?> type, int start) {
        while (start < args.length) {
            Object obj = args[start];
            if (obj != null && (obj.getClass() == type || type.isInstance(obj))) {
                return start;
            }
            start++;
        }
        return -1;
    }

    public static void c(Object[] args) {
        if (args != null) {
            for (int i2 = 0; i2 < args.length; i2++) {
                if (args[i2] instanceof String) {
                    if (Overmind.getMindPackageManager().t((String) args[i2], com.xinzhu.overmind.client.e.getUserId())) {
                        args[i2] = Overmind.getContext().getPackageName();
                    }
                }
            }
        }
    }

    public static String d(Object[] args) {
        if (args != null) {
            for (int i2 = 0; i2 < args.length; i2++) {
                if (args[i2] instanceof String) {
                    String str = (String) args[i2];
                    if (Overmind.getMindPackageManager().t(str, com.xinzhu.overmind.client.e.getUserId())) {
                        args[i2] = Overmind.getContext().getPackageName();
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public static String e(Object[] args) {
        if (args != null) {
            for (int length = args.length - 1; length >= 0; length--) {
                if (args[length] instanceof String) {
                    String str = (String) args[length];
                    if (Overmind.getMindPackageManager().t(str, com.xinzhu.overmind.client.e.getUserId())) {
                        args[length] = Overmind.getContext().getPackageName();
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public static void f(Object[] args) {
        if (args != null) {
            int length = args.length - 1;
            if (args[length].getClass() == Integer.class && ((Integer) args[length]).intValue() == com.xinzhu.overmind.client.e.getUserId()) {
                args[length] = Integer.valueOf(Overmind.getHostUserId());
            }
        }
    }
}
