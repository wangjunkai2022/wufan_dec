package com.bytedance.sdk.openadsdk.live;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.MethodChannelService;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdEvent;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.live.core.ITTLiveConfig;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTLiveSDkBridge.java */
/* loaded from: classes2.dex */
public class b extends com.bytedance.sdk.openadsdk.downloadnew.a implements Serializable {

    /* renamed from: g  reason: collision with root package name */
    private ITTLiveConfig f10672g = null;

    /* renamed from: h  reason: collision with root package name */
    private JSONObject f10673h = null;

    /* renamed from: i  reason: collision with root package name */
    private ITTLiveTokenInjectionAuth f10674i;

    /* renamed from: b  reason: collision with root package name */
    private static final b f10667b = new b();

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicBoolean f10668c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f10669d = new AtomicBoolean(false);

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicBoolean f10670e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicBoolean f10671f = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    public static TTAdEvent f10666a = null;

    private b() {
    }

    private void c() {
        String str;
        ITTLiveConfig iTTLiveConfig;
        Plugin plugin;
        StringBuilder sb = new StringBuilder();
        sb.append("hasLiveSDKInited：");
        AtomicBoolean atomicBoolean = f10671f;
        sb.append(atomicBoolean.get());
        sb.append(", hasLiveInstalled：");
        AtomicBoolean atomicBoolean2 = f10669d;
        sb.append(atomicBoolean2.get());
        com.bytedance.sdk.openadsdk.api.a.c("TTLiveSDkBridge", sb.toString());
        if (this.f10672g != null) {
            str = "GeneralAppId：" + this.f10672g.getGeneralAppId() + "，isValid：" + this.f10672g.isValid();
        } else {
            str = null;
        }
        com.bytedance.sdk.openadsdk.api.a.c("TTLiveSDkBridge", str);
        if (atomicBoolean.get() || !atomicBoolean2.get() || (iTTLiveConfig = this.f10672g) == null || !iTTLiveConfig.isValid() || (plugin = Zeus.getPlugin("com.byted.live.lite")) == null) {
            return;
        }
        AtomicBoolean atomicBoolean3 = f10670e;
        if (atomicBoolean3.get()) {
            return;
        }
        atomicBoolean3.set(true);
        if (!a.c(plugin.getVersion())) {
            com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "live sdk init crash more than consecutive 5 times , live plugin had uninstalled ! App cold start will request new live plugin ！");
            a.d(plugin.getVersion());
            atomicBoolean3.set(false);
            return;
        }
        ILiveHostContextParam.Builder hostActionParam = new ILiveHostContextParam.Builder().setAppName(this.f10672g.getAppName()).setChannel(this.f10672g.getChannel()).setIsDebug(this.f10672g.isDebug()).setECHostAppId(this.f10672g.getECHostAppId()).setPartner(this.f10672g.getPartner()).provideMethodChannel(new MethodChannelService() { // from class: com.bytedance.sdk.openadsdk.live.b.1
            public String identity() {
                return "pangle";
            }

            @Nullable
            public Object invokeMethod(String str2, Object... objArr) {
                if (TextUtils.isEmpty(str2)) {
                    return null;
                }
                str2.hashCode();
                if (str2.equals("getBiddingToken")) {
                    return b.this.a(objArr);
                }
                return null;
            }
        }).setPartnerSecret(this.f10672g.getPartnerSecret()).setHostPermission(this.f10672g.getHostPermission()).setHostActionParam(new com.bytedance.sdk.openadsdk.live.core.a(this.f10672g.getLiveHostAction()));
        if (this.f10674i != null) {
            hostActionParam.setInjectionAuth(new com.bytedance.sdk.openadsdk.live.core.b(this.f10674i));
        }
        ILiveInitCallback iLiveInitCallback = new ILiveInitCallback() { // from class: com.bytedance.sdk.openadsdk.live.b.2
            public final void onLiveInitFinish() {
                com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "onLiveInitFinish - live sdk init succeed！");
                com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "execute commerce initLiveCommerce method start");
                boolean a4 = a.a();
                com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "execute commerce initLiveCommerce end , result: " + a4);
                b.f10671f.set(true);
                b.this.d();
                if (b.f10666a != null) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean(TTLiveConstants.PARAMS_LIVE_SDK_INIT_STATUS, b.f10671f.get());
                    b.f10666a.onEvent(2, bundle);
                }
            }
        };
        if (TTAppContextHolder.getContext() instanceof Application) {
            hostActionParam.setContext((Application) TTAppContextHolder.getContext());
        }
        a.a(plugin.getVersion());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("execute live sdk initLive method start, GeneralAppId:");
        ITTLiveConfig iTTLiveConfig2 = this.f10672g;
        sb2.append(iTTLiveConfig2 != null ? iTTLiveConfig2.getGeneralAppId() : null);
        com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", sb2.toString());
        Context context = TTAppContextHolder.getContext();
        ITTLiveConfig iTTLiveConfig3 = this.f10672g;
        com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "execute live sdk initLive method end, (方法顺利执行结果)result: " + a.a(context, iTTLiveConfig3 != null ? iTTLiveConfig3.getGeneralAppId() : null, hostActionParam, iLiveInitCallback));
        atomicBoolean3.set(false);
        a.b((long) plugin.getVersion());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (f10666a != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putBoolean("live_plugin_installed", f10669d.get());
                bundle.putBoolean("live_plugin_inited", f10671f.get());
                f10666a.onEvent(3, bundle);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private Context getContext(Object obj) {
        if (obj instanceof Context) {
            return (Context) obj;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T callMethod(Class<T> cls, int i2, Map<String, Object> map) {
        if (i2 != 0) {
            if (i2 != 1) {
                return (T) super.callMethod(cls, i2, map);
            }
            return (T) f10671f;
        } else if (!f10671f.get()) {
            return (T) 1;
        } else {
            if (!a.a(getContext(map.get("context")), a(map.get(TTLiveConstants.BUNDLE_KEY)))) {
                return (T) 2;
            }
            return (T) 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls, int i2, Map<String, Object> map) {
        return (T) super.getObj(cls, i2, map);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public void init(Bundle bundle) {
        super.init(bundle);
        ITTLiveConfig iTTLiveConfig = this.f10672g;
        if (iTTLiveConfig != null && iTTLiveConfig.isValid() && !TextUtils.isEmpty(this.f10672g.getGeneralAppId()) && !TextUtils.isEmpty(this.f10672g.getPartner()) && !TextUtils.isEmpty(this.f10672g.getPartnerSecret())) {
            com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "The configuration has been obtained. Do not repeat initialization");
            return;
        }
        Serializable serializable = bundle.getSerializable(TTLiveConstants.LIVE_INIT_CONFIG_KEY);
        if (serializable instanceof ITTLiveConfig) {
            this.f10672g = (ITTLiveConfig) serializable;
        }
        try {
            this.f10673h = new JSONObject(bundle.getString(TTLiveConstants.LIVE_INIT_EXTRA_KEY));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        c();
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public void subscribe(TTAdEvent tTAdEvent) {
        f10666a = tTAdEvent;
        d();
    }

    public static b a() {
        return f10667b;
    }

    public void a(ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth) {
        this.f10674i = iTTLiveTokenInjectionAuth;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            try {
                Integer num = (Integer) objArr[0];
                TTAdManager adManager = TTAdSdk.getAdManager();
                if (adManager != null) {
                    return adManager.getBiddingToken(new AdSlot.Builder().setAdType(num.intValue()).build());
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private Bundle a(Object obj) {
        if (obj instanceof Bundle) {
            return (Bundle) obj;
        }
        return null;
    }
}
