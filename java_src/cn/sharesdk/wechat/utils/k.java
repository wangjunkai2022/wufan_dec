package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.utils.Hashon;
import java.util.HashMap;
/* compiled from: WechatHandler.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private Platform f9121a;

    /* renamed from: b  reason: collision with root package name */
    private Platform.ShareParams f9122b;

    /* renamed from: c  reason: collision with root package name */
    private PlatformActionListener f9123c;

    /* renamed from: d  reason: collision with root package name */
    private AuthorizeListener f9124d;

    /* renamed from: e  reason: collision with root package name */
    private h f9125e;

    public k(Platform platform) {
        this.f9121a = platform;
    }

    public void a(AuthorizeListener authorizeListener) {
        this.f9124d = authorizeListener;
    }

    public Platform b() {
        return this.f9121a;
    }

    public PlatformActionListener c() {
        return this.f9123c;
    }

    public void a(Platform.ShareParams shareParams, PlatformActionListener platformActionListener) {
        this.f9122b = shareParams;
        this.f9123c = platformActionListener;
    }

    public void a(h hVar) {
        this.f9125e = hVar;
    }

    public void a(WechatResp wechatResp) {
        AuthorizeListener authorizeListener;
        PlatformActionListener platformActionListener;
        PlatformActionListener platformActionListener2;
        int i2 = wechatResp.f9082g;
        if (i2 == -4) {
            HashMap hashMap = new HashMap();
            hashMap.put("errCode", Integer.valueOf(wechatResp.f9082g));
            hashMap.put("errStr", wechatResp.f9083h);
            hashMap.put("transaction", wechatResp.f9084i);
            Throwable th = new Throwable(new Hashon().fromHashMap(hashMap));
            if (wechatResp.a() == 1 && (authorizeListener = this.f9124d) != null) {
                authorizeListener.onError(th);
            }
        } else if (i2 == -3) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("errCode", Integer.valueOf(wechatResp.f9082g));
            hashMap2.put("errStr", wechatResp.f9083h);
            hashMap2.put("transaction", wechatResp.f9084i);
            Throwable th2 = new Throwable(new Hashon().fromHashMap(hashMap2));
            int a4 = wechatResp.a();
            if (a4 != 1) {
                if (a4 == 2 && (platformActionListener = this.f9123c) != null) {
                    platformActionListener.onError(this.f9121a, 9, th2);
                    return;
                }
                return;
            }
            AuthorizeListener authorizeListener2 = this.f9124d;
            if (authorizeListener2 != null) {
                authorizeListener2.onError(th2);
            }
        } else if (i2 == -2) {
            int a5 = wechatResp.a();
            if (a5 != 1) {
                if (a5 == 2 && (platformActionListener2 = this.f9123c) != null) {
                    platformActionListener2.onCancel(this.f9121a, 9);
                    return;
                }
                return;
            }
            AuthorizeListener authorizeListener3 = this.f9124d;
            if (authorizeListener3 != null) {
                authorizeListener3.onCancel();
            }
        } else if (i2 != 0) {
            HashMap hashMap3 = new HashMap();
            hashMap3.put("req", wechatResp.getClass().getSimpleName());
            hashMap3.put("errCode", Integer.valueOf(wechatResp.f9082g));
            hashMap3.put("errStr", wechatResp.f9083h);
            hashMap3.put("transaction", wechatResp.f9084i);
            Throwable th3 = new Throwable(new Hashon().fromHashMap(hashMap3));
            PlatformActionListener platformActionListener3 = this.f9123c;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this.f9121a, 9, th3);
            }
            AuthorizeListener authorizeListener4 = this.f9124d;
            if (authorizeListener4 != null) {
                authorizeListener4.onError(th3);
            }
        } else {
            int a6 = wechatResp.a();
            if (a6 != 1) {
                if (a6 == 2 && this.f9123c != null) {
                    HashMap<String, Object> hashMap4 = new HashMap<>();
                    hashMap4.put("ShareParams", this.f9122b);
                    this.f9123c.onComplete(this.f9121a, 9, hashMap4);
                }
            } else if (this.f9124d != null) {
                Bundle bundle = new Bundle();
                wechatResp.b(bundle);
                this.f9125e.a(bundle, this.f9124d);
            }
        }
    }

    public Platform.ShareParams a() {
        return this.f9122b;
    }
}
