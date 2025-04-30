package cn.sharesdk.sina.weibo;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import cn.sharesdk.framework.a.b.f;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import com.tencent.bugly.Bugly;
import com.xinzhu.overmind.client.hook.proxies.context.providers.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class SinaWeibo extends Platform {
    public static final String NAME = "SinaWeibo";
    public static volatile boolean initFlag;

    /* renamed from: a  reason: collision with root package name */
    private String f8941a;

    /* renamed from: b  reason: collision with root package name */
    private String f8942b;

    /* renamed from: c  reason: collision with root package name */
    private String f8943c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8944d;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public boolean checkAuthorize(int i2, Object obj) {
        a a4 = a.a(this);
        a4.c(this.db.getToken());
        a4.a(this.f8941a, this.f8942b);
        a4.a(this.f8943c);
        a4.d();
        if (i2 == 9 || isAuthValid() || c()) {
            return true;
        }
        innerAuthorize(i2, obj);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doAuthorize(String[] strArr) {
        final a a4 = a.a(this);
        a4.a(this.f8941a, this.f8942b);
        a4.a(this.f8943c);
        a4.a(strArr);
        a4.a(new AuthorizeListener() { // from class: cn.sharesdk.sina.weibo.SinaWeibo.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) SinaWeibo.this).listener != null) {
                    ((Platform) SinaWeibo.this).listener.onCancel(SinaWeibo.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                long j4;
                String string = bundle.getString("uid");
                String string2 = bundle.getString("access_token");
                String string3 = bundle.getString("expires_in");
                String string4 = bundle.getString("refresh_token");
                if (bundle.containsKey("username")) {
                    ((Platform) SinaWeibo.this).db.put("nickname", bundle.getString("userName"));
                }
                ((Platform) SinaWeibo.this).db.putToken(string2);
                try {
                    j4 = ResHelper.parseLong(string3);
                } catch (Throwable unused) {
                    j4 = 0;
                }
                ((Platform) SinaWeibo.this).db.putExpiresIn(j4);
                ((Platform) SinaWeibo.this).db.put("refresh_token", string4);
                ((Platform) SinaWeibo.this).db.putUserId(string);
                a4.c(string2);
                SinaWeibo.this.afterRegister(1, null);
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) SinaWeibo.this).listener != null) {
                    ((Platform) SinaWeibo.this).listener.onError(SinaWeibo.this, 1, th);
                }
            }
        }, isSSODisable());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doCustomerProtocol(String str, String str2, int i2, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        try {
            HashMap<String, Object> a4 = a.a(this).a(str, str2, hashMap, hashMap2);
            if (a4 != null && a4.size() > 0) {
                if (a4.containsKey("error_code") && ((Integer) a4.get("error_code")).intValue() != 0) {
                    if (this.listener != null) {
                        this.listener.onError(this, i2, new Throwable(new Hashon().fromHashMap(a4)));
                        return;
                    }
                    return;
                }
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onComplete(this, i2, a4);
                    return;
                }
                return;
            }
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, i2, new Throwable());
            }
        } catch (Throwable th) {
            this.listener.onError(this, i2, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doShare(Platform.ShareParams shareParams) {
        SSDKLog b4 = SSDKLog.b();
        b4.a("Weibo start Share with Appkey:" + this.f8941a + ",appSecret:" + this.f8942b + ",redirectUrl:" + this.f8943c, new Object[0]);
        SSDKLog b5 = SSDKLog.b();
        StringBuilder sb = new StringBuilder();
        sb.append("Weibo ShareParams:");
        sb.append(shareParams.toString());
        b5.a(sb.toString(), new Object[0]);
        a a4 = a.a(this);
        a4.a(this.f8941a, this.f8942b);
        if (this.f8944d && a4.b()) {
            try {
                a4.a(shareParams, this.listener);
                return;
            } catch (Throwable th) {
                this.listener.onError(this, 9, th);
                return;
            }
        }
        try {
            a4.b(shareParams, this.listener);
        } catch (Throwable th2) {
            this.listener.onError(this, 9, th2);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i2, HashMap<String, Object> hashMap) {
        Object obj;
        StringBuilder sb;
        StringBuilder sb2;
        HashMap<String, Object> hashMap2 = new HashMap<>();
        if (i2 == 2) {
            hashMap2.put("type", "FOLLOWING");
        } else if (i2 == 10) {
            hashMap2.put("type", "FRIENDS");
        } else if (i2 != 11) {
            return null;
        } else {
            hashMap2.put("type", "FOLLOWERS");
        }
        hashMap2.put("snsplat", Integer.valueOf(getPlatformId()));
        hashMap2.put("snsuid", this.db.getUserId());
        int parseInt = Integer.parseInt(String.valueOf(hashMap.get("current_cursor")));
        int parseInt2 = Integer.parseInt(String.valueOf(hashMap.get("total_number")));
        if (parseInt2 == 0 || (obj = hashMap.get("users")) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) obj;
        if (arrayList2.size() <= 0) {
            return null;
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            HashMap hashMap3 = (HashMap) it2.next();
            if (hashMap3 != null) {
                HashMap hashMap4 = new HashMap();
                hashMap4.put("snsuid", String.valueOf(hashMap3.get("id")));
                hashMap4.put("nickname", String.valueOf(hashMap3.get("screen_name")));
                hashMap4.put("icon", String.valueOf(hashMap3.get("avatar_hd")));
                if (String.valueOf(hashMap3.get("verified")).equals("true")) {
                    hashMap4.put("secretType", "1");
                } else {
                    hashMap4.put("secretType", "0");
                }
                hashMap4.put("secret", String.valueOf(hashMap3.get("verified_reason")));
                String valueOf = String.valueOf(hashMap3.get("gender"));
                if (valueOf.equals("m")) {
                    hashMap4.put("gender", "0");
                } else if (valueOf.equals("f")) {
                    hashMap4.put("gender", "1");
                } else {
                    hashMap4.put("gender", PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                }
                hashMap4.put("snsUserUrl", "http://weibo.com/" + String.valueOf(hashMap3.get("profile_url")));
                hashMap4.put("resume", String.valueOf(hashMap3.get(b.f64184n)));
                hashMap4.put("followerCount", String.valueOf(hashMap3.get("followers_count")));
                hashMap4.put("favouriteCount", String.valueOf(hashMap3.get("friends_count")));
                hashMap4.put("shareCount", String.valueOf(hashMap3.get("statuses_count")));
                hashMap4.put("snsregat", String.valueOf(ResHelper.dateToLong(String.valueOf(hashMap3.get("created_at")))));
                arrayList.add(hashMap4);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        if (10 == i2) {
            int i4 = parseInt + 1;
            if (((Integer) hashMap.get("page_count")).intValue() * i4 >= parseInt2) {
                sb2 = new StringBuilder();
                sb2.append(parseInt);
                sb2.append("_true");
            } else {
                sb2 = new StringBuilder();
                sb2.append(i4);
                sb2.append("_false");
            }
            hashMap2.put("nextCursor", sb2.toString());
        } else {
            int size = parseInt + arrayList.size();
            if (size >= parseInt2) {
                sb = new StringBuilder();
                sb.append(parseInt2);
                sb.append("_true");
            } else {
                sb = new StringBuilder();
                sb.append(size);
                sb.append("_false");
            }
            hashMap2.put("nextCursor", sb.toString());
        }
        hashMap2.put("list", arrayList);
        return hashMap2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public f.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> hashMap) {
        f.a aVar = new f.a();
        aVar.f8775b = shareParams.getText();
        if (hashMap != null) {
            aVar.f8774a = String.valueOf(hashMap.get("id"));
            aVar.f8777d.add(String.valueOf(hashMap.get("original_pic")));
            aVar.f8780g = hashMap;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void follow(String str) {
        try {
            HashMap<String, Object> e4 = a.a(this).e(str);
            if (e4 == null) {
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 6, new Throwable());
                }
            } else if (e4.containsKey("error_code") && ((Integer) e4.get("error_code")).intValue() != 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 6, new Throwable(new Hashon().fromHashMap(e4)));
                }
            } else {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onComplete(this, 6, e4);
                }
            }
        } catch (Throwable th) {
            this.listener.onError(this, 6, th);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getBilaterals(int i2, int i4, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HashMap<String, Object> c4 = a.a(this).c(i2, i4, str);
            if (c4 == null || c4.containsKey("error_code")) {
                return null;
            }
            c4.put("page_count", Integer.valueOf(i2));
            c4.put("current_cursor", Integer.valueOf(i4));
            return filterFriendshipInfo(10, c4);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowers(int i2, int i4, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HashMap<String, Object> d4 = a.a(this).d(i2, i4, str);
            if (d4 == null || d4.containsKey("error_code")) {
                return null;
            }
            d4.put("current_cursor", Integer.valueOf(i4));
            return filterFriendshipInfo(11, d4);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowings(int i2, int i4, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            HashMap<String, Object> b4 = a.a(this).b(i2, i4, str);
            if (b4 == null || b4.containsKey("error_code")) {
                return null;
            }
            b4.put("current_cursor", Integer.valueOf(i4));
            return filterFriendshipInfo(2, b4);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void getFriendList(int i2, int i4, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 2, new RuntimeException("Both weibo id and screen_name are null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> b4 = a.a(this).b(i2, i4, str);
            if (b4 == null) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 2, new Throwable());
                }
            } else if (b4.containsKey("error_code") && ((Integer) b4.get("error_code")).intValue() != 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 2, new Throwable(new Hashon().fromHashMap(b4)));
                }
            } else {
                PlatformActionListener platformActionListener3 = this.listener;
                if (platformActionListener3 != null) {
                    platformActionListener3.onComplete(this, 2, b4);
                }
            }
        } catch (Throwable th) {
            this.listener.onError(this, 2, th);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public String getName() {
        return NAME;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public int getPlatformId() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void initDevInfo(String str) {
        this.f8941a = getDevinfo("AppKey");
        this.f8942b = getDevinfo("AppSecret");
        this.f8943c = getDevinfo("RedirectUrl");
        this.f8944d = !Bugly.SDK_IS_DEV.equals(getDevinfo("ShareByAppClient"));
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean isClientValid() {
        return a.a(this).b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void setNetworkDevinfo() {
        this.f8941a = getNetworkDevinfo(com.alipay.sdk.cons.b.f9723h, "AppKey");
        this.f8942b = getNetworkDevinfo("app_secret", "AppSecret");
        this.f8943c = getNetworkDevinfo("redirect_uri", "RedirectUrl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void timeline(int i2, int i4, String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.db.getUserId();
        }
        if (TextUtils.isEmpty(str)) {
            str = this.db.get("nickname");
        }
        if (TextUtils.isEmpty(str)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 7, new RuntimeException("Both weibo id and screen_name are null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> a4 = a.a(this).a(i2, i4, str);
            if (a4 == null) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 7, new Throwable());
                }
            } else if (a4.containsKey("error_code") && ((Integer) a4.get("error_code")).intValue() != 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 7, new Throwable(new Hashon().fromHashMap(a4)));
                }
            } else {
                PlatformActionListener platformActionListener3 = this.listener;
                if (platformActionListener3 != null) {
                    platformActionListener3.onComplete(this, 7, a4);
                }
            }
        } catch (Throwable th) {
            this.listener.onError(this, 7, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void userInfor(String str) {
        boolean z3;
        boolean z4 = true;
        if (TextUtils.isEmpty(str)) {
            str = this.db.getUserId();
            z3 = true;
        } else {
            z3 = false;
        }
        if (TextUtils.isEmpty(str)) {
            str = this.db.get("nickname");
        } else {
            z4 = z3;
        }
        if (TextUtils.isEmpty(str)) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, 8, new RuntimeException("Both weibo id and screen_name are null"));
                return;
            }
            return;
        }
        try {
            HashMap<String, Object> d4 = a.a(this).d(str);
            if (d4 == null) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 8, new Throwable());
                }
            } else if (d4.containsKey("error_code") && ((Integer) d4.get("error_code")).intValue() != 0) {
                if (this.listener != null) {
                    this.listener.onError(this, 8, new Throwable(new Hashon().fromHashMap(d4)));
                }
            } else {
                if (z4) {
                    this.db.putUserId(String.valueOf(d4.get("id")));
                    this.db.put("nickname", String.valueOf(d4.get("screen_name")));
                    this.db.put("icon", String.valueOf(d4.get("avatar_hd")));
                    if (String.valueOf(d4.get("verified")).equals("true")) {
                        this.db.put("secretType", "1");
                    } else {
                        this.db.put("secretType", "0");
                    }
                    this.db.put("secret", String.valueOf(d4.get("verified_reason")));
                    String valueOf = String.valueOf(d4.get("gender"));
                    if (valueOf.equals("m")) {
                        this.db.put("gender", "0");
                    } else if (valueOf.equals("f")) {
                        this.db.put("gender", "1");
                    } else {
                        this.db.put("gender", PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                    }
                    PlatformDb platformDb = this.db;
                    platformDb.put("snsUserUrl", "http://weibo.com/" + String.valueOf(d4.get("profile_url")));
                    this.db.put("resume", String.valueOf(d4.get(b.f64184n)));
                    this.db.put("followerCount", String.valueOf(d4.get("followers_count")));
                    this.db.put("favouriteCount", String.valueOf(d4.get("friends_count")));
                    this.db.put("shareCount", String.valueOf(d4.get("statuses_count")));
                    this.db.put("snsregat", String.valueOf(ResHelper.dateToLong(String.valueOf(d4.get("created_at")))));
                }
                PlatformActionListener platformActionListener3 = this.listener;
                if (platformActionListener3 != null) {
                    platformActionListener3.onComplete(this, 8, d4);
                }
            }
        } catch (Throwable th) {
            this.listener.onError(this, 8, th);
        }
    }

    private boolean c() {
        if (TextUtils.isEmpty(getDb().get("refresh_token"))) {
            return false;
        }
        a a4 = a.a(this);
        a4.a(this.f8941a, this.f8942b);
        a4.a(this.f8943c);
        return a4.a();
    }
}
