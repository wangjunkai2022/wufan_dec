package cn.sharesdk.sina.weibo;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.WebAuthorizeActivity;
import cn.sharesdk.framework.authorize.b;
import cn.sharesdk.framework.authorize.c;
import cn.sharesdk.framework.e;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.sina.weibo.utils.WebSharePage;
import com.facebook.common.util.f;
import com.mob.MobSDK;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.sina.weibo.BuildConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Weibo.java */
/* loaded from: classes2.dex */
public class a extends e {

    /* renamed from: b  reason: collision with root package name */
    private static a f8952b;

    /* renamed from: c  reason: collision with root package name */
    private String f8953c;

    /* renamed from: d  reason: collision with root package name */
    private String f8954d;

    /* renamed from: e  reason: collision with root package name */
    private String f8955e;

    /* renamed from: f  reason: collision with root package name */
    private String f8956f;

    /* renamed from: g  reason: collision with root package name */
    private String[] f8957g;

    /* renamed from: h  reason: collision with root package name */
    private SSDKNetworkHelper f8958h;

    private a(Platform platform) {
        super(platform);
        this.f8957g = new String[]{"follow_app_official_microblog"};
        this.f8958h = SSDKNetworkHelper.getInstance();
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getAuthorizeUrl() {
        return "";
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public b getAuthorizeWebviewClient(WebAuthorizeActivity webAuthorizeActivity) {
        return new cn.sharesdk.sina.weibo.utils.a(webAuthorizeActivity);
    }

    @Override // cn.sharesdk.framework.authorize.AuthorizeHelper
    public String getRedirectUri() {
        return TextUtils.isEmpty(this.f8955e) ? "https://api.weibo.com/oauth2/default.html" : this.f8955e;
    }

    @Override // cn.sharesdk.framework.e, cn.sharesdk.framework.authorize.AuthorizeHelper
    public c getSSOProcessor(SSOAuthorizeActivity sSOAuthorizeActivity) {
        cn.sharesdk.sina.weibo.utils.b bVar = new cn.sharesdk.sina.weibo.utils.b(sSOAuthorizeActivity);
        bVar.a(32973);
        bVar.a(this.f8953c, this.f8955e, this.f8957g);
        return bVar;
    }

    public String b(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("client_id", this.f8953c));
        arrayList.add(new KVPair<>("client_secret", this.f8954d));
        arrayList.add(new KVPair<>("redirect_uri", this.f8955e));
        arrayList.add(new KVPair<>("grant_type", "authorization_code"));
        arrayList.add(new KVPair<>("code", str));
        String httpPost = this.f8958h.httpPost("https://api.weibo.com/oauth2/access_token", arrayList, "/oauth2/access_token", c());
        ShareSDK.logApiEvent("/oauth2/access_token", c());
        return httpPost;
    }

    public void c(String str) {
        this.f8956f = str;
    }

    public HashMap<String, Object> d(String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f8953c));
        String str2 = this.f8956f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        boolean z3 = true;
        try {
            ResHelper.parseLong(str);
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        String httpGet = this.f8958h.httpGet("https://api.weibo.com/2/users/show.json", arrayList, "/2/users/show.json", c());
        if (httpGet != null) {
            return new Hashon().fromJson(httpGet);
        }
        return null;
    }

