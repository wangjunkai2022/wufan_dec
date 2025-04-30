package com.xinzhu.overmind.client.hook.proxies.context.providers;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import java.util.Arrays;
/* compiled from: DownloadProviderStub.java */
/* loaded from: classes3.dex */
public class b extends com.xinzhu.overmind.client.hook.c implements d {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64176f = b.class.getSimpleName();

    /* renamed from: g  reason: collision with root package name */
    public static final String f64177g = "android:query-arg-sql-selection";

    /* renamed from: h  reason: collision with root package name */
    public static final String f64178h = "android:query-arg-sql-selection-args";

    /* renamed from: i  reason: collision with root package name */
    public static final String f64179i = "android:query-arg-sql-sort-order";

    /* renamed from: j  reason: collision with root package name */
    private static final String f64180j = "notificationpackage";

    /* renamed from: k  reason: collision with root package name */
    private static final String f64181k = "notificationclass";

    /* renamed from: l  reason: collision with root package name */
    public static final String f64182l = "is_visible_in_downloads_ui";

    /* renamed from: m  reason: collision with root package name */
    public static final String f64183m = "visibility";

    /* renamed from: n  reason: collision with root package name */
    public static final String f64184n = "description";

    /* renamed from: o  reason: collision with root package name */
    public static final String f64185o = "hint";

    /* renamed from: e  reason: collision with root package name */
    private IInterface f64186e;

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.proxies.context.providers.d
    public IInterface b(IInterface contentProviderProxy, String appPkg) {
        this.f64186e = contentProviderProxy;
        c();
        return (IInterface) g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return this.f64186e;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    @SuppressLint({"NewApi"})
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        String[] strArr;
        String str;
        if ("asBinder".equals(method.getName())) {
            return method.invoke(this.f64186e, args);
        }
        if (args != null && args.length > 0) {
            if (args[0] instanceof String) {
                String str2 = (String) args[0];
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
        if (name.equals("insert")) {
            int a5 = com.xinzhu.overmind.utils.helpers.a.a(args, Uri.class) + 1;
            ContentValues contentValues = (ContentValues) args[a5];
            String asString = contentValues.getAsString(f64180j);
            com.xinzhu.overmind.b.c(f64176f, "content provider <insert>, notificationPkg " + asString);
            if (asString == null) {
                return method.invoke(this.f64186e, args);
            }
            String asString2 = contentValues.getAsString(f64185o);
            if (asString2 != null) {
                contentValues.put(f64185o, asString2.replace(asString, Overmind.getHostPkg()));
            }
            contentValues.put("visibility", (Integer) 1);
            contentValues.put(f64180j, Overmind.getHostPkg());
            args[a5] = contentValues;
            return method.invoke(this.f64186e, args);
        } else if (!name.equals("query")) {
            return method.invoke(this.f64186e, args);
        } else {
            int length = args.length - 4;
            String str3 = null;
            if (e.v()) {
                Bundle bundle = (Bundle) args[length + 2];
                if (bundle != null) {
                    str3 = bundle.getString(f64177g);
                    strArr = bundle.getStringArray(f64178h);
                    str = bundle.getString(f64179i);
                } else {
                    str = null;
                    strArr = null;
                }
            } else {
                str3 = (String) args[length + 2];
                strArr = (String[]) args[length + 3];
                str = (String) args[length + 4];
            }
            com.xinzhu.overmind.b.c(f64176f, "content provider <query>, selection " + str3 + " selectionArgs " + Arrays.toString(strArr) + " sortOrder " + str);
            return method.invoke(this.f64186e, args);
        }
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void k() {
    }
}
