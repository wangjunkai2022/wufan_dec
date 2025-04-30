package cn.sharesdk.tencent.qzone.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.e;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.framework.utils.ShareSDKFileProvider;
import cn.sharesdk.onekeyshare.OnekeyShare;
import com.facebook.common.util.f;
import com.mob.MobSDK;
import com.mob.tools.RxMob;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import io.netty.util.internal.StringUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: QZoneHelper.java */
/* loaded from: classes2.dex */
public class b extends e {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f9050b = {"get_user_info", "get_simple_userinfo", "get_user_profile", "get_app_friends", "add_share", "list_album", "upload_pic", "add_album", "set_user_face", "get_vip_info", "get_vip_rich_info", "get_intimate_friends_weibo", "match_nick_tips_weibo", "add_t", "add_pic_t"};

    /* renamed from: c  reason: collision with root package name */
    private static b f9051c;

    /* renamed from: d  reason: collision with root package name */
    private String f9052d;

    /* renamed from: e  reason: collision with root package name */
    private String f9053e;

    /* renamed from: f  reason: collision with root package name */
    private String f9054f;

    /* renamed from: g  reason: collision with root package name */
    private String f9055g;

    /* renamed from: h  reason: collision with root package name */
    private SSDKNetworkHelper f9056h;

    /* renamed from: i  reason: collision with root package name */
    private String[] f9057i;