    public HashMap<String, Object> e(String str) throws Throwable {
        boolean z3;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f8953c));
        arrayList.add(new KVPair<>("access_token", this.f8956f));
        try {
            ResHelper.parseLong(str);
            z3 = true;
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        String httpPost = this.f8958h.httpPost("https://api.weibo.com/2/friendships/create.json", arrayList, "/2/friendships/create.json", c());
        if (httpPost != null) {
            return new Hashon().fromJson(httpPost);
        }
        return null;
    }

    public static synchronized a a(Platform platform) {
        a aVar;
        synchronized (a.class) {
            if (f8952b == null) {
                f8952b = new a(platform);
            }
            aVar = f8952b;
        }
        return aVar;
    }

    public HashMap<String, Object> c(int i2, int i4, String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f8953c));
        String str2 = this.f8956f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        boolean z3 = true;
        try {
            ResHelper.parseLong(str);
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>("count", String.valueOf(i2)));
        arrayList.add(new KVPair<>("page", String.valueOf(i4)));
        String httpGet = this.f8958h.httpGet("https://api.weibo.com/2/friendships/friends/bilateral.json", arrayList, "/2/friendships/friends/bilateral.json", c());
        if (httpGet != null) {
            return new Hashon().fromJson(httpGet);
        }
        return null;
    }

    public void a(String str, String str2) {
        this.f8953c = str;
        this.f8954d = str2;
    }

    public void a(String str) {
        this.f8955e = str;
    }

    public void a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.f8957g = strArr;
    }

    public boolean b() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setPackage(BuildConfig.APPLICATION_ID);
        intent.setType("image/*");
        ResolveInfo a4 = cn.sharesdk.framework.utils.a.a(intent, 0);
        if (a4 == null) {
            Intent intent2 = new Intent("android.intent.action.SEND");
            intent2.setPackage("com.sina.weibog3");
            intent2.setType("image/*");
            a4 = cn.sharesdk.framework.utils.a.a(intent2, 0);
        }
        return a4 != null;
    }

    private String a(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return a(objArr, str, 0, objArr.length);
    }

    public HashMap<String, Object> d(int i2, int i4, String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f8953c));
        String str2 = this.f8956f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        boolean z3 = true;
        try {
            ResHelper.parseLong(str);
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>("count", String.valueOf(i2)));
        arrayList.add(new KVPair<>("cursor", String.valueOf(i4)));
        String httpGet = this.f8958h.httpGet("https://api.weibo.com/2/friendships/followers.json", arrayList, "/2/friendships/followers.json", c());
        if (httpGet != null) {
            return new Hashon().fromJson(httpGet);
        }
        return null;
    }

    private String a(Object[] objArr, String str, int i2, int i4) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i5 = i4 - i2;
        if (i5 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i5 * 16);
        if (objArr[i2] != null) {
            sb.append(objArr[i2]);
        }
        while (true) {
            i2++;
            if (i2 < i4) {
                sb.append(str);
                if (objArr[i2] != null) {
                    sb.append(objArr[i2]);
                }
            } else {
                return sb.toString();
            }
        }
    }

    public void b(final Platform.ShareParams shareParams, final PlatformActionListener platformActionListener) {
        String str;
        if (TextUtils.isEmpty(shareParams.getUrl())) {
            str = shareParams.getText();
        } else {
            str = shareParams.getText() + " " + shareParams.getUrl();
        }
        if (!TextUtils.isEmpty(str)) {
            shareParams.setText(this.f8848a.getShortLintk(str, false));
        } else {
            int stringRes = ResHelper.getStringRes(MobSDK.getContext(), "ssdk_weibo_upload_content");
            if (stringRes > 0) {
                shareParams.setText(MobSDK.getContext().getResources().getString(stringRes));
            }
        }
        AuthorizeListener authorizeListener = new AuthorizeListener() { // from class: cn.sharesdk.sina.weibo.a.2
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                PlatformActionListener platformActionListener2 = platformActionListener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onCancel(((e) a.this).f8848a, 9);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                if (platformActionListener != null) {
                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put("ShareParams", shareParams);
                    platformActionListener.onComplete(((e) a.this).f8848a, 9, hashMap);
                }
                if (bundle != null) {
                    String string = bundle.getString("uid");
                    String string2 = bundle.getString("access_token");
                    String string3 = bundle.getString("expire_in");
                    if (!TextUtils.isEmpty(string2)) {
                        a.this.f8956f = string2;
                        ((e) a.this).f8848a.getDb().putToken(a.this.f8956f);
                    }
                    ((e) a.this).f8848a.getDb().putUserId(string);
                    try {
                        ((e) a.this).f8848a.getDb().putExpiresIn(ResHelper.parseLong(string3));
                    } catch (Throwable unused) {
                    }
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                PlatformActionListener platformActionListener2 = platformActionListener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(((e) a.this).f8848a, 9, th);
                }
            }
        };
        WebSharePage webSharePage = new WebSharePage();
        webSharePage.setAppKey(this.f8953c, this.f8956f);
        webSharePage.setShareParams(shareParams);
        webSharePage.setListener(authorizeListener);
        webSharePage.show(MobSDK.getContext(), null);
    }

    public void a(AuthorizeListener authorizeListener, boolean z3) {
        if (z3) {
            a(authorizeListener);
            return;
        }
        new SinaWeiboOfficialAuth(this.f8953c, this.f8955e, a(this.f8957g, ","), authorizeListener).show(MobSDK.getContext(), null);
        SSDKLog.b().a("SinaWeibo SDK Client doAuthorize ");
    }

    public boolean d() {
        Intent intent = new Intent();
        intent.setAction("com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER");
        String packageName = MobSDK.getContext().getPackageName();
        intent.putExtra("_weibo_sdkVersion", "0031405000");
        intent.putExtra("_weibo_appPackage", packageName);
        intent.putExtra("_weibo_appKey", this.f8953c);
        intent.putExtra("_weibo_flag", 538116905);
        intent.putExtra("_weibo_sign", cn.sharesdk.sina.weibo.sdk.a.a(MobSDK.getContext(), packageName));
        SSDKLog b4 = SSDKLog.b();
        b4.a("intent=" + intent + ", extra=" + intent.getExtras(), new Object[0]);
        MobSDK.getContext().sendBroadcast(intent, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION");
        return true;
    }

    public boolean a() {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("client_id", this.f8953c));
        arrayList.add(new KVPair<>("client_secret", this.f8954d));
        arrayList.add(new KVPair<>("redirect_uri", this.f8955e));
        arrayList.add(new KVPair<>("grant_type", "refresh_token"));
        arrayList.add(new KVPair<>("refresh_token", this.f8848a.getDb().get("refresh_token")));
        try {
            String httpPost = this.f8958h.httpPost("https://api.weibo.com/oauth2/access_token", arrayList, "/oauth2/access_token", c());
            if (TextUtils.isEmpty(httpPost) || httpPost.contains("error") || httpPost.contains("error_code")) {
                return false;
            }
            HashMap fromJson = new Hashon().fromJson(httpPost);
            String valueOf = String.valueOf(fromJson.get("uid"));
            String valueOf2 = String.valueOf(fromJson.get("expires_in"));
            this.f8956f = String.valueOf(fromJson.get("access_token"));
            String valueOf3 = String.valueOf(fromJson.get("refresh_token"));
            String valueOf4 = String.valueOf(fromJson.get("remind_in"));
            this.f8848a.getDb().putUserId(valueOf);
            this.f8848a.getDb().putExpiresIn(Long.valueOf(valueOf2).longValue());
            this.f8848a.getDb().putToken(this.f8956f);
            this.f8848a.getDb().put("refresh_token", valueOf3);
            this.f8848a.getDb().put("remind_in", valueOf4);
            return true;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return false;
        }
    }

    public HashMap<String, Object> b(int i2, int i4, String str) throws Throwable {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f8953c));
        String str2 = this.f8956f;
        if (str2 != null) {
            arrayList.add(new KVPair<>("access_token", str2));
        }
        boolean z3 = true;
        try {
            ResHelper.parseLong(str);
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>("count", String.valueOf(i2)));
        arrayList.add(new KVPair<>("cursor", String.valueOf(i4)));
        String httpGet = this.f8958h.httpGet("https://api.weibo.com/2/friendships/friends.json", arrayList, "/2/friendships/friends.json", c());
        if (httpGet != null) {
            return new Hashon().fromJson(httpGet);
        }
        return null;
    }

    private void a(AuthorizeListener authorizeListener) {
        new SinaWeiboWebAuthOfficial(this.f8953c, this.f8955e, a(this.f8957g, ","), authorizeListener).show(MobSDK.getContext(), null);
        SSDKLog.b().a("SinaWeibo SDK Web showWebAuthActivity ");
    }

    public void a(final Platform.ShareParams shareParams, final PlatformActionListener platformActionListener) {
        if (shareParams == null) {
            if (platformActionListener != null) {
                platformActionListener.onError(this.f8848a, 9, new Throwable("Please set params"));
                return;
            }
            return;
        }
        if (shareParams.getImageData() == null && TextUtils.isEmpty(shareParams.getImagePath()) && !TextUtils.isEmpty(shareParams.getImageUrl())) {
            try {
                File file = new File(BitmapHelper.downloadBitmap(MobSDK.getContext(), shareParams.getImageUrl()));
                if (file.exists()) {
                    shareParams.setImagePath(file.getAbsolutePath());
                }
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        if (shareParams.getImageArray() != null && shareParams.getImageArray().length > 0) {
            try {
                List<String> asList = Arrays.asList(shareParams.getImageArray());
                String[] strArr = new String[asList.size()];
                int i2 = 0;
                for (String str : asList) {
                    if (str.startsWith(f.f11765a)) {
                        str = BitmapHelper.downloadBitmap(MobSDK.getContext(), str);
                    }
                    File file2 = new File(str);
                    if (file2.exists() && str.startsWith("/data/")) {
                        String cachePath = ResHelper.getCachePath(MobSDK.getContext(), "images");
                        File file3 = new File(cachePath, System.currentTimeMillis() + file2.getName());
                        String absolutePath = file3.getAbsolutePath();
                        file3.createNewFile();
                        if (ResHelper.copyFile(str, absolutePath)) {
                            str = file3.getAbsolutePath();
                        }
                    }
                    strArr[i2] = str;
                    i2++;
                }
                shareParams.setImageArray(strArr);
            } catch (Throwable th2) {
                SSDKLog.b().a(th2);
            }
        }
        String text = shareParams.getText();
        if (!TextUtils.isEmpty(text)) {
            shareParams.setText(getPlatform().getShortLintk(text, false));
        }
        AuthorizeListener authorizeListener = new AuthorizeListener() { // from class: cn.sharesdk.sina.weibo.a.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                PlatformActionListener platformActionListener2 = platformActionListener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onCancel(((e) a.this).f8848a, 9);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                if (platformActionListener != null) {
                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put("ShareParams", shareParams);
                    platformActionListener.onComplete(((e) a.this).f8848a, 9, hashMap);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th3) {
                PlatformActionListener platformActionListener2 = platformActionListener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(((e) a.this).f8848a, 9, th3);
                }
            }
        };
        new SinaWeiboShareOfficial(this.f8953c, this.f8955e, a(this.f8957g, ","), shareParams, authorizeListener).show(MobSDK.getContext(), null);
    }

    public HashMap<String, Object> a(int i2, int i4, String str) throws Throwable {
        boolean z3;
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("source", this.f8953c));
        try {
            ResHelper.parseLong(str);
            z3 = true;
        } catch (Throwable unused) {
            z3 = false;
        }
        if (z3) {
            arrayList.add(new KVPair<>("uid", str));
        } else {
            arrayList.add(new KVPair<>("screen_name", str));
        }
        arrayList.add(new KVPair<>("count", String.valueOf(i2)));
        arrayList.add(new KVPair<>("page", String.valueOf(i4)));
        String httpGet = this.f8958h.httpGet("https://api.weibo.com/2/statuses/user_timeline.json", arrayList, "/2/statuses/user_timeline.json", c());
        if (httpGet != null) {
            return new Hashon().fromJson(httpGet);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
        arrayList.add(new KVPair<>("source", this.f8953c));
        String str4 = this.f8956f;
        if (str4 != null) {
            arrayList.add(new KVPair<>("access_token", str4));
        }
        if (hashMap2 == null || hashMap2.size() <= 0) {
            kVPair = null;
        } else {
            KVPair kVPair2 = null;
            for (Map.Entry<String, String> entry2 : hashMap2.entrySet()) {
                kVPair2 = new KVPair(entry2.getKey(), entry2.getValue());
            }
            kVPair = kVPair2;
        }
        try {
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
        if ("GET".equals(str2.toUpperCase())) {
            str3 = new NetworkHelper().httpGet(str, arrayList, null, null);
        } else {
            if ("POST".equals(str2.toUpperCase())) {
                str3 = new NetworkHelper().httpPost(str, arrayList, kVPair, (ArrayList<KVPair<String>>) null, (NetworkHelper.NetworkTimeOut) null);
            }
            str3 = null;
        }
        if (str3 == null || str3.length() <= 0) {
            return null;
        }
        return new Hashon().fromJson(str3);
    }
}
