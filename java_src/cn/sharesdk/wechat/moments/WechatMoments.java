package cn.sharesdk.wechat.moments;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.a.b.f;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import cn.sharesdk.wechat.utils.WechatTimelineNotSupportedException;
import cn.sharesdk.wechat.utils.h;
import cn.sharesdk.wechat.utils.k;
import cn.sharesdk.wechat.utils.l;
import com.alipay.sdk.packet.d;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class WechatMoments extends Platform {
    public static final String NAME = "WechatMoments";

    /* renamed from: a  reason: collision with root package name */
    private String f9074a;

    /* renamed from: b  reason: collision with root package name */
    private String f9075b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9076c;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public boolean checkAuthorize(int i2, Object obj) {
        l a4 = l.a();
        a4.c(this.f9074a);
        if (!a4.c()) {
            PlatformActionListener platformActionListener = this.listener;
            if (platformActionListener != null) {
                platformActionListener.onError(this, i2, new WechatClientNotExistException());
            }
            return false;
        } else if (!a4.d()) {
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onError(this, 1, new WechatTimelineNotSupportedException());
            }
            return false;
        } else if (i2 == 9 || isAuthValid() || c()) {
            return true;
        } else {
            innerAuthorize(i2, obj);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doAuthorize(String[] strArr) {
        if (!TextUtils.isEmpty(this.f9074a) && !TextUtils.isEmpty(this.f9075b)) {
            l a4 = l.a();
            a4.c(this.f9074a);
            if (!a4.c()) {
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 1, new WechatClientNotExistException());
                    return;
                }
                return;
            } else if (!a4.d()) {
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 1, new WechatTimelineNotSupportedException());
                    return;
                }
                return;
            } else {
                h hVar = new h(this, 23);
                hVar.a(this.f9074a, this.f9075b);
                k kVar = new k(this);
                kVar.a(hVar);
                kVar.a(new AuthorizeListener() { // from class: cn.sharesdk.wechat.moments.WechatMoments.1
                    @Override // cn.sharesdk.framework.authorize.AuthorizeListener
                    public void onCancel() {
                        if (((Platform) WechatMoments.this).listener != null) {
                            ((Platform) WechatMoments.this).listener.onCancel(WechatMoments.this, 1);
                        }
                    }

                    @Override // cn.sharesdk.framework.authorize.AuthorizeListener
                    public void onComplete(Bundle bundle) {
                        WechatMoments.this.afterRegister(1, null);
                    }

                    @Override // cn.sharesdk.framework.authorize.AuthorizeListener
                    public void onError(Throwable th) {
                        if (((Platform) WechatMoments.this).listener != null) {
                            ((Platform) WechatMoments.this).listener.onError(WechatMoments.this, 1, th);
                        }
                    }
                });
                try {
                    a4.a(kVar);
                    return;
                } catch (Throwable th) {
                    if (this.listener != null) {
                        this.listener.onError(this, 1, th);
                        return;
                    }
                    return;
                }
            }
        }
        PlatformActionListener platformActionListener3 = this.listener;
        if (platformActionListener3 != null) {
            platformActionListener3.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doCustomerProtocol(String str, String str2, int i2, HashMap<String, Object> hashMap, HashMap<String, String> hashMap2) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doShare(Platform.ShareParams shareParams) {
        SSDKLog b4 = SSDKLog.b();
        b4.a("WechatMoments start Share with Appid:" + this.f9074a + "appSecret:" + this.f9075b, new Object[0]);
        SSDKLog b5 = SSDKLog.b();
        StringBuilder sb = new StringBuilder();
        sb.append("WechatMoments ShareParams:");
        sb.append(shareParams.toString());
        b5.a(sb.toString(), new Object[0]);
        shareParams.set("scene", 1);
        l a4 = l.a();
        a4.c(this.f9074a);
        k kVar = new k(this);
        if (this.f9076c) {
            try {
                a4.a(kVar, shareParams, this.listener);
                return;
            } catch (Throwable th) {
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 9, th);
                    return;
                }
                return;
            }
        }
        kVar.a(shareParams, this.listener);
        try {
            a4.c(kVar);
            if (this.listener == null || !a4.b()) {
                return;
            }
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("ShareParams", shareParams);
            PlatformActionListener platformActionListener2 = this.listener;
            if (platformActionListener2 != null) {
                platformActionListener2.onComplete(this, 9, hashMap);
            }
        } catch (Throwable th2) {
            PlatformActionListener platformActionListener3 = this.listener;
            if (platformActionListener3 != null) {
                platformActionListener3.onError(this, 9, th2);
            }
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i2, HashMap<String, Object> hashMap) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public f.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> hashMap) {
        f.a aVar = new f.a();
        String text = shareParams.getText();
        aVar.f8775b = text;
        String imageUrl = shareParams.getImageUrl();
        String imagePath = shareParams.getImagePath();
        Bitmap imageData = shareParams.getImageData();
        if (!TextUtils.isEmpty(imageUrl)) {
            aVar.f8777d.add(imageUrl);
        } else if (imagePath != null) {
            aVar.f8778e.add(imagePath);
        } else if (imageData != null) {
            aVar.f8779f.add(imageData);
        }
        String url = shareParams.getUrl();
        if (url != null) {
            aVar.f8776c.add(url);
        }
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put("title", shareParams.getTitle());
        hashMap2.put("url", url);
        hashMap2.put("extInfo", null);
        hashMap2.put("content", text);
        hashMap2.put("image", aVar.f8777d);
        hashMap2.put("musicFileUrl", url);
        aVar.f8780g = hashMap2;
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void follow(String str) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, 6);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getBilaterals(int i2, int i4, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowers(int i2, int i4, String str) {
        return null;
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> getFollowings(int i2, int i4, String str) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void getFriendList(int i2, int i4, String str) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, 2);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public String getName() {
        return NAME;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getPlatformId() {
        return 23;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 1;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return !this.f9076c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void initDevInfo(String str) {
        this.f9074a = getDevinfo(d.f9787h);
        this.f9075b = getDevinfo("AppSecret");
        this.f9076c = "true".equals(getDevinfo("BypassApproval"));
        String str2 = this.f9074a;
        if (str2 == null || str2.length() <= 0) {
            this.f9074a = getDevinfo(Wechat.NAME, d.f9787h);
            this.f9076c = "true".equals(getDevinfo(Wechat.NAME, "BypassApproval"));
            String str3 = this.f9074a;
            if (str3 != null && str3.length() > 0) {
                copyDevinfo(Wechat.NAME, NAME);
                this.f9074a = getDevinfo(d.f9787h);
                this.f9076c = "true".equals(getDevinfo("BypassApproval"));
                SSDKLog.b().a("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
                return;
            }
            String devinfo = getDevinfo("WechatFavorite", d.f9787h);
            this.f9074a = devinfo;
            if (devinfo == null || devinfo.length() <= 0) {
                return;
            }
            copyDevinfo("WechatFavorite", NAME);
            this.f9074a = getDevinfo(d.f9787h);
            SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean isClientValid() {
        l a4 = l.a();
        a4.c(this.f9074a);
        return a4.c() && a4.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void setNetworkDevinfo() {
        this.f9074a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f9787h);
        this.f9075b = getNetworkDevinfo("app_secret", "AppSecret");
        String str = this.f9074a;
        if (str == null || str.length() <= 0) {
            String networkDevinfo = getNetworkDevinfo(22, PluginConstants.KEY_APP_ID, d.f9787h);
            this.f9074a = networkDevinfo;
            if (networkDevinfo != null && networkDevinfo.length() > 0) {
                copyNetworkDevinfo(22, 23);
                this.f9074a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f9787h);
                SSDKLog.b().a("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
            } else {
                String networkDevinfo2 = getNetworkDevinfo(37, PluginConstants.KEY_APP_ID, d.f9787h);
                this.f9074a = networkDevinfo2;
                if (networkDevinfo2 != null && networkDevinfo2.length() > 0) {
                    copyNetworkDevinfo(23, 23);
                    this.f9074a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f9787h);
                    SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
                }
            }
        }
        String str2 = this.f9075b;
        if (str2 == null || str2.length() <= 0) {
            String networkDevinfo3 = getNetworkDevinfo(22, "app_secret", "AppSecret");
            this.f9075b = networkDevinfo3;
            if (networkDevinfo3 != null && networkDevinfo3.length() > 0) {
                copyNetworkDevinfo(22, 23);
                this.f9075b = getNetworkDevinfo("app_secret", "AppSecret");
                SSDKLog.b().a("Try to use the dev info of Wechat, this will cause Id and SortId field are always 0.", new Object[0]);
                return;
            }
            String networkDevinfo4 = getNetworkDevinfo(37, "app_secret", "AppSecret");
            this.f9075b = networkDevinfo4;
            if (networkDevinfo4 == null || networkDevinfo4.length() <= 0) {
                return;
            }
            copyNetworkDevinfo(23, 23);
            this.f9075b = getNetworkDevinfo("app_secret", "AppSecret");
            SSDKLog.b().a("Try to use the dev info of WechatFavorite, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void timeline(int i2, int i4, String str) {
        PlatformActionListener platformActionListener = this.listener;
        if (platformActionListener != null) {
            platformActionListener.onCancel(this, 7);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void userInfor(String str) {
        if (!TextUtils.isEmpty(this.f9074a) && !TextUtils.isEmpty(this.f9075b)) {
            h hVar = new h(this, 23);
            hVar.a(this.f9074a, this.f9075b);
            try {
                hVar.a(this.listener);
                return;
            } catch (Throwable th) {
                SSDKLog.b().a(th);
                PlatformActionListener platformActionListener = this.listener;
                if (platformActionListener != null) {
                    platformActionListener.onError(this, 8, th);
                    return;
                }
                return;
            }
        }
        PlatformActionListener platformActionListener2 = this.listener;
        if (platformActionListener2 != null) {
            platformActionListener2.onError(this, 8, new Throwable("The params of appID or appSecret is missing !"));
        }
    }

    private boolean c() {
        if (TextUtils.isEmpty(getDb().get("refresh_token"))) {
            return false;
        }
        h hVar = new h(this, 23);
        hVar.a(this.f9074a, this.f9075b);
        return hVar.a();
    }
}
