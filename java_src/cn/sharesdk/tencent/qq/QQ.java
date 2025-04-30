package cn.sharesdk.tencent.qq;

import android.os.Bundle;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.a.b.f;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import cn.sharesdk.framework.utils.SSDKLog;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.tencent.qzone.QZone;
import com.alipay.sdk.packet.d;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.join.mgps.activity.SimulatorExitPlayActivity_;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.mob.MobSDK;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class QQ extends Platform {
    public static final String NAME = "QQ";

    /* renamed from: a  reason: collision with root package name */
    private String f8994a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8995b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8996c;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public boolean checkAuthorize(int i2, Object obj) {
        cn.sharesdk.tencent.qq.utils.a a4 = cn.sharesdk.tencent.qq.utils.a.a(this);
        if (a4.b() && this.f8996c && i2 == 9) {
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ checkAuthorize qq.isQQInstalled() return true ");
            return true;
        } else if (!isAuthValid() && (i2 != 9 || obj == null || !(obj instanceof Platform.ShareParams) || ((Platform.ShareParams) obj).isShareTencentWeibo())) {
            innerAuthorize(i2, obj);
            return false;
        } else {
            a4.a(this.f8994a);
            a4.b(this.db.getUserId());
            a4.d(this.db.getToken());
            SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ checkAuthorize isAuthValid return true ");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void doAuthorize(String[] strArr) {
        SSDKLog.b().a(OnekeyShare.SHARESDK_TAG, "QQ doAuthorize ");
        SSDKLog b4 = SSDKLog.b();
        b4.a("QQ start Authorize with Appid:" + this.f8994a, new Object[0]);
        final cn.sharesdk.tencent.qq.utils.a a4 = cn.sharesdk.tencent.qq.utils.a.a(this);
        a4.a(this.f8994a);
        a4.a(strArr);
        a4.a(new AuthorizeListener() { // from class: cn.sharesdk.tencent.qq.QQ.1
            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onCancel() {
                if (((Platform) QQ.this).listener != null) {
                    ((Platform) QQ.this).listener.onCancel(QQ.this, 1);
                }
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onComplete(Bundle bundle) {
                String string = bundle.getString("open_id");
                String string2 = bundle.getString("access_token");
                String string3 = bundle.getString("expires_in");
                ((Platform) QQ.this).db.putToken(string2);
                ((Platform) QQ.this).db.putTokenSecret("");
                try {
                    ((Platform) QQ.this).db.putExpiresIn(ResHelper.parseLong(string3));
                } catch (Throwable th) {
                    SSDKLog.b().b(th);
                }
                ((Platform) QQ.this).db.putUserId(string);
                String string4 = bundle.getString("pf");
                String string5 = bundle.getString("pfkey");
                String string6 = bundle.getString("pay_token");
                ((Platform) QQ.this).db.put("pf", string4);
                ((Platform) QQ.this).db.put("pfkey", string5);
                ((Platform) QQ.this).db.put("pay_token", string6);
                a4.b(string);
                a4.d(string2);
                a4.a();
                QQ.this.afterRegister(1, null);
            }

            @Override // cn.sharesdk.framework.authorize.AuthorizeListener
            public void onError(Throwable th) {
                if (((Platform) QQ.this).listener != null) {
                    ((Platform) QQ.this).listener.onError(QQ.this, 1, th);
                }
            }
        }, isSSODisable());
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
    /* JADX WARN: Removed duplicated region for block: B:48:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02b8  */
    @Override // cn.sharesdk.framework.Platform
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doShare(cn.sharesdk.framework.Platform.ShareParams r24) {
        /*
            Method dump skipped, instructions count: 727
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.sharesdk.tencent.qq.QQ.doShare(cn.sharesdk.framework.Platform$ShareParams):void");
    }

    @Override // cn.sharesdk.framework.Platform
    protected HashMap<String, Object> filterFriendshipInfo(int i2, HashMap<String, Object> hashMap) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public f.a filterShareContent(Platform.ShareParams shareParams, HashMap<String, Object> hashMap) {
        f.a aVar = new f.a();
        String titleUrl = shareParams.getTitleUrl();
        aVar.f8776c.add(titleUrl);
        aVar.f8774a = this.f8994a;
        String text = shareParams.getText();
        if (!TextUtils.isEmpty(text)) {
            aVar.f8775b = text;
        }
        String imageUrl = shareParams.getImageUrl();
        String imagePath = shareParams.getImagePath();
        if (!TextUtils.isEmpty(imagePath)) {
            aVar.f8778e.add(imagePath);
        } else if (!TextUtils.isEmpty(imageUrl)) {
            aVar.f8777d.add(imageUrl);
        }
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put("title", shareParams.getTitle());
        hashMap2.put("url", titleUrl);
        hashMap2.put("imageLocalUrl", imagePath);
        hashMap2.put("summary", text);
        hashMap2.put("appName", DeviceHelper.getInstance(MobSDK.getContext()).getAppName());
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
        return 24;
    }

    @Override // cn.sharesdk.framework.Platform
    public int getVersion() {
        return 2;
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean hasShareCallback() {
        return this.f8995b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void initDevInfo(String str) {
        this.f8994a = getDevinfo(d.f9787h);
        this.f8996c = "true".equals(getDevinfo("BypassApproval"));
        String str2 = this.f8994a;
        if (str2 == null || str2.length() <= 0) {
            String devinfo = getDevinfo(QZone.NAME, d.f9787h);
            this.f8994a = devinfo;
            if (devinfo == null || devinfo.length() <= 0) {
                return;
            }
            copyDevinfo(QZone.NAME, NAME);
            this.f8994a = getDevinfo(d.f9787h);
            SSDKLog.b().a("Try to use the dev info of QZone, this will cause Id and SortId field are always 0.", new Object[0]);
        }
    }

    @Override // cn.sharesdk.framework.Platform
    public boolean isClientValid() {
        cn.sharesdk.tencent.qq.utils.a a4 = cn.sharesdk.tencent.qq.utils.a.a(this);
        a4.a(this.f8994a);
        return a4.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void setNetworkDevinfo() {
        String networkDevinfo = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f9787h);
        this.f8994a = networkDevinfo;
        if (networkDevinfo == null || networkDevinfo.length() <= 0) {
            String networkDevinfo2 = getNetworkDevinfo(6, PluginConstants.KEY_APP_ID, d.f9787h);
            this.f8994a = networkDevinfo2;
            if (networkDevinfo2 == null || networkDevinfo2.length() <= 0) {
                return;
            }
            copyNetworkDevinfo(6, 24);
            this.f8994a = getNetworkDevinfo(PluginConstants.KEY_APP_ID, d.f9787h);
            SSDKLog.b().a("Try to use the dev info of QZone, this will cause Id and SortId field are always 0.", new Object[0]);
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
    public String uploadImageToFileServer(String str) {
        return super.uploadImageToFileServer(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.sharesdk.framework.Platform
    public void userInfor(String str) {
        if (str == null || str.length() < 0) {
            str = this.db.getUserId();
        }
        if (str != null && str.length() >= 0) {
            try {
                HashMap<String, Object> e4 = cn.sharesdk.tencent.qq.utils.a.a(this).e(str);
                if (e4 != null && e4.size() > 0) {
                    if (!e4.containsKey("ret")) {
                        PlatformActionListener platformActionListener = this.listener;
                        if (platformActionListener != null) {
                            platformActionListener.onError(this, 8, new Throwable());
                            return;
                        }
                        return;
                    } else if (((Integer) e4.get("ret")).intValue() != 0) {
                        if (this.listener != null) {
                            this.listener.onError(this, 8, new Throwable(new Hashon().fromHashMap(e4)));
                            return;
                        }
                        return;
                    } else {
                        if (str == this.db.getUserId()) {
                            this.db.put("nickname", String.valueOf(e4.get("nickname")));
                            if (e4.containsKey("figureurl_qq_2")) {
                                this.db.put("icon", String.valueOf(e4.get("figureurl_qq_2")));
                            } else if (e4.containsKey("figureurl_qq_1")) {
                                this.db.put("icon", String.valueOf(e4.get("figureurl_qq_1")));
                            }
                            if (e4.containsKey("figureurl_2")) {
                                this.db.put("iconQzone", String.valueOf(e4.get("figureurl_2")));
                            } else if (e4.containsKey("figureurl_1")) {
                                this.db.put("iconQzone", String.valueOf(e4.get("figureurl_1")));
                            } else if (e4.containsKey("figureurl")) {
                                this.db.put("iconQzone", String.valueOf(e4.get("figureurl")));
                            }
                            this.db.put("secretType", String.valueOf(e4.get("is_yellow_vip")));
                            if (String.valueOf(e4.get("is_yellow_vip")).equals("1")) {
                                this.db.put("snsUserLevel", String.valueOf(e4.get(SimulatorExitPlayActivity_.E)));
                            }
                            String valueOf = String.valueOf(e4.get("gender"));
                            int stringRes = ResHelper.getStringRes(MobSDK.getContext(), "ssdk_gender_male");
                            int stringRes2 = ResHelper.getStringRes(MobSDK.getContext(), "ssdk_gender_female");
                            if (valueOf.equals(MobSDK.getContext().getString(stringRes))) {
                                this.db.put("gender", "0");
                            } else if (valueOf.equals(MobSDK.getContext().getString(stringRes2))) {
                                this.db.put("gender", "1");
                            } else {
                                this.db.put("gender", PayCenterOrderRequest.PAY_TYPE_RECHARGE);
                            }
                        }
                        if (this.listener != null) {
                            if (this.db.get("userTags") != null) {
                                e4.put("userTags", this.db.get("userTags"));
                            }
                            this.listener.onComplete(this, 8, e4);
                            return;
                        }
                        return;
                    }
                }
                PlatformActionListener platformActionListener2 = this.listener;
                if (platformActionListener2 != null) {
                    platformActionListener2.onError(this, 8, new Throwable());
                    return;
                }
                return;
            } catch (Throwable th) {
                PlatformActionListener platformActionListener3 = this.listener;
                if (platformActionListener3 != null) {
                    platformActionListener3.onError(this, 8, th);
                    return;
                }
                return;
            }
        }
        PlatformActionListener platformActionListener4 = this.listener;
        if (platformActionListener4 != null) {
            platformActionListener4.onError(this, 8, new RuntimeException("qq account is null"));
        }
    }
}
