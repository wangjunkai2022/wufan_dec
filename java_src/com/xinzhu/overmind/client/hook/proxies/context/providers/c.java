package com.xinzhu.overmind.client.hook.proxies.context.providers;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import java.util.Arrays;
/* compiled from: SettingsProviderStub.java */
/* loaded from: classes3.dex */
public class c extends com.xinzhu.overmind.client.hook.c implements d {

    /* renamed from: f  reason: collision with root package name */
    private static final int f64187f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f64188g = 1;

    /* renamed from: e  reason: collision with root package name */
    private IInterface f64189e;

    private static Bundle l(String name, String value) {
        Bundle bundle = new Bundle();
        if (e.d()) {
            bundle.putString("name", name);
            bundle.putString("value", value);
        } else {
            bundle.putString(name, value);
        }
        return bundle;
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.proxies.context.providers.d
    public IInterface b(IInterface contentProviderProxy, String appPkg) {
        this.f64189e = contentProviderProxy;
        c();
        return (IInterface) g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return this.f64189e;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    @SuppressLint({"NewApi"})
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if ("asBinder".equals(method.getName())) {
            return method.invoke(this.f64189e, args);
        }
        if (args != null && args.length > 0) {
            if (args[0] instanceof String) {
                String str = (String) args[0];
                args[0] = Overmind.getHostPkg();
            }
            if (e.h()) {
                try {
                    int a4 = com.xinzhu.overmind.utils.helpers.a.a(args, AttributionSource.class);
                    if (a4 >= 0) {
                        ContextFixer.fixAttributionSource((AttributionSource) args[a4]);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        String name = method.getName();
        name.hashCode();
        if (!name.equals("call")) {
            if (!name.equals("query")) {
                return method.invoke(this.f64189e, args);
            }
            Uri uri = (Uri) args[args.length - 4];
            com.xinzhu.overmind.b.c(com.xinzhu.overmind.client.hook.c.f64074d, "content provider <query> " + uri);
            if (uri.toString().equals("content://settings/config")) {
                return null;
            }
            return method.invoke(this.f64189e, args);
        }
        int length = args.length - 4;
        String str2 = (String) args[length + 1];
        String str3 = (String) args[length + 2];
        com.xinzhu.overmind.b.c(com.xinzhu.overmind.client.hook.c.f64074d, "content provider <call> " + Arrays.toString(args));
        if (str2.startsWith("GET_")) {
            if (str3.equalsIgnoreCase("user_setup_complete")) {
                return l(str3, "1");
            }
            if (str3.equalsIgnoreCase("install_non_market_apps")) {
                return l(str3, "1");
            }
            if (str3.equalsIgnoreCase("android_id")) {
                MindDeviceInfo b4 = com.xinzhu.overmind.client.frameworks.b.a().b();
                if (b4 != null) {
                    return l(str3, b4.f64490a);
                }
            } else if (str3.equals("adb_enabled") || str3.equals("development_settings_enabled")) {
                return l(str3, "0");
            }
        } else if (str2.startsWith("PUT_")) {
            if (str2.endsWith("secure") || str2.endsWith("global") || str2.endsWith("system")) {
                return null;
            }
        } else if (str2.startsWith("LIST_")) {
            return null;
        }
        try {
            return method.invoke(this.f64189e, args);
        } catch (Throwable th2) {
            if ((th2.getCause() instanceof SecurityException) || (th2.getCause() instanceof IllegalArgumentException)) {
                return null;
            }
            throw th2;
        }
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void k() {
    }
}
