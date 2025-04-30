package com.efs.sdk.base.core.controller;

import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.webkit.ValueCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.sdk.app.statistic.c;
import com.efs.sdk.base.BuildConfig;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.config.GlobalEnvStruct;
import com.efs.sdk.base.core.config.b;
import com.efs.sdk.base.core.controller.a.a;
import com.efs.sdk.base.core.e.d;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.efs.sdk.base.core.util.PackageUtil;
import com.efs.sdk.base.core.util.d;
import com.efs.sdk.base.core.util.e;
import com.efs.sdk.base.core.util.f;
import com.efs.sdk.base.http.HttpResponse;
import com.efs.sdk.base.protocol.ILogProtocol;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.qq.e.comm.pi.ACTD;
import com.tencent.stat.DeviceInfo;
import com.umeng.umcrash.UMCrash;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public class ControllerCenter implements Handler.Callback {

    /* renamed from: h  reason: collision with root package name */
    private static GlobalEnvStruct f11331h;

    /* renamed from: a  reason: collision with root package name */
    private int f11332a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f11333b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final int f11334c = 1;

    /* renamed from: d  reason: collision with root package name */
    private final int f11335d = 2;

    /* renamed from: e  reason: collision with root package name */
    private final int f11336e = 3;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f11337f = false;

    /* renamed from: g  reason: collision with root package name */
    private a f11338g;

    /* renamed from: i  reason: collision with root package name */
    private Handler f11339i;

    public ControllerCenter(EfsReporter.Builder builder) {
        f11331h = builder.getGlobalEnvStruct();
        Handler handler = new Handler(com.efs.sdk.base.core.util.a.a.f11388a.getLooper(), this);
        this.f11339i = handler;
        handler.sendEmptyMessage(0);
    }

    private void a() {
        if (this.f11338g == null) {
            this.f11338g = new a();
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            f11331h.mAppContext.registerReceiver(this.f11338g, intentFilter);
        } catch (Throwable th) {
            d.a("efs.base", "register network change receiver error", th);
            int i2 = this.f11332a + 1;
            this.f11332a = i2;
            if (i2 < 3) {
                this.f11339i.sendEmptyMessageDelayed(3, 6000L);
            }
        }
    }

    private void b(final ILogProtocol iLogProtocol) {
        if (iLogProtocol == null) {
            return;
        }
        com.efs.sdk.base.core.util.a.d.a(new Runnable() { // from class: com.efs.sdk.base.core.controller.ControllerCenter.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    iLogProtocol.insertGlobal(b.a.a().f11328a);
                    if (!"wa".equalsIgnoreCase(iLogProtocol.getLogType())) {
                        ControllerCenter.a(iLogProtocol);
                    }
                    if (ControllerCenter.getGlobalEnvStruct().isEnableSendLog()) {
                        final com.efs.sdk.base.core.d.b a4 = com.efs.sdk.base.core.d.b.a(iLogProtocol);
                        final com.efs.sdk.base.core.e.d a5 = d.a.a();
                        com.efs.sdk.base.core.util.a.d.a(new Runnable() { // from class: com.efs.sdk.base.core.e.d.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                a5.f11359a.a(a4);
                            }
                        });
                    }
                } catch (Throwable th) {
                    com.efs.sdk.base.core.util.d.b("efs.base", "log send error", th);
                }
            }
        });
    }

    @NonNull
    public static GlobalEnvStruct getGlobalEnvStruct() {
        return f11331h;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            b a4 = b.a.a();
            com.efs.sdk.base.core.config.a aVar = new com.efs.sdk.base.core.config.a();
            a4.f11328a = aVar;
            aVar.a(ACTD.APPID_KEY, getGlobalEnvStruct().getAppid());
            int a5 = e.a();
            a4.f11328a.a(ForumPostsTagSelectActivity_.f30340y, Integer.valueOf(a5));
            a4.f11328a.a("ps", e.a(a5));
            String a6 = f.a(a4.f11329b);
            a4.f11328a.a("wid", a6);
            if (TextUtils.isEmpty(getGlobalEnvStruct().getUid())) {
                a4.f11328a.a("uid", a6);
            } else {
                a4.f11328a.a("uid", getGlobalEnvStruct().getUid());
            }
            com.efs.sdk.base.core.config.a aVar2 = a4.f11328a;
            com.efs.sdk.base.core.a.a.a();
            aVar2.a("stime", Long.valueOf(com.efs.sdk.base.core.a.a.b() - Process.getElapsedCpuTime()));
            a4.f11328a.a("pkg", PackageUtil.getPackageName(a4.f11329b));
            a4.f11328a.a(DeviceInfo.TAG_VERSION, PackageUtil.getAppVersionName(a4.f11329b));
            a4.f11328a.a("vcode", PackageUtil.getAppVersionCode(a4.f11329b));
            a4.f11328a.a("sdk_ver", BuildConfig.VERSION_NAME);
            a4.f11328a.a("brand", Build.BRAND.toLowerCase());
            com.efs.sdk.base.core.config.a aVar3 = a4.f11328a;
            String str = Build.MODEL;
            aVar3.a("model", str == null ? "unknown" : str.replace(" ", "-").replace("_", "-").toLowerCase());
            a4.f11328a.a("build_model", str);
            DisplayMetrics displayMetrics = a4.f11329b.getResources().getDisplayMetrics();
            a4.f11328a.a("dsp_w", Integer.valueOf(displayMetrics.widthPixels));
            a4.f11328a.a("dsp_h", Integer.valueOf(displayMetrics.heightPixels));
            a4.f11328a.a("fr", q.a.f73954a);
            a4.f11328a.a("rom", Build.VERSION.RELEASE);
            a4.f11328a.a("sdk", Integer.valueOf(Build.VERSION.SDK_INT));
            a4.f11328a.a("lang", Locale.getDefault().getLanguage());
            a4.f11328a.a("tzone", TimeZone.getDefault().getID());
            a4.f11328a.a(c.f9616k, NetworkUtil.getNetworkType(a4.f11329b));
            try {
                String[] networkAccessMode = NetworkUtil.getNetworkAccessMode(a4.f11329b);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    a4.f11328a.a(UMCrash.KEY_HEADER_ACCESS, NetworkUtil.NETWORK_TYPE_WIFI);
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    a4.f11328a.a(UMCrash.KEY_HEADER_ACCESS, "2G/3G");
                } else {
                    a4.f11328a.a(UMCrash.KEY_HEADER_ACCESS, "unknow");
                }
                if (!"".equals(networkAccessMode[1])) {
                    a4.f11328a.a(UMCrash.KEY_HEADER_ACCESS_SUBTYPE, networkAccessMode[1]);
                }
                a4.f11328a.a(UMCrash.KEY_HEADER_NETWORK_TYPE, Integer.valueOf(NetworkUtil.getNetworkTypeUmeng(a4.f11329b)));
            } catch (Throwable th) {
                th.printStackTrace();
            }
            f.a.a();
            com.efs.sdk.base.core.config.a.c.a().b();
            a();
            com.efs.sdk.base.core.f.f a7 = f.a.a();
            boolean isIntl = f11331h.isIntl();
            com.efs.sdk.base.core.f.c cVar = a7.f11376a;
            if (isIntl) {
                cVar.f11368a = "https://errlogos.umeng.com/api/crashsdk/logcollect";
                cVar.f11369b = "4ea4e41a3993";
            } else {
                cVar.f11368a = "https://errlog.umeng.com/api/crashsdk/logcollect";
                cVar.f11369b = "28ef1713347d";
            }
            a7.f11377b = this;
            a7.f11378c.f11363a = this;
            a7.f11379d.f11363a = this;
            this.f11337f = true;
            com.efs.sdk.base.core.c.d.a().sendEmptyMessageDelayed(0, f11331h.getLogSendDelayMills());
            com.efs.sdk.base.core.f.f a8 = f.a.a();
            if (a8.f11377b != null && getGlobalEnvStruct().isEnableWaStat()) {
                a8.f11377b.send(new com.efs.sdk.base.core.f.b("efs_core", "pvuv", a8.f11376a.f11370c));
            }
        } else if (i2 == 1) {
            Object obj = message.obj;
            if (obj != null && (obj instanceof ILogProtocol)) {
                b((ILogProtocol) obj);
            }
        } else if (i2 == 3) {
            a();
        }
        return true;
    }

    public void send(ILogProtocol iLogProtocol) {
        if (!this.f11337f) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = iLogProtocol;
            this.f11339i.sendMessage(obtain);
            return;
        }
        b(iLogProtocol);
    }

    @Nullable
    public HttpResponse sendSyncImmediately(String str, int i2, String str2, boolean z3, File file) {
        com.efs.sdk.base.core.d.b bVar = new com.efs.sdk.base.core.d.b(str, (byte) 2);
        bVar.b(1);
        bVar.f11352d = file;
        bVar.a(str2);
        bVar.a(i2);
        bVar.f11350b.f11354b = z3;
        bVar.c();
        d.a.a().f11359a.a(bVar);
        return bVar.f11350b.f11355c;
    }

    static /* synthetic */ void a(ILogProtocol iLogProtocol) {
        for (ValueCallback<Pair<Message, Message>> valueCallback : getGlobalEnvStruct().getCallback(9)) {
            HashMap hashMap = new HashMap(4);
            hashMap.put("log_type", iLogProtocol.getLogType());
            hashMap.put("log_data", iLogProtocol.generateString());
            hashMap.put("link_key", iLogProtocol.getLinkKey());
            hashMap.put("link_id", iLogProtocol.getLinkId());
            Message obtain = Message.obtain(null, 9, hashMap);
            Message obtain2 = Message.obtain();
            valueCallback.onReceiveValue(new Pair<>(obtain, obtain2));
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
