package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.live.ITTLiveTokenInjectionAuth;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class TTAdConfig implements AdConfig {

    /* renamed from: a  reason: collision with root package name */
    private String f10446a;

    /* renamed from: b  reason: collision with root package name */
    private String f10447b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10448c;

    /* renamed from: d  reason: collision with root package name */
    private String f10449d;

    /* renamed from: e  reason: collision with root package name */
    private String f10450e;

    /* renamed from: f  reason: collision with root package name */
    private int f10451f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f10452g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10453h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f10454i;

    /* renamed from: j  reason: collision with root package name */
    private int[] f10455j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f10456k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f10457l;

    /* renamed from: m  reason: collision with root package name */
    private String[] f10458m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f10459n;

    /* renamed from: o  reason: collision with root package name */
    private int f10460o;

    /* renamed from: p  reason: collision with root package name */
    private Map<String, Object> f10461p;

    /* renamed from: q  reason: collision with root package name */
    private TTCustomController f10462q;

    /* renamed from: r  reason: collision with root package name */
    private int f10463r;

    /* renamed from: s  reason: collision with root package name */
    private ITTLiveTokenInjectionAuth f10464s;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f10466a;

        /* renamed from: b  reason: collision with root package name */
        private String f10467b;

        /* renamed from: d  reason: collision with root package name */
        private String f10469d;

        /* renamed from: e  reason: collision with root package name */
        private String f10470e;

        /* renamed from: j  reason: collision with root package name */
        private int[] f10475j;

        /* renamed from: m  reason: collision with root package name */
        private String[] f10478m;

        /* renamed from: o  reason: collision with root package name */
        private TTCustomController f10480o;

        /* renamed from: p  reason: collision with root package name */
        private int f10481p;

        /* renamed from: s  reason: collision with root package name */
        private ITTLiveTokenInjectionAuth f10484s;

        /* renamed from: c  reason: collision with root package name */
        private boolean f10468c = false;

        /* renamed from: f  reason: collision with root package name */
        private int f10471f = 0;

        /* renamed from: g  reason: collision with root package name */
        private boolean f10472g = true;

        /* renamed from: h  reason: collision with root package name */
        private boolean f10473h = false;

        /* renamed from: i  reason: collision with root package name */
        private boolean f10474i = false;

        /* renamed from: k  reason: collision with root package name */
        private boolean f10476k = true;

        /* renamed from: l  reason: collision with root package name */
        private boolean f10477l = false;

        /* renamed from: n  reason: collision with root package name */
        private boolean f10479n = false;

        /* renamed from: q  reason: collision with root package name */
        private int f10482q = 2;

        /* renamed from: r  reason: collision with root package name */
        private int f10483r = 0;

        public Builder allowShowNotify(boolean z3) {
            this.f10472g = z3;
            return this;
        }

        @Deprecated
        public Builder allowShowPageWhenScreenLock(boolean z3) {
            this.f10474i = z3;
            return this;
        }

        public Builder appId(String str) {
            this.f10466a = str;
            return this;
        }

        public Builder appName(String str) {
            this.f10467b = str;
            return this;
        }

        public Builder asyncInit(boolean z3) {
            this.f10479n = z3;
            return this;
        }

        public TTAdConfig build() {
            TTAdConfig tTAdConfig = new TTAdConfig();
            tTAdConfig.setAppId(this.f10466a);
            tTAdConfig.setAppName(this.f10467b);
            tTAdConfig.setPaid(this.f10468c);
            tTAdConfig.setKeywords(this.f10469d);
            tTAdConfig.setData(this.f10470e);
            tTAdConfig.setTitleBarTheme(this.f10471f);
            tTAdConfig.setAllowShowNotify(this.f10472g);
            tTAdConfig.setDebug(this.f10473h);
            tTAdConfig.setAllowShowPageWhenScreenLock(this.f10474i);
            tTAdConfig.setDirectDownloadNetworkType(this.f10475j);
            tTAdConfig.setUseTextureView(this.f10476k);
            tTAdConfig.setSupportMultiProcess(this.f10477l);
            tTAdConfig.setNeedClearTaskReset(this.f10478m);
            tTAdConfig.setAsyncInit(this.f10479n);
            tTAdConfig.setCustomController(this.f10480o);
            tTAdConfig.setThemeStatus(this.f10481p);
            tTAdConfig.setExtra("plugin_update_conf", Integer.valueOf(this.f10482q));
            tTAdConfig.setExtra(TTAdConstant.KEY_AGE_GROUP, Integer.valueOf(this.f10483r));
            tTAdConfig.setInjectionAuth(this.f10484s);
            return tTAdConfig;
        }

        public Builder customController(TTCustomController tTCustomController) {
            this.f10480o = tTCustomController;
            return this;
        }

        public Builder data(String str) {
            this.f10470e = str;
            return this;
        }

        public Builder debug(boolean z3) {
            this.f10473h = z3;
            return this;
        }

        public Builder directDownloadNetworkType(int... iArr) {
            this.f10475j = iArr;
            return this;
        }

        public Builder injectionAuth(ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth) {
            this.f10484s = iTTLiveTokenInjectionAuth;
            return this;
        }

        public Builder keywords(String str) {
            this.f10469d = str;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.f10478m = strArr;
            return this;
        }

        public Builder paid(boolean z3) {
            this.f10468c = z3;
            return this;
        }

        public Builder setAgeGroup(int i2) {
            this.f10483r = i2;
            return this;
        }

        public Builder setPluginUpdateConfig(int i2) {
            this.f10482q = i2;
            return this;
        }

        public Builder supportMultiProcess(boolean z3) {
            this.f10477l = z3;
            return this;
        }

        public Builder themeStatus(int i2) {
            this.f10481p = i2;
            return this;
        }

        public Builder titleBarTheme(int i2) {
            this.f10471f = i2;
            return this;
        }

        public Builder useTextureView(boolean z3) {
            this.f10476k = z3;
            return this;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppId() {
        return this.f10446a;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getAppName() {
        return this.f10447b;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public TTCustomController getCustomController() {
        return this.f10462q;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getData() {
        return this.f10450e;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int[] getDirectDownloadNetworkType() {
        return this.f10455j;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    @Deprecated
    public Object getExtra(String str) {
        return this.f10461p.get(str);
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public ITTLiveTokenInjectionAuth getInjectionAuth() {
        return this.f10464s;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String getKeywords() {
        return this.f10449d;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public String[] getNeedClearTaskReset() {
        return this.f10458m;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public AdConfig.SdkInfo getSdkInfo() {
        return new AdConfig.SdkInfo() { // from class: com.bytedance.sdk.openadsdk.TTAdConfig.1
            @Override // com.bytedance.sdk.openadsdk.AdConfig.SdkInfo
            public boolean isPlugin() {
                return true;
            }

            @Override // com.bytedance.sdk.openadsdk.AdConfig.SdkInfo
            public String pluginName() {
                return "com.byted.pangle";
            }

            @Override // com.bytedance.sdk.openadsdk.AdConfig.SdkInfo
            public int sdkVersionCode() {
                return 4602;
            }

            @Override // com.bytedance.sdk.openadsdk.AdConfig.SdkInfo
            public String sdkVersionName() {
                return "4.6.0.2";
            }
        };
    }

    public int getThemeStatus() {
        return this.f10463r;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public int getTitleBarTheme() {
        return this.f10451f;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isAllowShowNotify() {
        return this.f10452g;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isAllowShowPageWhenScreenLock() {
        return this.f10454i;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isAsyncInit() {
        return this.f10459n;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isDebug() {
        return this.f10453h;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isPaid() {
        return this.f10448c;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isSupportMultiProcess() {
        return this.f10457l;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public boolean isUseTextureView() {
        return this.f10456k;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public Object removeExtra(String str) {
        return this.f10461p.remove(str);
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    public void setAgeGroup(int i2) {
        this.f10461p.put(TTAdConstant.KEY_AGE_GROUP, Integer.valueOf(i2));
    }

    public void setAllowShowNotify(boolean z3) {
        this.f10452g = z3;
    }

    public void setAllowShowPageWhenScreenLock(boolean z3) {
        this.f10454i = z3;
    }

    public void setAppId(String str) {
        this.f10446a = str;
    }

    public void setAppName(String str) {
        this.f10447b = str;
    }

    public void setAsyncInit(boolean z3) {
        this.f10459n = z3;
    }

    public void setCustomController(TTCustomController tTCustomController) {
        this.f10462q = tTCustomController;
    }

    public void setData(String str) {
        this.f10450e = str;
    }

    public void setDebug(boolean z3) {
        this.f10453h = z3;
    }

    public void setDirectDownloadNetworkType(int... iArr) {
        this.f10455j = iArr;
    }

    @Override // com.bytedance.sdk.openadsdk.AdConfig
    @Deprecated
    public void setExtra(String str, Object obj) {
        this.f10461p.put(str, obj);
    }

    public void setInjectionAuth(ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth) {
        this.f10464s = iTTLiveTokenInjectionAuth;
    }

    public void setKeywords(String str) {
        this.f10449d = str;
    }

    public void setNeedClearTaskReset(String... strArr) {
        this.f10458m = strArr;
    }

    public void setPaid(boolean z3) {
        this.f10448c = z3;
    }

    public void setSupportMultiProcess(boolean z3) {
        this.f10457l = z3;
    }

    public void setThemeStatus(int i2) {
        this.f10463r = i2;
    }

    public void setTitleBarTheme(int i2) {
        this.f10451f = i2;
    }

    public void setUseTextureView(boolean z3) {
        this.f10456k = z3;
    }

    private TTAdConfig() {
        this.f10448c = false;
        this.f10451f = 0;
        this.f10452g = true;
        this.f10453h = false;
        this.f10454i = false;
        this.f10456k = true;
        this.f10457l = false;
        this.f10459n = false;
        this.f10460o = 0;
        this.f10461p = new HashMap();
    }
}
