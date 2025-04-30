package cn.sharesdk.tencent.qq.utils;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.c;
import cn.sharesdk.framework.e;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.h;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.tencent.qq.ShareActivity;
import com.join.mgps.service.CommonService_;
import com.mob.MobSDK;
import com.mob.tools.RxMob;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import io.netty.util.internal.StringUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: QQHelper.java */
/* loaded from: classes2.dex */
public class a extends e {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f9022b = {"get_user_info", "get_simple_userinfo", "get_user_profile", "get_app_friends", "add_share", "list_album", "upload_pic", "add_album", "set_user_face", "get_vip_info", "get_vip_rich_info", "get_intimate_friends_weibo", "match_nick_tips_weibo", "add_t", "add_pic_t"};

    /* renamed from: c  reason: collision with root package name */
    private static a f9023c;

    /* renamed from: d  reason: collision with root package name */
    private String f9024d;

    /* renamed from: e  reason: collision with root package name */
    private String[] f9025e;

    /* renamed from: f  reason: collision with root package name */
    private String f9026f;

    /* renamed from: g  reason: collision with root package name */
    private String f9027g;

    /* renamed from: h  reason: collision with root package name */
    private String f9028h;

    /* renamed from: i  reason: collision with root package name */
    private String f9029i;

    private a(Platform platform) {
        super(platform);
        b();
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getAuthorizeUrl() {
        String redirectUri;
        ShareSDK.logApiEvent("/oauth2.0/authorize", c());
        String d4 = d();
        try {
            redirectUri = Data.urlEncode(getRedirectUri(), "utf-8");
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            redirectUri = getRedirectUri();
        }
        return "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id=" + this.f9024d + "&redirect_uri=" + redirectUri + "&display=mobile&scope=" + d4;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public b getAuthorizeWebviewClient(WebAuthorizeActivity webAuthorizeActivity) {
        return new cn.sharesdk.tencent.qq.a(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getRedirectUri() {
        return "auth://tauth.qq.com/";
    }

    @Override // cn.sharesdk.framework.e, cn.sharesdk.framework.authorize.AuthorizeHelper
    public c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        cn.sharesdk.tencent.qq.b bVar = new cn.sharesdk.tencent.qq.b(sSOAuthorizeActivity);
        bVar.a(5656);
        bVar.a(this.f9024d, d(), this.f9029i);
        return bVar;
    }

    public void b(String str) {
        this.f9026f = str;
    }

    public HashMap<String, Object> c(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", str));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String httpGet = SSDKNetworkHelper.getInstance().httpGet("https://graph.qq.com/oauth2.0/me", arrayList, arrayList2, null, "/oauth2.0/me", c());
        if (httpGet.startsWith(com.alipay.sdk.authjs.a.f9675i)) {
            while (!httpGet.startsWith("{") && httpGet.length() > 0) {
                httpGet = httpGet.substring(1);
            }
            while (!httpGet.endsWith("}") && httpGet.length() > 0) {
                httpGet = httpGet.substring(0, httpGet.length() - 1);
            }
        }
        if (httpGet.length() > 0) {
            return new Hashon().fromJson(httpGet);
        }
        return null;
    }

    public void d(String str) {
        this.f9028h = str;
    }

    public HashMap<String, Object> e(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", this.f9028h));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f9024d));
        arrayList.add(new KVPair<>("openid", this.f9026f));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String httpGet = SSDKNetworkHelper.getInstance().httpGet("https://graph.qq.com/user/get_simple_userinfo", arrayList, arrayList2, null, "/user/get_simple_userinfo", c());
        if (httpGet == null || httpGet.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(httpGet);
    }

    public static a a(Platform platform) {
        if (f9023c == null) {
            f9023c = new a(platform);
        }
        return f9023c;
    }

    private String d() {
        String[] strArr = this.f9025e;
        if (strArr == null) {
            strArr = f9022b;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        for (String str : strArr) {
            if (i2 > 0) {
                sb.append(StringUtil.COMMA);
            }
            sb.append(str);
            i2++;
        }
        return sb.toString();
    }

    public boolean b() {
        String str;
        String str2;
        try {
            PackageInfo b4 = cn.sharesdk.framework.utils.a.b("com.tencent.mobileqq", 0);
            str = b4.versionName;
            this.f9029i = b4.packageName;
        } catch (Throwable th) {
            try {
                try {
                    try {
                        try {
                            PackageInfo b5 = cn.sharesdk.framework.utils.a.b("com.tencent.tim", 0);
                            str2 = b5.versionName;
                            this.f9029i = b5.packageName;
                        } catch (Throwable unused) {
                            str = null;
                            SSDKLog.b().a(th);
                        }
                    } catch (Throwable unused2) {
                        PackageInfo b6 = cn.sharesdk.framework.utils.a.b("com.tencent.qqlite", 0);
                        str2 = b6.versionName;
                        this.f9029i = b6.packageName;
                    }
                } catch (Throwable unused3) {
                    PackageInfo b7 = cn.sharesdk.framework.utils.a.b("com.tencent.mobileqqi", 0);
                    str2 = b7.versionName;
                    this.f9029i = b7.packageName;
                }
            } catch (Throwable unused4) {
                PackageInfo b8 = cn.sharesdk.framework.utils.a.b("com.tencent.minihd.qq", 0);
                str2 = b8.versionName;
                this.f9029i = b8.packageName;
            }
            str = str2;
        }
        return !TextUtils.isEmpty(str);
    }

    public void a(String str) {
        this.f9024d = str;
    }

    public void a(String[] strArr) {
        this.f9025e = strArr;
    }

    public void a(final AuthorizeListener authorizeListener, boolean z3) {
        a(new SSOListener() { // from class: cn.sharesdk.tencent.qq.utils.a.1
            @Override // cn.sharesdk.framework.authorize.SSOListener
            public void onCancel() {
                authorizeListener.onCancel();
            }

            @Override // cn.sharesdk.framework.authorize.SSOListener
            public void onComplete(Bundle bundle) {
                authorizeListener.onComplete(bundle);
            }

            @Override // cn.sharesdk.framework.authorize.SSOListener
            public void onFailed(Throwable th) {
                if (th != null) {
                    authorizeListener.onError(th);
                } else {
                    authorizeListener.onError(new Throwable("Unknown Throwable!"));
                }
            }
        });
    }

    public void a() {
        RxMob.Subscribable create = RxMob.create(new RxMob.OnSubscribe() { // from class: cn.sharesdk.tencent.qq.utils.QQHelper$2
            @Override // com.mob.tools.RxMob.OnSubscribe
            public void call(RxMob.Subscriber subscriber) {
                String str;
                Platform platform;
                ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                str = a.this.f9028h;
                arrayList.add(new KVPair<>("access_token", str));
                arrayList.add(new KVPair<>("unionid", "1"));
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 10000;
                networkTimeOut.connectionTimeout = 10000;
                SSDKNetworkHelper sSDKNetworkHelper = SSDKNetworkHelper.getInstance();
                try {
                    a.this.f9027g = sSDKNetworkHelper.httpPost("https://graph.qq.com/oauth2.0/me", arrayList, (KVPair<String>) null, (ArrayList<KVPair<String>>) null, networkTimeOut);
                    subscriber.onCompleted();
                } catch (Throwable th) {
                    th.printStackTrace();
                    platform = ((e) a.this).f8848a;
                    platform.getDb().put("unionid", "");
                    SSDKLog.b().a("qq auth,get unionId fail", new Object[0]);
                }
            }
        });
        create.subscribeOn(RxMob.Thread.NEW_THREAD);
        create.observeOn(RxMob.Thread.IMMEDIATE);
        create.subscribe(new RxMob.Subscriber() { // from class: cn.sharesdk.tencent.qq.utils.QQHelper$3
            @Override // com.mob.tools.RxMob.Subscriber
            public void onCompleted() {
                String str;
                String str2;
                String str3;
                String str4;
                String str5;
                Platform platform;
                Platform platform2;
                str = a.this.f9027g;
                if (str != null) {
                    str2 = a.this.f9027g;
                    if (str2.length() > 0) {
                        a aVar = a.this;
                        str3 = aVar.f9027g;
                        aVar.f9027g = str3.replace("callback( ", "");
                        a aVar2 = a.this;
                        str4 = aVar2.f9027g;
                        aVar2.f9027g = str4.replace(" );", "");
                        Hashon hashon = new Hashon();
                        str5 = a.this.f9027g;
                        HashMap fromJson = hashon.fromJson(str5);
                        if (fromJson.containsKey("unionid")) {
                            platform2 = ((e) a.this).f8848a;
                            platform2.getDb().put("unionid", (String) fromJson.get("unionid"));
                            return;
                        }
                        platform = ((e) a.this).f8848a;
                        platform.getDb().put("unionid", "");
                    }
                }
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onError(Throwable th) {
                Platform platform;
                platform = ((e) a.this).f8848a;
                platform.getDb().put("unionid", "");
                SSDKLog.b().a("qq auth,get unionId fail", new Object[0]);
            }
        });
    }

    public void a(Platform platform, Platform.ShareParams shareParams, PlatformActionListener platformActionListener) throws Throwable {
        h hVar = new h();
        hVar.a(this.f9029i, "com.tencent.mobileqq.activity.JumpActivity");
        hVar.a(shareParams, platform);
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("ShareParams", shareParams);
        platformActionListener.onComplete(platform, 9, hashMap);
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, PlatformActionListener platformActionListener, boolean z3, int i2, String str7, String str8, String str9, int i4) {
        String str10 = str4;
        if (z3) {
            a(str, str2, str3, str4, str5, str6, platformActionListener);
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper addShare weiboShare ");
        } else if (!b()) {
            if (platformActionListener != null) {
                platformActionListener.onError(this.f8848a, 9, new Throwable("QQClientNotExistException"));
            }
        } else {
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper addShare isQQInstalled ");
            if (!TextUtils.isEmpty(str4)) {
                File file = new File(str10);
                if (file.exists() && str10.startsWith("/data/")) {
                    String cachePath = ResHelper.getCachePath(MobSDK.getContext(), "images");
                    String absolutePath = new File(cachePath, System.currentTimeMillis() + file.getName()).getAbsolutePath();
                    if (ResHelper.copyFile(str10, absolutePath)) {
                        SSDKLog b4 = SSDKLog.b();
                        b4.a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper imagePath " + absolutePath);
                        str10 = absolutePath;
                    } else {
                        str10 = null;
                        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, " QQ QQHelper imagePath is null");
                    }
                }
            }
            Intent intent = new Intent();
            intent.putExtra("title", str);
            intent.putExtra("titleUrl", str2);
            intent.putExtra("summary", str3);
            intent.putExtra(CommonService_.b0.f51756b, str10);
            intent.putExtra("imageUrl", str5);
            intent.putExtra("musicUrl", str6);
            intent.putExtra("appId", this.f9024d);
            intent.putExtra("hidden", i2);
            intent.putExtra("mini_program_appid", str7);
            intent.putExtra("mini_program_path", str8);
            intent.putExtra("mini_program_type", str9);
            intent.putExtra("share_type", i4);
            ShareActivity shareActivity = new ShareActivity();
            shareActivity.setPlatformActionListener(this.f8848a, platformActionListener);
            shareActivity.setAppId(this.f9024d);
            shareActivity.show(MobSDK.getContext(), intent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006c A[Catch: all -> 0x00cc, TryCatch #0 {all -> 0x00cc, blocks: (B:3:0x0002, B:5:0x0008, B:13:0x0019, B:15:0x006c, B:17:0x0072, B:18:0x007a, B:21:0x009c, B:24:0x00a4, B:26:0x00bb, B:27:0x00c6, B:19:0x008e), top: B:33:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e A[Catch: all -> 0x00cc, TryCatch #0 {all -> 0x00cc, blocks: (B:3:0x0002, B:5:0x0008, B:13:0x0019, B:15:0x006c, B:17:0x0072, B:18:0x007a, B:21:0x009c, B:24:0x00a4, B:26:0x00bb, B:27:0x00c6, B:19:0x008e), top: B:33:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, cn.sharesdk.framework.PlatformActionListener r13) {
        /*
            r6 = this;
            r7 = 9
            boolean r8 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Throwable -> Lcc
            if (r8 == 0) goto L11
            boolean r8 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Throwable -> Lcc
            if (r8 != 0) goto Lf
            goto L11
        Lf:
            r8 = 0
            goto L12
        L11:
            r8 = 1
        L12:
            if (r8 != 0) goto L17
            java.lang.String r12 = "/t/add_t"
            goto L19
        L17:
            java.lang.String r12 = "/t/add_pic_t"
        L19:
            r4 = r12
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcc
            r12.<init>()     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r0 = "https://graph.qq.com"
            r12.append(r0)     // Catch: java.lang.Throwable -> Lcc
            r12.append(r4)     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r1 = r12.toString()     // Catch: java.lang.Throwable -> Lcc
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lcc
            r2.<init>()     // Catch: java.lang.Throwable -> Lcc
            com.mob.tools.network.KVPair r12 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r0 = "oauth_consumer_key"
            java.lang.String r3 = r6.f9024d     // Catch: java.lang.Throwable -> Lcc
            r12.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lcc
            r2.add(r12)     // Catch: java.lang.Throwable -> Lcc
            com.mob.tools.network.KVPair r12 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r0 = "access_token"
            java.lang.String r3 = r6.f9028h     // Catch: java.lang.Throwable -> Lcc
            r12.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lcc
            r2.add(r12)     // Catch: java.lang.Throwable -> Lcc
            com.mob.tools.network.KVPair r12 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r0 = "openid"
            java.lang.String r3 = r6.f9026f     // Catch: java.lang.Throwable -> Lcc
            r12.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lcc
            r2.add(r12)     // Catch: java.lang.Throwable -> Lcc
            com.mob.tools.network.KVPair r12 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r0 = "format"
            java.lang.String r3 = "json"
            r12.<init>(r0, r3)     // Catch: java.lang.Throwable -> Lcc
            r2.add(r12)     // Catch: java.lang.Throwable -> Lcc
            com.mob.tools.network.KVPair r12 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r0 = "content"
            r12.<init>(r0, r9)     // Catch: java.lang.Throwable -> Lcc
            r2.add(r12)     // Catch: java.lang.Throwable -> Lcc
            if (r8 == 0) goto L8e
            boolean r8 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Throwable -> Lcc
            if (r8 == 0) goto L7a
            android.content.Context r8 = com.mob.MobSDK.getContext()     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r10 = com.mob.tools.utils.BitmapHelper.downloadBitmap(r8, r11)     // Catch: java.lang.Throwable -> Lcc
        L7a:
            com.mob.tools.network.KVPair r3 = new com.mob.tools.network.KVPair     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r8 = "pic"
            r3.<init>(r8, r10)     // Catch: java.lang.Throwable -> Lcc
            cn.sharesdk.framework.network.SSDKNetworkHelper r0 = cn.sharesdk.framework.network.SSDKNetworkHelper.getInstance()     // Catch: java.lang.Throwable -> Lcc
            int r5 = r6.c()     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r8 = r0.httpPost(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lcc
            goto L9a
        L8e:
            cn.sharesdk.framework.network.SSDKNetworkHelper r8 = cn.sharesdk.framework.network.SSDKNetworkHelper.getInstance()     // Catch: java.lang.Throwable -> Lcc
            int r9 = r6.c()     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r8 = r8.httpPost(r1, r2, r4, r9)     // Catch: java.lang.Throwable -> Lcc
        L9a:
            if (r8 == 0) goto Ld4
            int r9 = r8.length()     // Catch: java.lang.Throwable -> Lcc
            if (r9 <= 0) goto Ld4
            if (r13 == 0) goto Ld4
            com.mob.tools.utils.Hashon r9 = new com.mob.tools.utils.Hashon     // Catch: java.lang.Throwable -> Lcc
            r9.<init>()     // Catch: java.lang.Throwable -> Lcc
            java.util.HashMap r9 = r9.fromJson(r8)     // Catch: java.lang.Throwable -> Lcc
            java.lang.String r10 = "ret"
            java.lang.Object r10 = r9.get(r10)     // Catch: java.lang.Throwable -> Lcc
            java.lang.Integer r10 = (java.lang.Integer) r10     // Catch: java.lang.Throwable -> Lcc
            int r10 = r10.intValue()     // Catch: java.lang.Throwable -> Lcc
            if (r10 == 0) goto Lc6
            cn.sharesdk.framework.Platform r9 = r6.f8848a     // Catch: java.lang.Throwable -> Lcc
            java.lang.Exception r10 = new java.lang.Exception     // Catch: java.lang.Throwable -> Lcc
            r10.<init>(r8)     // Catch: java.lang.Throwable -> Lcc
            r13.onError(r9, r7, r10)     // Catch: java.lang.Throwable -> Lcc
            goto Ld4
        Lc6:
            cn.sharesdk.framework.Platform r8 = r6.f8848a     // Catch: java.lang.Throwable -> Lcc
            r13.onComplete(r8, r7, r9)     // Catch: java.lang.Throwable -> Lcc
            goto Ld4
        Lcc:
            r8 = move-exception
            if (r13 == 0) goto Ld4
            cn.sharesdk.framework.Platform r9 = r6.f8848a
            r13.onError(r9, r7, r8)
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.sharesdk.tencent.qq.utils.a.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, cn.sharesdk.framework.PlatformActionListener):void");
    }
}
