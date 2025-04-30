package com.netease.nis.quicklogin;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.cmic.sso.sdk.auth.AuthnHelper;
import com.netease.nis.basesdk.EncryptUtil;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.a;
import com.netease.nis.quicklogin.entity.PreCheckEntity;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.QuickLoginListener;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.f;
import com.netease.nis.quicklogin.utils.g;
import com.sdk.Unicorn.base.api.ToolUtils;
import com.sdk.Unicorn.base.module.manager.SDKManager;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class QuickLogin {
    public static boolean DEBUG = false;
    public static final String TAG = "QuickLogin";
    public static int fetchNumberTimeout = 5;
    public static boolean isAllowedUploadInfo = true;
    public static long prefetchDataStartTime = 0;
    public static int prefetchNumberTimeout = 8;
    public static final String publicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB";

    /* renamed from: a  reason: collision with root package name */
    private String f54083a;

    /* renamed from: b  reason: collision with root package name */
    private Context f54084b;

    /* renamed from: c  reason: collision with root package name */
    private com.netease.nis.quicklogin.a f54085c;

    /* renamed from: d  reason: collision with root package name */
    private String f54086d;

    /* renamed from: e  reason: collision with root package name */
    private int f54087e;

    /* renamed from: f  reason: collision with root package name */
    private String f54088f;

    /* renamed from: g  reason: collision with root package name */
    private String f54089g;

    /* renamed from: h  reason: collision with root package name */
    private String f54090h;

    /* renamed from: i  reason: collision with root package name */
    private String f54091i;

    /* renamed from: j  reason: collision with root package name */
    private JSONObject f54092j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54093k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54094l;

    /* renamed from: m  reason: collision with root package name */
    private g f54095m;

    /* renamed from: n  reason: collision with root package name */
    private LoginUiHelper f54096n;

    /* renamed from: o  reason: collision with root package name */
    private UnifyUiConfig f54097o;

    /* renamed from: p  reason: collision with root package name */
    private long f54098p;

    /* loaded from: classes4.dex */
    class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f54099a;

        a(QuickLoginPreMobileListener quickLoginPreMobileListener) {
            this.f54099a = quickLoginPreMobileListener;
        }

        @Override // com.netease.nis.quicklogin.QuickLogin.d
        public void a(com.netease.nis.quicklogin.a aVar) {
            QuickLogin.this.f54085c = aVar;
            QuickLogin.prefetchDataStartTime = System.currentTimeMillis();
            Logger.d("prefetchMobileNumber [startTime] " + QuickLogin.prefetchDataStartTime);
            QuickLogin.this.f54085c.a(QuickLogin.this.f54089g, this.f54099a);
        }
    }

    /* loaded from: classes4.dex */
    class b implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f54101a;

        b(QuickLoginTokenListener quickLoginTokenListener) {
            this.f54101a = quickLoginTokenListener;
        }

        @Override // com.netease.nis.quicklogin.QuickLogin.d
        public void a(com.netease.nis.quicklogin.a aVar) {
            QuickLogin.this.f54085c = aVar;
            QuickLogin.prefetchDataStartTime = System.currentTimeMillis();
            QuickLogin.this.f54085c.a(QuickLogin.this.f54088f, this.f54101a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements HttpUtil.ResponseCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f54103a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ QuickLoginListener f54104b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54105c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f54106d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ d f54107e;

        c(long j4, QuickLoginListener quickLoginListener, String str, String str2, d dVar) {
            this.f54103a = j4;
            this.f54104b = quickLoginListener;
            this.f54105c = str;
            this.f54106d = str2;
            this.f54107e = dVar;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            QuickLogin.this.a(this.f54104b, str);
            Logger.e("preCheck [onError]" + str);
            QuickLogin quickLogin = QuickLogin.this;
            quickLogin.a(null, quickLogin.f54087e, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), i2, str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            QuickLogin.this.f54098p = System.currentTimeMillis();
            Logger.d("preCheck [onSuccess] " + str);
            Logger.d("preCheck [time] " + (System.currentTimeMillis() - this.f54103a) + "ms");
            PreCheckEntity preCheckEntity = (PreCheckEntity) com.netease.nis.quicklogin.utils.a.a(str, PreCheckEntity.class);
            if (preCheckEntity == null || preCheckEntity.getCode() != 200) {
                QuickLogin.this.a(this.f54104b, str);
                QuickLogin quickLogin = QuickLogin.this;
                quickLogin.a(null, quickLogin.f54087e, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), preCheckEntity == null ? 0 : preCheckEntity.getCode(), str);
                return;
            }
            String data = preCheckEntity.getData();
            if (preCheckEntity.getExtData() == null || this.f54104b.onExtendMsg(preCheckEntity.getExtData())) {
                try {
                    String a4 = com.netease.nis.quicklogin.utils.c.a(data, this.f54105c, this.f54106d);
                    Logger.d("preCheck [real] " + a4);
                    PreCheckEntity.Data data2 = (PreCheckEntity.Data) com.netease.nis.quicklogin.utils.a.a(a4, PreCheckEntity.Data.class);
                    if (data2 == null) {
                        QuickLogin.this.a(this.f54104b, str);
                        QuickLogin quickLogin2 = QuickLogin.this;
                        quickLogin2.a(null, quickLogin2.f54087e, com.netease.nis.quicklogin.b.b.RETURN_DATA_ERROR.ordinal(), preCheckEntity.getCode(), str);
                        return;
                    }
                    QuickLogin.this.f54089g = data2.getToken();
                    QuickLogin.this.f54090h = data2.getAppId();
                    QuickLogin.this.f54091i = data2.getAppKey();
                    QuickLogin.this.f54088f = data2.getUrl();
                    int ot = data2.getOt();
                    if (ot >= 1 && ot <= 3) {
                        QuickLogin.this.f54087e = ot;
                    }
                    this.f54107e.a(QuickLogin.this.a());
                } catch (Exception e4) {
                    Logger.e(e4.getMessage());
                    QuickLogin.this.a(this.f54104b, e4.toString());
                    QuickLogin quickLogin3 = QuickLogin.this;
                    quickLogin3.a(null, quickLogin3.f54087e, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), preCheckEntity.getCode(), e4.toString());
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface d {
        void a(com.netease.nis.quicklogin.a aVar);
    }

    /* loaded from: classes4.dex */
    private static class e {
        @SuppressLint({"StaticFieldLeak"})

        /* renamed from: a  reason: collision with root package name */
        private static final QuickLogin f54109a = new QuickLogin(null);
    }

    /* synthetic */ QuickLogin(a aVar) {
        this();
    }

    public static QuickLogin getInstance() {
        return e.f54109a;
    }

    public int checkNetWork(Context context) {
        try {
            return com.netease.nis.quicklogin.utils.a.a(context, (QuickLoginListener) null);
        } catch (JSONException e4) {
            Logger.e(e4.getMessage());
            return 5;
        }
    }

    public void clearScripCache(Context context) {
        try {
            AuthnHelper.getInstance(context).delScrip();
            ToolUtils.clearCache(context);
            com.netease.nis.quicklogin.utils.e.a(context, "timeend", 0L);
        } catch (Exception e4) {
            e4.printStackTrace();
            Logger.e("clearScripCache Exception=" + e4);
        }
    }

    public int getOperatorType(Context context) {
        try {
            return com.netease.nis.quicklogin.utils.a.c(context);
        } catch (JSONException e4) {
            Logger.e(e4.getMessage());
            return 5;
        }
    }

    public String getSDKVersion() {
        return "3.2.5";
    }

    public void getToken(String str, @NonNull QuickLoginTokenListener quickLoginTokenListener) {
        try {
            if (!this.f54094l) {
                this.f54083a = "https://ye.dun.163yun.com/v1/preCheck";
            }
            this.f54093k = false;
            a(str, quickLoginTokenListener, new b(quickLoginTokenListener));
        } catch (Exception e4) {
            e4.printStackTrace();
            a(this.f54089g, 0, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, e4.toString());
        }
    }

    public void init(Context context, String str) {
        this.f54084b = context.getApplicationContext();
        this.f54086d = str;
        com.netease.nis.quicklogin.utils.b.c().a(this.f54086d, this.f54084b);
        this.f54096n = new LoginUiHelper(context);
        g a4 = g.c().a(this.f54084b);
        this.f54095m = a4;
        a4.b().a(this.f54086d);
        f.a().a(this.f54084b).a(this.f54086d);
    }

    public boolean isPreLoginResultValid() {
        return System.currentTimeMillis() - this.f54098p <= 102000;
    }

    public void onePass(@NonNull QuickLoginTokenListener quickLoginTokenListener) {
        try {
            if (this.f54085c == null) {
                Logger.e("预取号异常，请查看预取号对应的错误回调");
                return;
            }
            this.f54096n.a(this.f54097o, this.f54089g);
            this.f54096n.a(quickLoginTokenListener);
            this.f54085c.a(quickLoginTokenListener);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void prefetchMobileNumber(@NonNull QuickLoginPreMobileListener quickLoginPreMobileListener) {
        try {
            if (!this.f54094l) {
                this.f54083a = "https://ye.dun.163yun.com/v1/oneclick/preCheck";
            }
            this.f54093k = true;
            a((String) null, quickLoginPreMobileListener, new a(quickLoginPreMobileListener));
        } catch (Exception e4) {
            e4.printStackTrace();
            a(this.f54089g, 0, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, e4.toString());
        }
    }

    public void quitActivity() {
        LoginUiHelper loginUiHelper = this.f54096n;
        if (loginUiHelper != null) {
            loginUiHelper.b();
        }
    }

    public void removeCustomView(int i2, View view) {
        LoginUiHelper loginUiHelper = this.f54096n;
        if (loginUiHelper != null) {
            loginUiHelper.a(i2, view);
        }
    }

    public void setAllowedUploadInfo(boolean z3) {
        isAllowedUploadInfo = z3;
    }

    public void setDebugMode(boolean z3) {
        DEBUG = z3;
        Logger.setTag(TAG);
        Logger.enableLog(z3);
        SDKManager.setDebug(z3);
        com.cmic.sso.sdk.auth.c.setDebugMode(z3);
    }

    public void setExtendData(JSONObject jSONObject) {
        this.f54092j = jSONObject;
    }

    public void setFetchNumberTimeout(int i2) {
        fetchNumberTimeout = i2;
    }

    public void setLoadingVisibility(boolean z3) {
        LoginUiHelper loginUiHelper = this.f54096n;
        if (loginUiHelper != null) {
            loginUiHelper.a(z3);
        }
    }

    public void setPreCheckUrl(String str) {
        this.f54094l = true;
        this.f54083a = str;
    }

    public void setPrefetchNumberTimeout(int i2) {
        prefetchNumberTimeout = i2;
    }

    public void setPrivacyState(boolean z3) {
        LoginUiHelper loginUiHelper = this.f54096n;
        if (loginUiHelper != null) {
            loginUiHelper.b(z3);
        }
    }

    public void setUnifyUiConfig(UnifyUiConfig unifyUiConfig) {
        this.f54097o = unifyUiConfig;
    }

    private QuickLogin() {
        this.f54089g = null;
        this.f54092j = null;
        this.f54093k = false;
        this.f54094l = false;
    }

    private void a(String str, QuickLoginListener quickLoginListener, d dVar) throws JSONException {
        if (this.f54093k) {
            this.f54095m.b().a(true);
        }
        this.f54095m.b().b(System.currentTimeMillis());
        this.f54095m.b().c(str);
        this.f54095m.b().h(this.f54083a);
        this.f54087e = com.netease.nis.quicklogin.utils.a.a(this.f54084b, quickLoginListener);
        Logger.d("networkType:" + this.f54087e);
        int i2 = this.f54087e;
        if (i2 == 5) {
            a(null, 5, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, "无法判断网络类型");
            a(quickLoginListener, "无法判断网络类型");
        } else if (i2 == 4) {
            a(null, 4, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, "当前仅wifi联网");
            a(quickLoginListener, "当前仅wifi联网，请连接数据流量");
        } else if (!this.f54093k && (TextUtils.isEmpty(str) || str.length() != 11)) {
            a(quickLoginListener, "输入手机号不合法，请检查后重新输入");
        } else {
            String randomString = EncryptUtil.getRandomString(16);
            String randomString2 = EncryptUtil.getRandomString(12);
            com.netease.nis.quicklogin.b.a.f54122a = randomString;
            com.netease.nis.quicklogin.b.a.f54123b = randomString2;
            Map<String, String> a4 = a(str, randomString, randomString2, quickLoginListener);
            HashMap hashMap = new HashMap();
            hashMap.put("terminal", "1");
            hashMap.put("version", "3.2.5");
            hashMap.put("model", Build.MODEL);
            hashMap.put("osVersion", Build.VERSION.RELEASE);
            HttpUtil.doPostRequestByForm(this.f54083a, a4, hashMap, new c(System.currentTimeMillis(), quickLoginListener, randomString, randomString2, dVar));
        }
    }

    private Map<String, String> a(String str, String str2, String str3, QuickLoginListener quickLoginListener) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("businessId", this.f54086d);
        if (this.f54093k) {
            jSONObject.put("operatorType", this.f54087e);
        } else {
            jSONObject.put("phone", str);
        }
        jSONObject.put("envType", 1);
        jSONObject.put("nonce", EncryptUtil.getRandomString(32));
        jSONObject.put("timestamp", System.currentTimeMillis());
        jSONObject.put("cacheType", 1);
        String str4 = null;
        try {
            str4 = com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), str2, str3);
        } catch (Exception e4) {
            Logger.e(e4.getMessage());
            a(quickLoginListener, e4.toString());
            a(null, this.f54087e, com.netease.nis.quicklogin.b.b.SDK_INTERNAL_EXCEPTION.ordinal(), 0, e4.toString());
        }
        String RSAEncrypt = EncryptUtil.RSAEncrypt(str3 + str2, publicKey);
        HashMap hashMap = new HashMap();
        hashMap.put(com.xinzhu.overmind.utils.helpers.d.f64708a, str4);
        hashMap.put("rk", RSAEncrypt);
        hashMap.put("version", getSDKVersion());
        JSONObject jSONObject2 = this.f54092j;
        if (jSONObject2 != null) {
            hashMap.put("extData", jSONObject2.toString());
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i2, int i4, int i5, String str2) {
        g.c().a(g.c.MONITOR_PRECHECK, i4, str, i2, i5, 0, str2, System.currentTimeMillis());
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.netease.nis.quicklogin.a a() {
        boolean z3 = this.f54093k;
        if (z3 && (this.f54091i == null || this.f54090h == null)) {
            throw new RuntimeException("appKey,appId is not allowed to be null");
        }
        if (this.f54089g != null) {
            if (this.f54084b != null) {
                return new a.C0253a().a(z3).a(this.f54090h).b(this.f54091i).c(this.f54089g).a(this.f54087e).a(this.f54084b);
            }
            throw new RuntimeException("mContext is not allowed to be null");
        }
        throw new RuntimeException("YDToken is not allowed to be null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(QuickLoginListener quickLoginListener, String str) {
        if (quickLoginListener instanceof QuickLoginPreMobileListener) {
            String str2 = this.f54089g;
            quickLoginListener.onGetMobileNumberError(str2 != null ? str2 : "易盾token为空", str);
        } else if (quickLoginListener instanceof QuickLoginTokenListener) {
            String str3 = this.f54089g;
            quickLoginListener.onGetTokenError(str3 != null ? str3 : "易盾token为空", str);
        }
    }
}
