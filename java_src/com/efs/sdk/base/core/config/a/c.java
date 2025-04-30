package com.efs.sdk.base.core.config.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.ValueCallback;
import androidx.annotation.NonNull;
import com.efs.sdk.base.IConfigRefreshAction;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.observer.IEfsReporterObserver;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public static final Random f11316a = new Random();

    /* renamed from: b  reason: collision with root package name */
    public IConfigRefreshAction f11317b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11318c;

    /* renamed from: d  reason: collision with root package name */
    public b f11319d;

    /* renamed from: e  reason: collision with root package name */
    public Map<IConfigCallback, String[]> f11320e;

    /* renamed from: f  reason: collision with root package name */
    private Handler f11321f;

    /* renamed from: g  reason: collision with root package name */
    private e f11322g;

    /* renamed from: h  reason: collision with root package name */
    private long f11323h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final c f11325a = new c((byte) 0);
    }

    /* synthetic */ c(byte b4) {
        this();
    }

    private void e() {
        f fVar;
        fVar = f.a.f11292a;
        if (!fVar.a()) {
            com.efs.sdk.base.core.util.d.a("efs.config", "has no permission to refresh config from remote");
        } else if (!this.f11318c) {
            com.efs.sdk.base.core.util.d.a("efs.config", "disable refresh config from remote");
        } else {
            String refresh = g().refresh();
            com.efs.sdk.base.core.util.d.a("efs.config", "efs config is ".concat(String.valueOf(refresh)));
            if (TextUtils.isEmpty(refresh)) {
                return;
            }
            a(refresh);
        }
    }

    private void f() {
        boolean z3;
        try {
            z3 = this.f11322g.a(this.f11319d);
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            return;
        }
        this.f11321f.sendEmptyMessageDelayed(3, 3000L);
    }

    @NonNull
    private IConfigRefreshAction g() {
        IConfigRefreshAction iConfigRefreshAction = this.f11317b;
        return iConfigRefreshAction == null ? com.efs.sdk.base.core.config.a.a.a() : iConfigRefreshAction;
    }

    private boolean h() {
        e.b();
        long j4 = 0;
        try {
            e eVar = this.f11322g;
            eVar.c();
            if (eVar.f11327a != null) {
                j4 = eVar.f11327a.getLong("last_refresh_time", 0L);
            }
        } catch (Throwable unused) {
        }
        return System.currentTimeMillis() - j4 >= 28800000;
    }

    private void i() {
        try {
            for (ValueCallback<Pair<Message, Message>> valueCallback : ControllerCenter.getGlobalEnvStruct().getCallback(1)) {
                Message obtain = Message.obtain(null, 1, new JSONObject(this.f11319d.f11314e).toString());
                Message obtain2 = Message.obtain();
                valueCallback.onReceiveValue(new Pair<>(obtain, obtain2));
                obtain.recycle();
                obtain2.recycle();
            }
            for (IEfsReporterObserver iEfsReporterObserver : ControllerCenter.getGlobalEnvStruct().getEfsReporterObservers()) {
                iEfsReporterObserver.onConfigChange();
            }
        } catch (Throwable th) {
            com.efs.sdk.base.core.util.d.b("efs.base", "efs.config", th);
        }
    }

    public final Map<String, String> c() {
        return new HashMap(this.f11319d.f11314e);
    }

    public final void d() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.efs.sdk.base.core.config.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    for (IConfigCallback iConfigCallback : c.this.f11320e.keySet()) {
                        String[] strArr = (String[]) c.this.f11320e.get(iConfigCallback);
                        HashMap hashMap = new HashMap();
                        if (strArr != null && strArr.length != 0) {
                            for (String str : strArr) {
                                if (c.this.f11319d.f11314e.containsKey(str)) {
                                    hashMap.put(str, c.this.c().get(str));
                                    com.efs.sdk.base.core.util.d.a("efs.config", "--->>> configCallback key is " + str + " ## value is " + c.this.c().get(str));
                                }
                            }
                        }
                        iConfigCallback.onChange(hashMap);
                    }
                    c.this.f11320e.clear();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(@NonNull Message message) {
        b bVar;
        f fVar;
        int i2 = message.what;
        if (i2 == 0) {
            boolean a4 = e.a();
            com.efs.sdk.base.core.util.d.a("efs.config", "--->>> 删除旧的配置文件 ".concat(String.valueOf(a4)));
            if (a4) {
                this.f11321f.sendEmptyMessage(1);
            } else {
                e eVar = this.f11322g;
                eVar.c();
                if (eVar.f11327a == null) {
                    bVar = null;
                } else {
                    b a5 = b.a();
                    a5.f11310a = eVar.f11327a.getInt("cver", -1);
                    Set<String> keySet = eVar.f11327a.getAll().keySet();
                    HashMap hashMap = new HashMap();
                    for (String str : keySet) {
                        String string = eVar.f11327a.getString(str, "");
                        if (!TextUtils.isEmpty(string)) {
                            hashMap.put(str, string);
                        }
                    }
                    a5.a(hashMap);
                    bVar = a5;
                }
                if (bVar == null) {
                    com.efs.sdk.base.core.util.d.a("efs.config", "--->>> 首次启动本地无配置或加载失败 ");
                } else if (a(bVar)) {
                    com.efs.sdk.base.core.util.d.a("efs.config", "--->>> 一致 ");
                } else {
                    this.f11319d = bVar;
                    String str2 = "load config from storage";
                    if (-1 != bVar.f11310a) {
                        i();
                        d();
                        str2 = "load config from storage and notify observer";
                    }
                    com.efs.sdk.base.core.util.d.a("efs.config", str2);
                }
            }
        } else if (i2 == 1) {
            int i4 = message.arg1;
            if (i4 <= this.f11319d.f11310a) {
                com.efs.sdk.base.core.util.d.a("efs.config", "current config version is " + i4 + ", no need to refresh");
                com.efs.sdk.base.core.util.d.a("efs.config", "current config version(" + this.f11319d.f11310a + ") is " + i4 + ", no need to refresh");
            } else {
                e();
            }
        } else if (i2 == 2) {
            fVar = f.a.f11292a;
            if (fVar.a()) {
                if (!h()) {
                    com.efs.sdk.base.core.util.d.a("efs.config", "No update is required, less than 8h since the last update");
                } else {
                    e();
                }
            }
        } else if (i2 == 3) {
            f();
        }
        return true;
    }

    private c() {
        this.f11318c = true;
        this.f11320e = new HashMap();
        this.f11321f = new Handler(com.efs.sdk.base.core.util.a.a.f11388a.getLooper(), this);
        this.f11322g = new e();
        this.f11319d = b.a();
        this.f11323h = ControllerCenter.getGlobalEnvStruct().configRefreshDelayMills;
    }

    public static c a() {
        return a.f11325a;
    }

    public final void b() {
        this.f11321f.sendEmptyMessage(0);
        this.f11321f.sendEmptyMessageDelayed(2, this.f11323h);
    }

    public final void a(int i2) {
        if (i2 <= this.f11319d.f11310a) {
            com.efs.sdk.base.core.util.d.a("efs.config", "current config version is " + i2 + ", no need to refresh");
            return;
        }
        Message obtain = Message.obtain();
        obtain.arg1 = i2;
        obtain.what = 1;
        this.f11321f.sendMessage(obtain);
    }

    public final String a(boolean z3) {
        if (z3) {
            return "https://" + this.f11319d.f11312c;
        }
        return this.f11319d.f11311b + this.f11319d.f11312c;
    }

    public final void a(String str) {
        b a4 = b.a();
        if (d.a(str, a4)) {
            if (a(a4)) {
                return;
            }
            this.f11319d = a4;
            f();
            i();
            d();
            return;
        }
        this.f11321f.sendEmptyMessageDelayed(1, 3000L);
    }

    private boolean a(b bVar) {
        if (this.f11319d.f11310a >= bVar.f11310a) {
            return true;
        }
        com.efs.sdk.base.core.util.d.a("efs.config", "current config version (" + this.f11319d.f11310a + ") is older than another (" + bVar.f11310a + ")");
        return false;
    }
}