    private b(Platform platform) {
        super(platform);
        this.f9056h = SSDKNetworkHelper.getInstance();
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getAuthorizeUrl() {
        String redirectUri;
        ShareSDK.logApiEvent("/oauth2.0/authorize", c());
        String e4 = e();
        try {
            redirectUri = Data.urlEncode(getRedirectUri(), "utf-8");
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            redirectUri = getRedirectUri();
        }
        return "https://graph.qq.com/oauth2.0/m_authorize?response_type=token&client_id=" + this.f9052d + "&redirect_uri=" + redirectUri + "&display=mobile&scope=" + e4;
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public cn.sharesdk.framework.authorize.b getAuthorizeWebviewClient(WebAuthorizeActivity webAuthorizeActivity) {
        return new a(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getRedirectUri() {
        return "auth://tauth.qq.com/";
    }

    @Override // cn.sharesdk.framework.e, cn.sharesdk.framework.authorize.AuthorizeHelper
    public cn.sharesdk.framework.authorize.c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        c cVar = new c(sSOAuthorizeActivity);
        cVar.a(5656);
        cVar.a(this.f9052d, e());
        return cVar;
    }

    private String e() {
        String[] strArr = this.f9057i;
        if (strArr == null) {
            strArr = f9050b;
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

    private String f(String str) {
        if (Build.VERSION.SDK_INT > 10) {
            try {
                Class<?> cls = ReflectHelper.getClass("android.media.MediaMetadataRetriever");
                Object newInstance = cls.newInstance();
                cls.getMethod("setDataSource", String.class).invoke(newInstance, str);
                return (String) ReflectHelper.invokeInstanceMethod(newInstance, "extractMetadata", 9);
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public void b(String str) {
        this.f9053e = str;
    }

    public void c(String str) {
        this.f9054f = str;
    }

    public HashMap<String, Object> d(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", this.f9054f));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f9052d));
        arrayList.add(new KVPair<>("openid", this.f9053e));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String httpGet = this.f9056h.httpGet("https://graph.qq.com/user/get_simple_userinfo", arrayList, arrayList2, null, "/user/get_simple_userinfo", c());
        if (httpGet == null || httpGet.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(httpGet);
    }

    public static b a(Platform platform) {
        if (f9051c == null) {
            f9051c = new b(platform);
        }
        return f9051c;
    }

    public boolean b() {
        try {
            PackageInfo b4 = cn.sharesdk.framework.utils.a.b("com.qzone", 0);
            if (b4 == null) {
                return false;
            }
            String[] split = b4.versionName.split("\\.");
            int length = split.length;
            int[] iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                try {
                    iArr[i2] = ResHelper.parseInt(split[i2]);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                    iArr[i2] = 0;
                }
            }
            return length > 1 && (iArr[0] >= 4 || iArr[1] >= 1);
        } catch (Throwable th2) {
            SSDKLog.b().a(th2);
            return false;
        }
    }

    public void a(String str) {
        this.f9052d = str;
    }

    public void a(String[] strArr) {
        this.f9057i = strArr;
    }

    public void a(final AuthorizeListener authorizeListener, boolean z3) {
        a(new SSOListener() { // from class: cn.sharesdk.tencent.qzone.utils.b.1
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

    public HashMap<String, Object> e(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", str));
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String httpGet = this.f9056h.httpGet("https://graph.qq.com/oauth2.0/me", arrayList, arrayList2, null, "/oauth2.0/me", c());
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

    public void a() {
        RxMob.Subscribable create = RxMob.create(new RxMob.OnSubscribe() { // from class: cn.sharesdk.tencent.qzone.utils.QZoneHelper$2
            @Override // com.mob.tools.RxMob.OnSubscribe
            public void call(RxMob.Subscriber subscriber) {
                String str;
                Platform platform;
                ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                str = b.this.f9054f;
                arrayList.add(new KVPair<>("access_token", str));
                arrayList.add(new KVPair<>("unionid", "1"));
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 10000;
                networkTimeOut.connectionTimeout = 10000;
                SSDKNetworkHelper sSDKNetworkHelper = SSDKNetworkHelper.getInstance();
                try {
                    b.this.f9055g = sSDKNetworkHelper.httpPost("https://graph.qq.com/oauth2.0/me", arrayList, (KVPair<String>) null, (ArrayList<KVPair<String>>) null, networkTimeOut);
                    subscriber.onCompleted();
                } catch (Throwable unused) {
                    platform = ((e) b.this).f8848a;
                    platform.getDb().put("unionid", "");
                    SSDKLog.b().a("qq auth, get unionId fail", new Object[0]);
                }
            }
        });
        create.subscribeOn(RxMob.Thread.NEW_THREAD);
        create.observeOn(RxMob.Thread.IMMEDIATE);
        create.subscribe(new RxMob.Subscriber() { // from class: cn.sharesdk.tencent.qzone.utils.QZoneHelper$3
            @Override // com.mob.tools.RxMob.Subscriber
            public void onCompleted() {
                String str;
                String str2;
                String str3;
                String str4;
                String str5;
                Platform platform;
                Platform platform2;
                str = b.this.f9055g;
                if (str != null) {
                    str2 = b.this.f9055g;
                    if (str2.length() > 0) {
                        b bVar = b.this;
                        str3 = bVar.f9055g;
                        bVar.f9055g = str3.replace("callback( ", "");
                        b bVar2 = b.this;
                        str4 = bVar2.f9055g;
                        bVar2.f9055g = str4.replace(" );", "");
                        Hashon hashon = new Hashon();
                        str5 = b.this.f9055g;
                        HashMap fromJson = hashon.fromJson(str5);
                        if (fromJson.containsKey("unionid")) {
                            platform2 = ((e) b.this).f8848a;
                            platform2.getDb().put("unionid", (String) fromJson.get("unionid"));
                            return;
                        }
                        platform = ((e) b.this).f8848a;
                        platform.getDb().put("unionid", "");
                    }
                }
            }

            @Override // com.mob.tools.RxMob.Subscriber
            public void onError(Throwable th) {
                Platform platform;
                platform = ((e) b.this).f8848a;
                platform.getDb().put("unionid", "");
                SSDKLog.b().a("qq auth, get unionId fail", new Object[0]);
            }
        });
    }

    public HashMap<String, Object> b(String str, String str2) throws Throwable {
        String httpPost;
        boolean z3 = !TextUtils.isEmpty(str);
        String str3 = z3 ? "/t/add_pic_t" : "/t/add_t";
        String str4 = "https://graph.qq.com" + str3;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f9052d));
        arrayList.add(new KVPair<>("access_token", this.f9054f));
        arrayList.add(new KVPair<>("openid", this.f9053e));
        arrayList.add(new KVPair<>(IjkMediaMeta.IJKM_KEY_FORMAT, "json"));
        arrayList.add(new KVPair<>("content", str2));
        if (z3) {
            httpPost = this.f9056h.httpPost(str4, arrayList, new KVPair<>("pic", str), str3, c());
        } else {
            httpPost = this.f9056h.httpPost(str4, arrayList, str3, c());
        }
        if (httpPost == null || httpPost.length() <= 0) {
            return null;
        }
        HashMap<String, Object> fromJson = new Hashon().fromJson(httpPost);
        if (((Integer) fromJson.get("ret")).intValue() == 0) {
            return fromJson;
        }
        throw new Throwable(httpPost);
    }

    public void a(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, PlatformActionListener platformActionListener) throws Throwable {
        String appName = TextUtils.isEmpty(str5) ? DeviceHelper.getInstance(MobSDK.getContext()).getAppName() : str5;
        if (appName.length() > 20) {
            appName = appName.substring(0, 20) + "...";
        }
        a(i2, (TextUtils.isEmpty(str) || str.length() <= 200) ? str : str.substring(0, 200), str2, str3, str4, appName, str6, platformActionListener);
    }

    public boolean d() {
        String str;
        try {
            str = MobSDK.getContext().getPackageManager().getPackageInfo("com.tencent.mobileqq", 0).versionName;
        } catch (Throwable th) {
            try {
                try {
                    str = MobSDK.getContext().getPackageManager().getPackageInfo("com.tencent.tim", 0).versionName;
                } catch (Throwable unused) {
                    str = MobSDK.getContext().getPackageManager().getPackageInfo("com.tencent.minihd.qq", 0).versionName;
                }
            } catch (Throwable unused2) {
                SSDKLog.b().a(th);
                str = null;
            }
        }
        return !TextUtils.isEmpty(str);
    }

    public void a(int i2, String str, String str2, String str3, String str4, String str5, String str6, PlatformActionListener platformActionListener) throws Throwable {
        String str7;
        if (!TextUtils.isEmpty(str6)) {
            str7 = "4";
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            str7 = "3";
        } else if (TextUtils.isEmpty(str2)) {
            if (platformActionListener != null) {
                platformActionListener.onError(null, 9, new Throwable("The param of title or titleUrl is null !"));
                return;
            }
            return;
        } else {
            str7 = "1";
        }
        a(str7, str, str2, str3, str4, str5, str6, platformActionListener);
    }

    private void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, PlatformActionListener platformActionListener) {
        String str8 = str5;
        try {
            StringBuilder sb = new StringBuilder();
            if (str != "3" && str != "4") {
                sb.append("mqqapi://share/to_qzone?src_type=app&version=1&file_type=news");
            } else {
                sb.append("mqqapi://qzone/publish?src_type=app&version=1&file_type=news");
            }
            if (!TextUtils.isEmpty(str5)) {
                if (!str8.startsWith(f.f11765a) && !str8.startsWith("https")) {
                    File file = new File(str8);
                    if (file.exists() && str8.startsWith("/data/")) {
                        String cachePath = ResHelper.getCachePath(MobSDK.getContext(), "images");
                        String absolutePath = new File(cachePath, System.currentTimeMillis() + file.getName()).getAbsolutePath();
                        if (ResHelper.copyFile(str8, absolutePath)) {
                            str8 = absolutePath;
                        }
                    }
                    File file2 = new File(str8);
                    Context context = MobSDK.getContext();
                    Uri a4 = ShareSDKFileProvider.a(context, MobSDK.getContext().getPackageName() + ".cn.sharesdk.ShareSDKFileProvider", file2);
                    MobSDK.getContext().grantUriPermission("com.tencent.mobileqq", a4, 3);
                    sb.append("&image_uri=");
                    sb.append(Base64.encodeToString(String.valueOf(a4).getBytes("utf-8"), 2));
                }
                sb.append("&image_url=");
                sb.append(Base64.encodeToString(str8.getBytes("utf-8"), 2));
            }
            String substring = (TextUtils.isEmpty(str4) || str4.length() <= 600) ? str4 : str4.substring(0, 600);
            if (!TextUtils.isEmpty(str7) && str.equals("4")) {
                ResHelper.getFileSize(str7);
                String valueOf = String.valueOf(str6);
                String f4 = f(str7);
                sb.append("&videoPath=");
                sb.append(Base64.encodeToString(str7.getBytes("utf-8"), 2));
                sb.append("&videoSize=");
                sb.append(Base64.encodeToString(valueOf.getBytes("utf-8"), 2));
                if (!TextUtils.isEmpty(f4)) {
                    sb.append("&videoDuration=");
                    sb.append(Base64.encodeToString(f4.getBytes("utf-8"), 2));
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                sb.append("&title=");
                sb.append(Base64.encodeToString(str2.getBytes("utf-8"), 2));
            }
            if (!TextUtils.isEmpty(substring)) {
                sb.append("&description=");
                sb.append(Base64.encodeToString(substring.getBytes("utf-8"), 2));
            }
            sb.append("&share_id=");
            sb.append(this.f9052d);
            if (!TextUtils.isEmpty(str3)) {
                sb.append("&url=");
                sb.append(Base64.encodeToString(str3.getBytes("utf-8"), 2));
            }
            sb.append("&app_name=");
            sb.append(Base64.encodeToString(str6.getBytes("utf-8"), 2));
            if (!TextUtils.isEmpty(substring)) {
                sb.append("&share_qq_ext_str=");
                sb.append(Base64.encodeToString(substring.getBytes(), 2));
            }
            sb.append("&req_type=");
            sb.append(Base64.encodeToString(str.getBytes("utf-8"), 2));
            String str9 = d() ? "1" : "0";
            sb.append("&cflag=");
            sb.append(Base64.encodeToString(str9.getBytes("utf-8"), 2));
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(sb.toString()));
            if (MobSDK.getContext().getPackageManager().resolveActivity(intent, 1) != null) {
                ShareActivity shareActivity = new ShareActivity();
                shareActivity.setScheme(sb.toString(), true);
                shareActivity.setSharedCallback(platformActionListener);
                shareActivity.setAppId(this.f9052d);
                shareActivity.show(MobSDK.getContext(), null);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            SSDKLog b4 = SSDKLog.b();
            b4.a(OnekeyShare.SHARESDK_TAG, " QQ ShareActivity run catch " + th);
        }
    }

    public HashMap<String, Object> a(String str, String str2) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("access_token", this.f9054f));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f9052d));
        arrayList.add(new KVPair<>("openid", this.f9053e));
        arrayList.add(new KVPair<>(IjkMediaMeta.IJKM_KEY_FORMAT, "json"));
        if (!TextUtils.isEmpty(str2)) {
            if (str2.length() > 200) {
                str2 = str2.substring(0, 199) + MobSDK.getContext().getString(ResHelper.getStringRes(MobSDK.getContext(), "ssdk_symbol_ellipsis"));
            }
            arrayList.add(new KVPair<>("photodesc", str2));
        }
        arrayList.add(new KVPair<>("mobile", "1"));
        KVPair<String> kVPair = new KVPair<>("picture", str);
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        String httpPost = this.f9056h.httpPost("https://graph.qq.com/photo/upload_pic", arrayList, kVPair, arrayList2, "/photo/upload_pic", c());
        if (httpPost == null || httpPost.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(httpPost);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00fd -> B:34:0x00fe). Please submit an issue!!! */
    public HashMap<String, Object> a(String str, String str2, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        KVPair kVPair;
        String str3;
        if (str2 == null) {
            return null;
        }
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        if (hashMap != null && hashMap.size() > 0) {
            for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                arrayList.add(new KVPair<>(entry.getKey(), String.valueOf(entry.getValue())));
            }
        }
        arrayList.add(new KVPair<>("access_token", this.f9054f));
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f9052d));
        arrayList.add(new KVPair<>("openid", this.f9053e));
        arrayList.add(new KVPair<>(IjkMediaMeta.IJKM_KEY_FORMAT, "json"));
        if (hashMap2 == null || hashMap2.size() <= 0) {
            kVPair = null;
        } else {
            KVPair kVPair2 = null;
            for (Map.Entry<String, String> entry2 : hashMap2.entrySet()) {
                kVPair2 = new KVPair(entry2.getKey(), entry2.getValue());
            }
            kVPair = kVPair2;
        }
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK"));
        try {
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        if ("GET".equals(str2.toUpperCase())) {
            str3 = new NetworkHelper().httpGet(str, arrayList, arrayList2, null);
        } else {
            if ("POST".equals(str2.toUpperCase())) {
                str3 = new NetworkHelper().httpPost(str, arrayList, kVPair, arrayList2, (NetworkHelper.NetworkTimeOut) null);
            }
            str3 = null;
        }
        if (str3 == null || str3.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(str3);
    }
}
