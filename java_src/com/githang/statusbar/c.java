package com.githang.statusbar;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Color;
import android.os.Build;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
/* compiled from: StatusBarCompat.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static final b f13901a;

    /* compiled from: StatusBarCompat.java */
    /* loaded from: classes2.dex */
    static class a implements b {
        a() {
        }

        @Override // com.githang.statusbar.b
        public void a(Window window, int i2, boolean z3) {
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            f13901a = new h();
        } else if (i2 >= 21 && !a()) {
            f13901a = new g();
        } else if (i2 >= 19) {
            f13901a = new f();
        } else {
            f13901a = new a();
        }
    }

    private static boolean a() {
        FileInputStream fileInputStream;
        File file = new File(Environment.getRootDirectory(), "build.prop");
        if (file.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                } catch (Exception e5) {
                    e = e5;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
            } catch (Exception e6) {
                e = e6;
                fileInputStream2 = fileInputStream;
                e.printStackTrace();
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                return properties.containsKey("ro.build.hw_emui_api_level");
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                throw th;
            }
            return properties.containsKey("ro.build.hw_emui_api_level");
        }
        return false;
    }

    @TargetApi(14)
    public static void b(Window window, boolean z3) {
        View childAt;
        if (Build.VERSION.SDK_INT < 14 || (childAt = ((ViewGroup) window.findViewById(16908290)).getChildAt(0)) == null) {
            return;
        }
        childAt.setFitsSystemWindows(z3);
    }

    public static void c(Activity activity, int i2) {
        d(activity, i2, f(i2) > 225);
    }

    public static void d(Activity activity, int i2, boolean z3) {
        e(activity.getWindow(), i2, z3);
    }

    public static void e(Window window, int i2, boolean z3) {
        if ((window.getAttributes().flags & 1024) > 0 || e.f13903a) {
            return;
        }
        f13901a.a(window, i2, z3);
    }

    public static int f(int i2) {
        int blue = Color.blue(i2);
        return (((Color.red(i2) * 38) + (Color.green(i2) * 75)) + (blue * 15)) >> 7;
    }
}
