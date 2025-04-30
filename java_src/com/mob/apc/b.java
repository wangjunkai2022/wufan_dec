package com.mob.apc;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.mob.apc.a.f;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f52753a;

    /* renamed from: b  reason: collision with root package name */
    private static Context f52754b;

    /* loaded from: classes4.dex */
    public interface a {
        HashMap<String, Object> a(int i2, String str);

        boolean a(String str);
    }

    /* renamed from: com.mob.apc.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0237b {
        com.mob.apc.a a(String str, com.mob.apc.a aVar, long j4);
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(Bundle bundle);
    }

    static {
        f.a().b("MOBAPC : 2021.11.07", new Object[0]);
    }

    public static void a(Context context) {
        f52754b = context.getApplicationContext();
    }

    public static List<String> b() {
        return com.mob.apc.a.c.a().b();
    }

    public static Context a() {
        return f52754b;
    }

    public static void a(String str, InterfaceC0237b interfaceC0237b) {
        f52753a = true;
        com.mob.apc.a.c.a().a(str, interfaceC0237b);
    }

    public static com.mob.apc.a a(int i2, String str, String str2, com.mob.apc.a aVar, long j4) throws Throwable {
        if (Thread.currentThread().getId() != Looper.getMainLooper().getThread().getId()) {
            return com.mob.apc.a.c.a().a(i2, str, str2, aVar, j4);
        }
        f.a().b("[sendMessage] not allow main thread to invoke", new Object[0]);
        throw new APCException("not allow main thread to invoke");
    }

    public static void a(c cVar) {
        com.mob.apc.a.c.a().a(cVar);
    }

    public static void a(a aVar) {
        com.mob.apc.a.c.a().a(aVar);
    }
}
