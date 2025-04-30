package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.network.SSDKNetworkHelper;
import cn.sharesdk.framework.utils.SSDKLog;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.mob.tools.network.KVPair;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.qq.e.comm.pi.ACTD;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: WXAuthHelper.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private String f9105a;

    /* renamed from: b  reason: collision with root package name */
    private String f9106b;

    /* renamed from: c  reason: collision with root package name */
    private SSDKNetworkHelper f9107c = SSDKNetworkHelper.getInstance();

    /* renamed from: d  reason: collision with root package name */
    private Platform f9108d;

    /* renamed from: e  reason: collision with root package name */
    private int f9109e;

    public h(Platform platform, int i2) {
        this.f9108d = platform;
        this.f9109e = i2;
    }

    public void a(String str, String str2) {
        this.f9105a = str;
        this.f9106b = str2;
    }

    public void a(Bundle bundle, AuthorizeListener authorizeListener) {
        String string = bundle.getString("_wxapi_sendauth_resp_url");
        if (TextUtils.isEmpty(string)) {
            if (authorizeListener != null) {
                authorizeListener.onError(null);
                return;
            }
            return;
        }
        int indexOf = string.indexOf("://oauth?");
        if (indexOf >= 0) {
            string = string.substring(indexOf + 1);
        }
        try {
            a(ResHelper.urlToBundle(string).getString("code"), authorizeListener);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            if (authorizeListener != null) {
                authorizeListener.onError(th);
            }
        }
    }

    private void a(final String str, final AuthorizeListener authorizeListener) throws Throwable {
        SSDKLog b4 = SSDKLog.b();
        b4.a("getAuthorizeToken ==>> " + str, new Object[0]);
        new Thread() { // from class: cn.sharesdk.wechat.utils.h.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                    arrayList.add(new KVPair<>(ACTD.APPID_KEY, h.this.f9105a));
                    arrayList.add(new KVPair<>("secret", h.this.f9106b));
                    arrayList.add(new KVPair<>("code", str));
                    arrayList.add(new KVPair<>("grant_type", "authorization_code"));
                    String httpGet = h.this.f9107c.httpGet("https://api.weixin.qq.com/sns/oauth2/access_token", arrayList, "/sns/oauth2/access_token", h.this.f9109e);
                    if (TextUtils.isEmpty(httpGet)) {
                        authorizeListener.onError(new Throwable("Authorize token is empty"));
                    } else if (!httpGet.contains("errcode")) {
                        h.this.a(httpGet);
                        authorizeListener.onComplete(null);
                    } else {
                        AuthorizeListener authorizeListener2 = authorizeListener;
                        if (authorizeListener2 != null) {
                            authorizeListener2.onError(new Throwable(httpGet));
                        }
                    }
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }
        }.start();
    }

    public boolean a() {
        String str = this.f9108d.getDb().get("refresh_token");
        if (!TextUtils.isEmpty(this.f9105a) && !TextUtils.isEmpty(str)) {
            ArrayList<KVPair<String>> arrayList = new ArrayList<>();
            arrayList.add(new KVPair<>(ACTD.APPID_KEY, this.f9105a));
            arrayList.add(new KVPair<>("refresh_token", str));
            arrayList.add(new KVPair<>("grant_type", "refresh_token"));
            try {
                String httpGet = this.f9107c.httpGet("https://api.weixin.qq.com/sns/oauth2/refresh_token", arrayList, "/sns/oauth2/refresh_token", this.f9109e);
                if (TextUtils.isEmpty(httpGet) || httpGet.contains("errcode")) {
                    return false;
                }
                a(httpGet);
                return true;
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        return false;
    }

    public void a(final PlatformActionListener platformActionListener) throws Throwable {
        new Thread() { // from class: cn.sharesdk.wechat.utils.h.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                HashMap<String, Object> hashMap;
                try {
                    ArrayList<KVPair<String>> arrayList = new ArrayList<>();
                    arrayList.add(new KVPair<>("access_token", h.this.f9108d.getDb().getToken()));
                    arrayList.add(new KVPair<>("openid", h.this.f9108d.getDb().get("openid")));
                    arrayList.add(new KVPair<>("lang", "zh_CN"));
                    String httpGet = h.this.f9107c.httpGet("https://api.weixin.qq.com/sns/userinfo", arrayList, "/sns/userinfo", h.this.f9109e);
                    if (TextUtils.isEmpty(httpGet)) {
                        PlatformActionListener platformActionListener2 = platformActionListener;
                        if (platformActionListener2 != null) {
                            platformActionListener2.onError(h.this.f9108d, 8, new Throwable());
                            return;
                        }
                        return;
                    }
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("getUserInfo ==>>" + httpGet, new Object[0]);
                    HashMap<String, Object> fromJson = new Hashon().fromJson(httpGet);
                    if (fromJson.containsKey("errcode") && ((Integer) fromJson.get("errcode")).intValue() != 0) {
                        if (platformActionListener != null) {
                            platformActionListener.onError(h.this.f9108d, 8, new Throwable(new Hashon().fromHashMap(fromJson)));
                            return;
                        }
                        return;
                    }
                    String valueOf = String.valueOf(fromJson.get("openid"));
                    String valueOf2 = String.valueOf(fromJson.get("nickname"));
                    int parseInt = ResHelper.parseInt(String.valueOf(fromJson.get("sex")));
                    String valueOf3 = String.valueOf(fromJson.get("province"));
                    String valueOf4 = String.valueOf(fromJson.get("city"));
                    String valueOf5 = String.valueOf(fromJson.get(ai.O));
                    String valueOf6 = String.valueOf(fromJson.get("headimgurl"));
                    String valueOf7 = String.valueOf(fromJson.get("unionid"));
                    h.this.f9108d.getDb().put("nickname", valueOf2);
                    if (parseInt == 1) {
                        h.this.f9108d.getDb().put("gender", "0");
                    } else if (parseInt == 2) {
                        h.this.f9108d.getDb().put("gender", "1");
                    } else {
                        h.this.f9108d.getDb().put("gender", PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    }
                    h.this.f9108d.getDb().putUserId(valueOf);
                    h.this.f9108d.getDb().put("icon", valueOf6);
                    h.this.f9108d.getDb().put("province", valueOf3);
                    h.this.f9108d.getDb().put("city", valueOf4);
                    h.this.f9108d.getDb().put(ai.O, valueOf5);
                    h.this.f9108d.getDb().put("openid", valueOf);
                    h.this.f9108d.getDb().put("unionid", valueOf7);
                    if (h.this.f9108d.getDb().get("userTags") != null) {
                        hashMap = fromJson;
                        hashMap.put("userTags", h.this.f9108d.getDb().get("userTags"));
                    } else {
                        hashMap = fromJson;
                    }
                    platformActionListener.onComplete(h.this.f9108d, 8, hashMap);
                } catch (Throwable th) {
                    SSDKLog.b().a(th);
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        SSDKLog b4 = SSDKLog.b();
        b4.a("wechat getAuthorizeToken ==>>" + str, new Object[0]);
        HashMap fromJson = new Hashon().fromJson(str);
        String valueOf = String.valueOf(fromJson.get("access_token"));
        String valueOf2 = String.valueOf(fromJson.get("refresh_token"));
        String valueOf3 = String.valueOf(fromJson.get("expires_in"));
        this.f9108d.getDb().put("openid", String.valueOf(fromJson.get("openid")));
        this.f9108d.getDb().putExpiresIn(Long.valueOf(valueOf3).longValue());
        this.f9108d.getDb().putToken(valueOf);
        this.f9108d.getDb().put("refresh_token", valueOf2);
    }
}
