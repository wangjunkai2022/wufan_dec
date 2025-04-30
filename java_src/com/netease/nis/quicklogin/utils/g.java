package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.activity.CommentCreatActivity_;
import com.netease.nis.basesdk.EncryptUtil;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;
/* compiled from: UploadInfoHelper.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: c  reason: collision with root package name */
    private static volatile g f54313c;

    /* renamed from: a  reason: collision with root package name */
    private final b f54314a = new b();

    /* renamed from: b  reason: collision with root package name */
    private Context f54315b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UploadInfoHelper.java */
    /* loaded from: classes4.dex */
    public class a implements HttpUtil.ResponseCallBack {
        a(g gVar) {
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i2, String str) {
            Logger.d("上传异常信息失败" + str);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            Logger.d("上传异常信息成功");
        }
    }

    /* compiled from: UploadInfoHelper.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String f54316a;

        /* renamed from: b  reason: collision with root package name */
        private String f54317b;

        /* renamed from: c  reason: collision with root package name */
        private int f54318c;

        /* renamed from: d  reason: collision with root package name */
        private int f54319d;

        /* renamed from: e  reason: collision with root package name */
        private int f54320e;

        /* renamed from: f  reason: collision with root package name */
        private int f54321f;

        /* renamed from: g  reason: collision with root package name */
        private String f54322g;

        /* renamed from: h  reason: collision with root package name */
        private String f54323h;

        /* renamed from: i  reason: collision with root package name */
        private String f54324i;

        /* renamed from: j  reason: collision with root package name */
        private long f54325j;

        /* renamed from: k  reason: collision with root package name */
        private String f54326k;

        /* renamed from: l  reason: collision with root package name */
        private int f54327l;

        /* renamed from: m  reason: collision with root package name */
        private String f54328m;

        /* renamed from: o  reason: collision with root package name */
        private String f54330o;

        /* renamed from: p  reason: collision with root package name */
        private String f54331p;

        /* renamed from: q  reason: collision with root package name */
        private long f54332q;

        /* renamed from: r  reason: collision with root package name */
        private long f54333r;

        /* renamed from: n  reason: collision with root package name */
        private int f54329n = 1;

        /* renamed from: s  reason: collision with root package name */
        private boolean f54334s = false;

        public void a(String str) {
            this.f54316a = str;
        }

        public void b(int i2) {
            this.f54319d = i2;
        }

        public void c(int i2) {
            this.f54320e = i2;
        }

        public void d(String str) {
            this.f54323h = str;
        }

        public void e(String str) {
            this.f54322g = str;
        }

        public void f(String str) {
            this.f54331p = str;
        }

        public void g(String str) {
            this.f54330o = str;
        }

        public void h(String str) {
            this.f54326k = str;
        }

        public void i(String str) {
            this.f54317b = str;
        }

        public void a(c cVar) {
            if (!this.f54334s) {
                if (cVar == c.MONITOR_PRECHECK) {
                    this.f54318c = 1;
                } else if (cVar == c.MONITOR_GET_TOKEN) {
                    this.f54318c = 2;
                }
            } else if (cVar == c.MONITOR_PRECHECK) {
                this.f54318c = 4;
            } else if (cVar == c.MONITOR_GET_TOKEN) {
                this.f54318c = 5;
            }
            this.f54318c = 3;
        }

        public void b(String str) {
            this.f54324i = str;
        }

        public void c(String str) {
            this.f54328m = str;
        }

        public void d(int i2) {
            this.f54327l = i2;
        }

        public void b(long j4) {
            this.f54333r = j4;
        }

        public String b() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("businessId", this.f54316a);
                jSONObject.put("token", this.f54317b);
                jSONObject.put("monitorType", this.f54318c);
                jSONObject.put("errorType", this.f54319d);
                jSONObject.put("httpCode", this.f54320e);
                jSONObject.put("code", this.f54321f);
                jSONObject.put("message", this.f54322g);
                jSONObject.put(IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, this.f54323h);
                jSONObject.put("dns", this.f54324i);
                jSONObject.put("requestTime", this.f54325j);
                jSONObject.put("requestURL", this.f54326k);
                jSONObject.put("ot", this.f54327l);
                jSONObject.put("phone", this.f54328m);
                jSONObject.put("envType", this.f54329n);
                jSONObject.put(CommentCreatActivity_.J, this.f54330o);
                jSONObject.put("osInfo", this.f54331p);
                jSONObject.put("clientTime", this.f54332q);
                jSONObject.put("version", "3.2.5");
                Logger.d(jSONObject.toString());
                return jSONObject.toString();
            } catch (JSONException e4) {
                e4.printStackTrace();
                return null;
            }
        }

        public void a(int i2) {
            this.f54321f = i2;
        }

        public void a() {
            this.f54325j = System.currentTimeMillis() - this.f54333r;
        }

        public void a(long j4) {
            this.f54332q = j4;
        }

        public void a(boolean z3) {
            this.f54334s = z3;
        }
    }

    /* compiled from: UploadInfoHelper.java */
    /* loaded from: classes4.dex */
    public enum c {
        MONITOR_PRECHECK,
        MONITOR_GET_TOKEN,
        MONITOR_SDK_INTERNAL
    }

    private g() {
    }

    public static g c() {
        if (f54313c == null) {
            synchronized (g.class) {
                if (f54313c == null) {
                    f54313c = new g();
                }
            }
        }
        return f54313c;
    }

    public g a(Context context) {
        this.f54315b = context.getApplicationContext();
        return this;
    }

    public b b() {
        return this.f54314a;
    }

    public void d() {
        String str;
        if (QuickLogin.isAllowedUploadInfo) {
            String b4 = this.f54314a.b();
            if (TextUtils.isEmpty(b4)) {
                return;
            }
            String randomString = EncryptUtil.getRandomString(16);
            String randomString2 = EncryptUtil.getRandomString(12);
            try {
                str = com.netease.nis.quicklogin.utils.c.b(b4, randomString, randomString2);
            } catch (Exception e4) {
                Logger.e(e4.getMessage());
                str = "";
            }
            String RSAEncrypt = EncryptUtil.RSAEncrypt(randomString2 + randomString, QuickLogin.publicKey);
            HashMap hashMap = new HashMap();
            hashMap.put(com.xinzhu.overmind.utils.helpers.d.f64708a, str);
            hashMap.put("rk", RSAEncrypt);
            hashMap.put("version", "3.2.5");
            HttpUtil.doPostRequestByForm("https://ye.dun.163yun.com/v2/collect", hashMap, null, new a(this));
        }
    }

    public void a(c cVar, int i2, String str, int i4, int i5, int i6, String str2, long j4) {
        a();
        this.f54314a.a(cVar);
        this.f54314a.b(i2);
        if (str != null) {
            this.f54314a.i(str);
        }
        if (i5 != 0) {
            this.f54314a.a(i5);
        }
        if (i6 != 0) {
            this.f54314a.c(i6);
        }
        this.f54314a.a();
        this.f54314a.d(i4);
        this.f54314a.e(str2);
        this.f54314a.a(j4);
    }

    private void a() {
        String b4 = com.netease.nis.quicklogin.utils.a.b(this.f54315b);
        String a4 = com.netease.nis.quicklogin.utils.a.a(this.f54315b);
        this.f54314a.d(b4);
        this.f54314a.b(a4);
        String str = Build.MODEL;
        String str2 = Build.VERSION.RELEASE;
        this.f54314a.g(str);
        this.f54314a.f(str2);
    }
}
