package com.xinzhu.overmind.client.hook.delegate;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IInterface;
import android.util.ArrayMap;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.haunted.android.app.l;
import com.xinzhu.haunted.android.content.f;
import com.xinzhu.haunted.android.provider.a;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
/* compiled from: ContentProviderDelegate.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final String f64101b = "ContentProviderDelegate";

    /* renamed from: c  reason: collision with root package name */
    private static Set<String> f64102c = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private IInterface f64103a;

    private static void a(Object cache) {
        if (e.v()) {
            Object d4 = new a.c(cache).d();
            if (d4 != null) {
                new a.C0384a(d4).c(null);
                return;
            }
            return;
        }
        new a.c(cache).e(null);
    }

    public static void b() {
        Object b4;
        Object b5 = a.e.b();
        if (b5 != null) {
            a(b5);
        }
        Object b6 = a.d.b();
        if (b6 != null) {
            a(b6);
        }
        if (Build.VERSION.SDK_INT < 17 || a.b.f63576a == null || (b4 = a.b.b()) == null) {
            return;
        }
        a(b4);
    }

    public static IInterface c(IInterface origin, String auth) {
        auth.hashCode();
        if (auth.equals("downloads")) {
            return new com.xinzhu.overmind.client.hook.proxies.context.providers.b().b(origin, Overmind.getHostPkg());
        }
        if (!auth.equals("settings")) {
            return new com.xinzhu.overmind.client.hook.proxies.context.providers.a().b(origin, Overmind.getHostPkg());
        }
        return new com.xinzhu.overmind.client.hook.proxies.context.providers.c().b(origin, Overmind.getHostPkg());
    }

    public static void d() {
        b();
        Overmind.getContext().getContentResolver().call(Uri.parse("content://settings"), "GET_global", "render_shadows_in_compositor", (Bundle) null);
        for (Object obj : ((ArrayMap) new g(Overmind.mainThread()).V()).values()) {
            g.d dVar = new g.d(obj);
            String[] c4 = dVar.c();
            if (c4 != null && c4.length > 0) {
                String str = c4[0];
                if (!f64102c.contains(str)) {
                    f64102c.add(str);
                    dVar.f(c(dVar.d(), str));
                    dVar.e(new String[]{str});
                }
            }
        }
    }

    public static void update(Object holder, String auth) {
        IInterface b4;
        if (e.v()) {
            b4 = new f(holder).b();
        } else {
            b4 = new l.a(holder).b();
        }
        if (b4 instanceof Proxy) {
            return;
        }
        IInterface c4 = c(b4, auth);
        if (e.v()) {
            new f(holder).c(c4);
        } else {
            new l.a(holder).c(c4);
        }
    }
}
