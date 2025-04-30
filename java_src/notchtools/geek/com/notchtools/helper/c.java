package notchtools.geek.com.notchtools.helper;

import java.lang.reflect.Method;
/* compiled from: SystemProperties.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f73100a = "c";

    /* renamed from: b  reason: collision with root package name */
    private static Method f73101b;

    /* renamed from: c  reason: collision with root package name */
    private static c f73102c;

    private c() {
        f73101b = d(b("android.os.SystemProperties"));
    }

    private Class b(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            e4.getMessage();
            try {
                return ClassLoader.getSystemClassLoader().loadClass(str);
            } catch (ClassNotFoundException e5) {
                e5.getMessage();
                return null;
            }
        }
    }

    public static c c() {
        if (f73102c == null) {
            synchronized (c.class) {
                if (f73102c == null) {
                    f73102c = new c();
                }
            }
        }
        return f73102c;
    }

    private Method d(Class cls) {
        if (cls != null) {
            try {
                return cls.getMethod("get", String.class);
            } catch (Exception e4) {
                e4.getMessage();
                return null;
            }
        }
        return null;
    }

    public final String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            Method method = f73101b;
            String str2 = (String) (method != null ? method.invoke(null, str) : null);
            if (str2 != null) {
                return str2.trim();
            }
        } catch (Exception unused) {
        }
        return "";
    }
}
