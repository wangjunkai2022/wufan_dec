package com.efs.sdk.base.core.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.config.b;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.newsharedpreferences.SharedPreferencesUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class b extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Long> f11270a = new HashMap<String, Long>() { // from class: com.efs.sdk.base.core.c.b.1
        {
            put("flow_5min", Long.valueOf((long) q.a.f73955b));
            put("flow_hour", 3600000L);
            put("flow_day", 86400000L);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, Long> f11271b = new HashMap<String, Long>() { // from class: com.efs.sdk.base.core.c.b.2
        {
            Long valueOf = Long.valueOf((long) PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
            put("flow_5min", valueOf);
            put("flow_hour", valueOf);
            put("flow_day", Long.valueOf((long) PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE));
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private Map<String, AtomicInteger> f11272c;

    /* renamed from: d  reason: collision with root package name */
    private volatile SharedPreferences f11273d;

    /* renamed from: e  reason: collision with root package name */
    private volatile SharedPreferences.Editor f11274e;

    /* renamed from: f  reason: collision with root package name */
    private Context f11275f;

    /* renamed from: g  reason: collision with root package name */
    private String f11276g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f11277a = new b((byte) 0);
    }

    /* synthetic */ b(byte b4) {
        this();
    }

    public static b a() {
        return a.f11277a;
    }

    private void b() {
        try {
            c();
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.flow", "init sharedpreferences error", th);
        }
    }

    private void c() {
        if (this.f11273d == null) {
            synchronized (b.class) {
                if (this.f11273d == null) {
                    this.f11273d = SharedPreferencesUtils.getSharedPreferences(this.f11275f, this.f11276g.toLowerCase() + "_flow");
                }
            }
        }
        if (this.f11274e == null) {
            synchronized (b.class) {
                if (this.f11274e == null) {
                    this.f11274e = this.f11273d.edit();
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(@NonNull Message message) {
        com.efs.sdk.base.core.config.b bVar;
        super.handleMessage(message);
        int i2 = message.what;
        if (i2 == 0) {
            b();
            if (this.f11273d == null) {
                com.efs.sdk.base.core.util.d.a("efs.flow", "sharedpreferences is null, cann't get last flow stat", null);
            } else if (this.f11274e == null) {
                com.efs.sdk.base.core.util.d.a("efs.flow", "sharedpreferences editor is null, cann't refresh flow stat", null);
            } else {
                String valueOf = String.valueOf(message.obj);
                long j4 = message.arg1;
                bVar = b.a.f11330a;
                String a4 = bVar.a();
                for (String str : f11270a.keySet()) {
                    String concat = "curr_time_".concat(String.valueOf(str));
                    if (!this.f11273d.contains(concat)) {
                        this.f11274e.putLong(concat, System.currentTimeMillis());
                    }
                    for (String str2 : a(str, valueOf, a4)) {
                        this.f11274e.putLong(str2, this.f11273d.getLong(str2, 0L) + j4);
                    }
                }
                this.f11274e.apply();
            }
        } else if (i2 != 1) {
            com.efs.sdk.base.core.util.d.a("efs.flow", "flow stat listener not support action '" + message.what + "'", null);
        } else {
            String valueOf2 = String.valueOf(message.obj);
            long j5 = message.arg1;
            b();
            if (this.f11273d == null) {
                com.efs.sdk.base.core.util.d.a("efs.flow", "sharedpreferences is null, cann't get last refresh timestamp", null);
            } else if (this.f11274e == null) {
                com.efs.sdk.base.core.util.d.a("efs.flow", "sharedpreferences editor is null, cann't refresh timestamp", null);
            } else {
                String concat2 = "curr_time_".concat(valueOf2);
                if (Math.abs(System.currentTimeMillis() - this.f11273d.getLong(concat2, System.currentTimeMillis())) >= j5) {
                    for (String str3 : this.f11273d.getAll().keySet()) {
                        if (str3.startsWith(valueOf2)) {
                            this.f11274e.putLong(str3, 0L);
                        }
                    }
                    this.f11274e.putLong(concat2, System.currentTimeMillis());
                    this.f11274e.apply();
                    this.f11272c.clear();
                }
            }
        }
    }

    private b() {
        super(com.efs.sdk.base.core.util.a.a.f11388a.getLooper());
        this.f11272c = new ConcurrentHashMap(5);
        this.f11275f = ControllerCenter.getGlobalEnvStruct().mAppContext;
        this.f11276g = ControllerCenter.getGlobalEnvStruct().getAppid();
        b();
        File c4 = com.efs.sdk.base.core.util.a.c(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (c4.exists()) {
            com.efs.sdk.base.core.util.b.b(c4);
        }
    }

    private boolean a(@NonNull String str, long j4, @NonNull String str2, @NonNull String str3, long j5) {
        b();
        if (this.f11273d == null) {
            com.efs.sdk.base.core.util.d.a("efs.flow", "sharedpreferences is null, cann't get last flow stat", null);
            return false;
        }
        List<String> a4 = a(str, str2, str3);
        Map<String, String> c4 = com.efs.sdk.base.core.config.a.c.a().c();
        for (String str4 : a4) {
            if (Math.abs(System.currentTimeMillis() - this.f11273d.getLong("curr_time_".concat(String.valueOf(str)), System.currentTimeMillis())) > j4) {
                Message obtain = Message.obtain();
                obtain.what = 1;
                obtain.obj = str;
                obtain.arg1 = Long.valueOf(j4).intValue();
                sendMessage(obtain);
            }
            long a5 = a(c4, str, str4);
            long j6 = this.f11273d.getLong(str4, 0L);
            if (j6 + j5 > a5) {
                com.efs.sdk.base.core.util.d.a("efs.flow", "flow limit, key: " + str4 + ", max: " + a5 + ", now: " + j6 + ", size: " + j5);
                a(str4);
                return false;
            }
        }
        return true;
    }

    private void a(String str) {
        com.efs.sdk.base.core.f.f fVar;
        com.efs.sdk.base.core.f.f fVar2;
        if (!this.f11272c.containsKey(str) || this.f11272c.get(str) == null || this.f11272c.get(str).get() <= 10) {
            fVar = f.a.f11380a;
            fVar.a(com.efs.sdk.base.core.config.a.c.a().f11319d.f11310a, str);
            if (str.equals("flow_day")) {
                fVar2 = f.a.f11380a;
                fVar2.a(com.efs.sdk.base.core.config.a.c.a().f11319d.f11310a);
            }
            if (!this.f11272c.containsKey(str)) {
                this.f11272c.put(str, new AtomicInteger());
            }
            this.f11272c.get(str).incrementAndGet();
        }
    }

    private static long a(Map<String, String> map, @NonNull String str, @NonNull String str2) {
        long longValue = f11271b.get(str).longValue();
        if (map == null || !map.containsKey(str2) || TextUtils.isEmpty(map.get(str2))) {
            return longValue;
        }
        try {
            return Long.parseLong(map.get(str2));
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.a("efs.flow", "get max flow error", th);
            return longValue;
        }
    }

    private static List<String> a(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str + "_" + str2);
        }
        if (!TextUtils.isEmpty(str3) && !"unknown".equalsIgnoreCase(str3)) {
            arrayList.add(str + "_" + str3);
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            arrayList.add(str + "_" + str2 + "_" + str3);
        }
        return arrayList;
    }

    public final boolean a(@NonNull String str, long j4) {
        com.efs.sdk.base.core.config.b bVar;
        bVar = b.a.f11330a;
        String a4 = bVar.a();
        boolean z3 = true;
        for (Map.Entry<String, Long> entry : f11270a.entrySet()) {
            z3 = a(entry.getKey(), entry.getValue().longValue(), str, a4, j4);
            if (!z3) {
                break;
            }
        }
        return z3;
    }
}
