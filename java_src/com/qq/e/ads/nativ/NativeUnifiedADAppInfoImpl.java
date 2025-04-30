package com.qq.e.ads.nativ;

import org.json.JSONObject;
/* loaded from: classes4.dex */
public class NativeUnifiedADAppInfoImpl implements NativeUnifiedADAppMiitInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f56366a;

    /* renamed from: b  reason: collision with root package name */
    private final String f56367b;

    /* renamed from: c  reason: collision with root package name */
    private final long f56368c;

    /* renamed from: d  reason: collision with root package name */
    private final String f56369d;

    /* renamed from: e  reason: collision with root package name */
    private final String f56370e;

    /* renamed from: f  reason: collision with root package name */
    private final String f56371f;

    /* loaded from: classes4.dex */
    private interface Keys {
        public static final String APP_NAME = "app_name";
        public static final String AUTHOR_NAME = "author_name";
        public static final String PACKAGE_SIZE = "package_size";
        public static final String PERMISSION_URL = "permission_url";
        public static final String PRIVACY_AGREEMENT = "privacy_agreement";
        public static final String VERSION_NAME = "version_name";
    }

    public NativeUnifiedADAppInfoImpl(JSONObject jSONObject) {
        this.f56366a = jSONObject.optString(Keys.APP_NAME);
        this.f56367b = jSONObject.optString(Keys.AUTHOR_NAME);
        this.f56368c = jSONObject.optLong(Keys.PACKAGE_SIZE);
        this.f56369d = jSONObject.optString(Keys.PERMISSION_URL);
        this.f56370e = jSONObject.optString(Keys.PRIVACY_AGREEMENT);
        this.f56371f = jSONObject.optString(Keys.VERSION_NAME);
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getAppName() {
        return this.f56366a;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getAuthorName() {
        return this.f56367b;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public long getPackageSizeBytes() {
        return this.f56368c;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getPermissionsUrl() {
        return this.f56369d;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getPrivacyAgreement() {
        return this.f56370e;
    }

    @Override // com.qq.e.ads.nativ.NativeUnifiedADAppMiitInfo
    public String getVersionName() {
        return this.f56371f;
    }
}
