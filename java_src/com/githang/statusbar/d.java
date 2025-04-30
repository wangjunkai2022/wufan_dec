package com.githang.statusbar;

import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* compiled from: StatusBarCompatFlavorRom.java */
/* loaded from: classes2.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    static final b f13902a;

    /* compiled from: StatusBarCompatFlavorRom.java */
    /* loaded from: classes2.dex */
    static class a implements b {
        a() {
        }

        @Override // com.githang.statusbar.d.b
        public void a(Window window, boolean z3) {
        }
    }

    /* compiled from: StatusBarCompatFlavorRom.java */
    /* loaded from: classes2.dex */
    interface b {
        void a(Window window, boolean z3);
    }

    /* compiled from: StatusBarCompatFlavorRom.java */
    /* loaded from: classes2.dex */
    static class c implements b {
        c() {
        }

        static boolean b() {
            return "Xiaomi".equals(Build.MANUFACTURER);
        }

        @Override // com.githang.statusbar.d.b
        public void a(Window window, boolean z3) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i2 = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(z3 ? i2 : 0);
                objArr[1] = Integer.valueOf(i2);
                method.invoke(window, objArr);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* compiled from: StatusBarCompatFlavorRom.java */
    /* renamed from: com.githang.statusbar.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0097d implements b {
        C0097d() {
        }

        static boolean b() {
            return Build.BRAND.contains("Meizu");
        }

        @Override // com.githang.statusbar.d.b
        public void a(Window window, boolean z3) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            try {
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("MEIZU_FLAG_DARK_STATUS_BAR_ICON");
                Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField("meizuFlags");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                int i2 = declaredField.getInt(null);
                int i4 = declaredField2.getInt(attributes);
                declaredField2.setInt(attributes, z3 ? i4 | i2 : (i2 ^ (-1)) & i4);
                window.setAttributes(attributes);
                declaredField.setAccessible(false);
                declaredField2.setAccessible(false);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    static {
        if (c.b()) {
            f13902a = new c();
        } else if (C0097d.b()) {
            f13902a = new C0097d();
        } else {
            f13902a = new a();
        }
    }

    d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Window window, boolean z3) {
        f13902a.a(window, z3);
    }
}
