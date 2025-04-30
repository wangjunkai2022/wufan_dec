package com.join.mgps.Util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
/* compiled from: OSUtil.java */
/* loaded from: classes3.dex */
public class i1 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27616a = "ro.miui.ui.version.code";

    /* renamed from: b  reason: collision with root package name */
    private static final String f27617b = "ro.miui.ui.version.name";

    /* renamed from: c  reason: collision with root package name */
    private static final String f27618c = "ro.miui.internal.storage";

    /* renamed from: d  reason: collision with root package name */
    private static final String f27619d = "ro.build.version.emui";

    /* renamed from: e  reason: collision with root package name */
    private static final String f27620e = "ro.build.hw_emui_api_level";

    /* renamed from: f  reason: collision with root package name */
    private static final String f27621f = "ro.confg.hw_systemversion";

    /* renamed from: g  reason: collision with root package name */
    private static final String f27622g = "ro.build.display.id";

    /* renamed from: h  reason: collision with root package name */
    private static final String f27623h = "Flyme";

    /* renamed from: i  reason: collision with root package name */
    private static final String f27624i = "persist.sys.use.flyme.icon";

    /* renamed from: j  reason: collision with root package name */
    private static final String f27625j = "ro.meizu.setupwizard.flyme";

    /* renamed from: k  reason: collision with root package name */
    private static final String f27626k = "ro.flyme.published";

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: OSUtil.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Properties f27627a;

        private a() throws IOException {
            Properties properties = new Properties();
            this.f27627a = properties;
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
        }

        public static a i() throws IOException {
            return new a();
        }

        public boolean a(Object obj) {
            return this.f27627a.containsKey(obj);
        }

        public boolean b(Object obj) {
            return this.f27627a.containsValue(obj);
        }

        public Set<Map.Entry<Object, Object>> c() {
            return this.f27627a.entrySet();
        }

        public String d(String str) {
            return this.f27627a.getProperty(str);
        }

        public String e(String str, String str2) {
            return this.f27627a.getProperty(str, str2);
        }

        public boolean f() {
            return this.f27627a.isEmpty();
        }

        public Set<Object> g() {
            return this.f27627a.keySet();
        }

        public Enumeration<Object> h() {
            return this.f27627a.keys();
        }

        public int j() {
            return this.f27627a.size();
        }

        public Collection<Object> k() {
            return this.f27627a.values();
        }
    }

    public static boolean a(Context context) {
        String str;
        try {
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("config_showNavigationBar", "bool", q.a.f73954a);
            boolean z3 = identifier > 0 ? resources.getBoolean(identifier) : false;
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class).invoke(cls, "qemu.hw.mainkeys");
            } catch (Exception unused) {
            }
            if ("1".equals(str)) {
                return false;
            }
            if ("0".equals(str)) {
                return true;
            }
            return z3;
        } catch (Exception unused2) {
            return false;
        }
    }

    private static String b(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean c() {
        return h(f27619d, f27620e, f27621f);
    }

    public static boolean d() {
        if (h(f27624i, f27625j, f27626k)) {
            return true;
        }
        try {
            a i2 = a.i();
            if (i2.a(f27622g)) {
                String d4 = i2.d(f27622g);
                if (TextUtils.isEmpty(d4)) {
                    return false;
                }
                return d4.contains(f27623h);
            }
            return false;
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public static boolean e() {
        return Build.MANUFACTURER.equalsIgnoreCase("HUAWEI");
    }

    public static boolean f(Context context) {
        int i2;
        if (Build.VERSION.SDK_INT < 21) {
            i2 = Settings.System.getInt(context.getContentResolver(), "navigationbar_is_min", 0);
        } else {
            i2 = Settings.Global.getInt(context.getContentResolver(), "navigationbar_is_min", 0);
        }
        return i2 == 1;
    }

    public static boolean g() {
        return h(f27616a, f27617b, f27618c);
    }

    private static boolean h(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            try {
                try {
                    a i2 = a.i();
                    for (String str : strArr) {
                        if (i2.d(str) != null) {
                            return true;
                        }
                    }
                    return false;
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            } catch (IOException unused) {
                for (String str2 : strArr) {
                    if (b(str2, null) != null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
