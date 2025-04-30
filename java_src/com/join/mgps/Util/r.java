package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.onekeyshare.ShareContentCustomizeCallback;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.tencent.qq.utils.QQClientNotExistException;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.moments.WechatMoments;
import cn.sharesdk.wechat.utils.WechatClientNotExistException;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.dto.ShareBeanMain;
import com.join.mgps.dto.SharePostRequest;
import com.join.mgps.service.CommonService_;
import com.tencent.bugly.Bugly;
import java.io.File;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
/* compiled from: CommonUtil.java */
/* loaded from: classes3.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static String f27775a = "CommonUtil";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonUtil.java */
    /* loaded from: classes3.dex */
    public class a implements ShareContentCustomizeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27776a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27777b;

        a(Context context, String str) {
            this.f27776a = context;
            this.f27777b = str;
        }

        @Override // cn.sharesdk.onekeyshare.ShareContentCustomizeCallback
        public void onShare(Platform platform, Platform.ShareParams shareParams) {
            int i2;
            String str = SinaWeibo.NAME;
            if (str.equals(platform.getName())) {
                shareParams.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
                shareParams.setText("海量免费经典游戏，深度手机定制优化，超爽联机体验！\n http://tuis.5fun.com/?aid=Nif7jk");
            }
            String str2 = QZone.NAME;
            if (str2.equals(platform.getName())) {
                shareParams.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
                shareParams.setImageUrl(com.join.mgps.rpc.g.L + "/upload/images/wf_ico.png");
            }
            String str3 = Wechat.NAME;
            if (str3.equals(platform.getName())) {
                shareParams.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
            }
            String str4 = WechatMoments.NAME;
            if (str4.equals(platform.getName())) {
                shareParams.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
            }
            String str5 = QQ.NAME;
            if (str5.equals(platform.getName())) {
                shareParams.setTitleUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
            }
            if (platform.getName().equals(str3)) {
                i2 = 1;
            } else if (platform.getName().equals(str4)) {
                i2 = 2;
            } else if (platform.getName().equals(str5)) {
                i2 = 3;
            } else if (platform.getName().equals(str2)) {
                i2 = 4;
            } else {
                i2 = platform.getName().equals(str) ? 5 : -1;
            }
            com.papa.sim.statistic.p.l(this.f27776a).O1(this.f27777b, 1, i2, "0", "0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonUtil.java */
    /* loaded from: classes3.dex */
    public class b implements ShareContentCustomizeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareBean f27778a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27779b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27780c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27781d;

        b(ShareBean shareBean, Context context, String str, int i2) {
            this.f27778a = shareBean;
            this.f27779b = context;
            this.f27780c = str;
            this.f27781d = i2;
        }

        @Override // cn.sharesdk.onekeyshare.ShareContentCustomizeCallback
        public void onShare(Platform platform, Platform.ShareParams shareParams) {
            int i2;
            String str;
            String str2;
            String str3;
            String str4 = SinaWeibo.NAME;
            if (str4.equals(platform.getName())) {
                String weiboShareUrl = this.f27778a.getWeiboShareUrl();
                if (d2.i(weiboShareUrl)) {
                    if (weiboShareUrl.contains("?")) {
                        str3 = weiboShareUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str3 = weiboShareUrl + "?t=" + System.currentTimeMillis();
                    }
                    shareParams.setTitleUrl(str3);
                }
                shareParams.setText(this.f27778a.getText() + "\n" + this.f27778a.getWeiboShareUrl());
            }
            String str5 = QZone.NAME;
            if (str5.equals(platform.getName())) {
                String str6 = this.f27778a.getqZoneShareUrl();
                if (d2.i(str6)) {
                    if (str6.contains("?")) {
                        str2 = str6 + "&t=" + System.currentTimeMillis();
                    } else {
                        str2 = str6 + "?t=" + System.currentTimeMillis();
                    }
                    shareParams.setTitleUrl(str2);
                }
                String imageUrl = this.f27778a.getImageUrl();
                if (d2.i(imageUrl)) {
                    shareParams.setImageUrl(imageUrl);
                }
            }
            String str7 = QQ.NAME;
            if (str7.equals(platform.getName())) {
                String qqUrl = this.f27778a.getQqUrl();
                if (d2.i(qqUrl)) {
                    if (qqUrl.contains("?")) {
                        str = qqUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str = qqUrl + "?t=" + System.currentTimeMillis();
                    }
                    shareParams.setTitleUrl(str);
                }
            }
            if (platform.getName().equals(Wechat.NAME)) {
                i2 = 1;
            } else if (platform.getName().equals(WechatMoments.NAME)) {
                i2 = 2;
            } else if (platform.getName().equals(str7)) {
                i2 = 3;
            } else if (platform.getName().equals(str5)) {
                i2 = 4;
            } else {
                i2 = platform.getName().equals(str4) ? 5 : -1;
            }
            com.papa.sim.statistic.p.l(this.f27779b).O1(this.f27780c, this.f27781d, i2, this.f27778a.getGameId(), this.f27778a.getArticleId());
        }
    }

    /* compiled from: CommonUtil.java */
    /* loaded from: classes3.dex */
    class c implements ShareContentCustomizeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareBean f27782a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27783b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27784c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27785d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ShareContentCustomizeCallback f27786e;

        c(ShareBean shareBean, Context context, String str, int i2, ShareContentCustomizeCallback shareContentCustomizeCallback) {
            this.f27782a = shareBean;
            this.f27783b = context;
            this.f27784c = str;
            this.f27785d = i2;
            this.f27786e = shareContentCustomizeCallback;
        }

        @Override // cn.sharesdk.onekeyshare.ShareContentCustomizeCallback
        public void onShare(Platform platform, Platform.ShareParams shareParams) {
            int i2;
            String str;
            String str2;
            String str3;
            String str4 = SinaWeibo.NAME;
            if (str4.equals(platform.getName())) {
                String weiboShareUrl = this.f27782a.getWeiboShareUrl();
                if (d2.i(weiboShareUrl)) {
                    if (weiboShareUrl.contains("?")) {
                        str3 = weiboShareUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str3 = weiboShareUrl + "?t=" + System.currentTimeMillis();
                    }
                    shareParams.setTitleUrl(str3);
                }
                shareParams.setText(this.f27782a.getText() + "\n" + this.f27782a.getWeiboShareUrl());
            }
            String str5 = QZone.NAME;
            if (str5.equals(platform.getName())) {
                String str6 = this.f27782a.getqZoneShareUrl();
                if (d2.i(str6)) {
                    if (str6.contains("?")) {
                        str2 = str6 + "&t=" + System.currentTimeMillis();
                    } else {
                        str2 = str6 + "?t=" + System.currentTimeMillis();
                    }
                    shareParams.setTitleUrl(str2);
                }
                String imageUrl = this.f27782a.getImageUrl();
                if (d2.i(imageUrl)) {
                    shareParams.setImageUrl(imageUrl);
                }
            }
            String str7 = QQ.NAME;
            if (str7.equals(platform.getName())) {
                String qqUrl = this.f27782a.getQqUrl();
                if (d2.i(qqUrl)) {
                    if (qqUrl.contains("?")) {
                        str = qqUrl + "&t=" + System.currentTimeMillis();
                    } else {
                        str = qqUrl + "?t=" + System.currentTimeMillis();
                    }
                    shareParams.setTitleUrl(str);
                }
            }
            if (platform.getName().equals(Wechat.NAME)) {
                i2 = 1;
            } else if (platform.getName().equals(WechatMoments.NAME)) {
                i2 = 2;
            } else if (platform.getName().equals(str7)) {
                i2 = 3;
            } else if (platform.getName().equals(str5)) {
                i2 = 4;
            } else {
                i2 = platform.getName().equals(str4) ? 5 : -1;
            }
            com.papa.sim.statistic.p.l(this.f27783b).O1(this.f27784c, this.f27785d, i2, this.f27782a.getGameId(), this.f27782a.getArticleId());
            ShareContentCustomizeCallback shareContentCustomizeCallback = this.f27786e;
            if (shareContentCustomizeCallback != null) {
                shareContentCustomizeCallback.onShare(platform, shareParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonUtil.java */
    /* loaded from: classes3.dex */
    public class d implements PlatformActionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27787a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f27788b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27789c;

        d(Context context, int i2, String str) {
            this.f27787a = context;
            this.f27788b = i2;
            this.f27789c = str;
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onCancel(Platform platform, int i2) {
            r.e(this.f27787a, platform, this.f27788b, 1, this.f27789c, "");
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
            r.e(this.f27787a, platform, this.f27788b, 2, this.f27789c, "");
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onError(Platform platform, int i2, Throwable th) {
            if (th != null) {
                if (!(th instanceof QQClientNotExistException) && (TextUtils.isEmpty(th.getMessage()) || !th.getMessage().equals("QQClientNotExistException"))) {
                    if (th instanceof WechatClientNotExistException) {
                        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.q("目前您的微信版本过低或未安装微信，需要安装微信才能使用"));
                    }
                } else {
                    org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.q("目前您的QQ版本过低或未安装QQ，需要安装QQ才能使用"));
                }
            }
            r.e(this.f27787a, platform, this.f27788b, 3, this.f27789c, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonUtil.java */
    /* loaded from: classes3.dex */
    public class e implements PlatformActionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27790a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f27791b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27792c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27793d;

        e(Context context, int i2, String str, String str2) {
            this.f27790a = context;
            this.f27791b = i2;
            this.f27792c = str;
            this.f27793d = str2;
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onCancel(Platform platform, int i2) {
            r.e(this.f27790a, platform, this.f27791b, 1, this.f27792c, this.f27793d);
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onComplete(Platform platform, int i2, HashMap<String, Object> hashMap) {
            r.e(this.f27790a, platform, this.f27791b, 2, this.f27792c, this.f27793d);
        }

        @Override // cn.sharesdk.framework.PlatformActionListener
        public void onError(Platform platform, int i2, Throwable th) {
            if (th != null) {
                if (!(th instanceof QQClientNotExistException) && (TextUtils.isEmpty(th.getMessage()) || !th.getMessage().equals("QQClientNotExistException"))) {
                    if (th instanceof WechatClientNotExistException) {
                        org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.q("目前您的微信版本过低或未安装微信，需要安装微信才能使用"));
                    }
                } else {
                    org.greenrobot.eventbus.c.f().o(new com.join.mgps.event.q("目前您的QQ版本过低或未安装QQ，需要安装QQ才能使用"));
                }
            }
            r.e(this.f27790a, platform, this.f27791b, 3, this.f27792c, this.f27793d);
        }
    }

    private static void A(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText("分享");
        shareParams.setImageUrl(str);
        Platform platform = ShareSDK.getPlatform(SinaWeibo.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void B(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText(str);
        Platform platform = ShareSDK.getPlatform(SinaWeibo.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void C(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImageUrl(str);
        Platform platform = ShareSDK.getPlatform(QZone.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return "";
        }
    }

    public static String c(Context context, String str) {
        List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(8192);
        BigDecimal bigDecimal = null;
        for (int i2 = 0; i2 < installedApplications.size(); i2++) {
            ApplicationInfo applicationInfo = installedApplications.get(i2);
            if (applicationInfo.packageName.equals(str)) {
                double intValue = Integer.valueOf((int) new File(applicationInfo.publicSourceDir).length()).intValue();
                Double.isNaN(intValue);
                bigDecimal = new BigDecimal(intValue / 1048576.0d).setScale(2, 1);
            }
        }
        return bigDecimal + "";
    }

    public static String d(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return context.getString(R.string.version_name) + str;
        } catch (Exception e4) {
            e4.printStackTrace();
            return context.getString(R.string.can_not_find_version_name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context, Platform platform, int i2, int i4, String str, String str2) {
        int i5;
        String str3;
        String uid = AccountUtil_.getInstance_(context).getUid();
        if (platform.getName().equals(Wechat.NAME)) {
            i5 = 1;
            str3 = "weixin";
        } else if (platform.getName().equals(WechatMoments.NAME)) {
            i5 = 2;
            str3 = "quan";
        } else if (platform.getName().equals(QQ.NAME)) {
            i5 = 3;
            str3 = "qq";
        } else if (platform.getName().equals(QZone.NAME)) {
            i5 = 4;
            str3 = "qzone";
        } else if (platform.getName().equals(SinaWeibo.NAME)) {
            i5 = 5;
            str3 = "weibo";
        } else {
            i5 = -1;
            str3 = "";
        }
        com.papa.sim.statistic.p.l(context).P1(uid, i2, i5, i4);
        SharePostRequest sharePostRequest = new SharePostRequest();
        sharePostRequest.setUid(uid);
        sharePostRequest.setStatus(i4);
        sharePostRequest.setShare_url(str);
        sharePostRequest.setRes_id(str2);
        sharePostRequest.setRes_type(i2);
        sharePostRequest.setShare_channel(str3);
        ((CommonService_.u1) CommonService_.d2(context).extra("sharePostData", sharePostRequest)).a();
    }

    public static void f(Context context, Platform platform, int i2, String str) {
        if (platform == null) {
            return;
        }
        try {
            platform.setPlatformActionListener(new d(context, i2, str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void g(Context context, OnekeyShare onekeyShare, int i2, String str, String str2) {
        if (onekeyShare == null) {
            return;
        }
        try {
            onekeyShare.setCallback(new e(context, i2, str, str2));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void h(int i2, TextView textView) {
        if (i2 < 5) {
            textView.setBackgroundResource(R.drawable.level_bg_tiffany);
        } else if (i2 < 10) {
            textView.setBackgroundResource(R.drawable.level_bg_yellow);
        } else {
            textView.setBackgroundResource(R.drawable.level_bg_orange);
        }
    }

    public static void i(Context context) {
        String uid = AccountUtil_.getInstance_(context).getUid();
        OnekeyShare onekeyShare = new OnekeyShare();
        onekeyShare.disableSSOWhenAuthorize();
        onekeyShare.setTitle("太好啦，终于找到这个神器了");
        onekeyShare.setText("海量免费经典游戏，深度手机定制优化，超爽联机体验！");
        onekeyShare.setImageUrl(com.join.mgps.rpc.g.L + "/upload/images/wf_ico.png");
        onekeyShare.setUrl("http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis());
        onekeyShare.setComment("海量免费经典游戏，深度手机定制优化，超爽联机体验！");
        onekeyShare.setSite(context.getString(R.string.app_name));
        onekeyShare.setShareContentCustomizeCallback(new a(context, uid));
        g(context, onekeyShare, 1, "http://tuis.5fun.com/?aid=Nif7jk&t=" + System.currentTimeMillis(), "0");
        onekeyShare.show(context);
        com.papa.sim.statistic.p.l(context).W1(uid, 1);
    }

    public static void j(Context context, String str, int i2) {
        if (i2 == 0) {
            v(context, str, i2);
        } else if (i2 == 1) {
            w(context, str, i2);
        } else if (i2 == 2) {
            l(context, str, i2);
        } else if (i2 != 3) {
        } else {
            o(context, str, i2);
        }
    }

    private static void k(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImageUrl(str);
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    public static void l(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setImagePath(str);
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void m(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText(str);
        Platform platform = ShareSDK.getPlatform(QQ.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void n(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setText(str);
        shareParams.setTitle(str);
        Platform platform = ShareSDK.getPlatform(QZone.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    public static void o(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setImagePath(str);
        Platform platform = ShareSDK.getPlatform(QZone.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    public static void p(Context context, int i2, ShareBean shareBean) {
        String uid = AccountUtil_.getInstance_(context).getUid();
        int from = shareBean != null ? shareBean.getFrom() : 0;
        int i4 = -1;
        if (i2 == 0) {
            i4 = 1;
        } else if (i2 == 1) {
            i4 = 2;
        } else if (i2 == 2) {
            i4 = 3;
        } else if (i2 == 3) {
            i4 = 4;
        } else if (i2 == 4) {
            i4 = 5;
        }
        com.papa.sim.statistic.p.l(context).W1(uid, from);
        if (i2 == 0) {
            HashMap hashMap = new HashMap();
            hashMap.put("Id", "4");
            hashMap.put("SortId", "1");
            hashMap.put(com.alipay.sdk.packet.d.f9787h, "wxf04635c4c318fe2d");
            hashMap.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
            hashMap.put("BypassApproval", Bugly.SDK_IS_DEV);
            hashMap.put("Enable", "true");
            String str = Wechat.NAME;
            ShareSDK.setPlatformDevInfo(str, hashMap);
            Platform.ShareParams shareParams = new Platform.ShareParams();
            shareParams.setShareType(4);
            shareParams.setTitle(shareBean.getTitle());
            shareParams.setText(shareBean.getText());
            shareParams.setImageUrl(shareBean.getImageUrl());
            shareParams.setUrl(shareBean.getWechatShareUrl());
            Platform platform = ShareSDK.getPlatform(str);
            f(context, platform, from, shareBean.getWechatShareUrl());
            platform.share(shareParams);
            com.papa.sim.statistic.p.l(context).O1(uid, from, i4, shareBean.getGameId(), shareBean.getArticleId());
            return;
        }
        if (i2 == 0) {
            Platform.ShareParams shareParams2 = new Platform.ShareParams();
            shareParams2.setShareType(4);
            shareParams2.setTitle(shareBean.getTitle());
            shareParams2.setText(shareBean.getText());
            shareParams2.setImageUrl(shareBean.getImageUrl());
            shareParams2.setUrl(shareBean.getWechatShareUrl());
            Platform platform2 = ShareSDK.getPlatform(Wechat.NAME);
            f(context, platform2, from, shareBean.getWechatShareUrl());
            platform2.share(shareParams2);
        } else if (i2 == 1) {
            Platform.ShareParams shareParams3 = new Platform.ShareParams();
            shareParams3.setShareType(4);
            shareParams3.setTitle(shareBean.getTitle());
            shareParams3.setText(shareBean.getText());
            shareParams3.setImageUrl(shareBean.getImageUrl());
            shareParams3.setUrl(shareBean.getWechatFriendUrl());
            Platform platform3 = ShareSDK.getPlatform(WechatMoments.NAME);
            f(context, platform3, from, shareBean.getWechatFriendUrl());
            platform3.share(shareParams3);
        } else if (i2 == 2) {
            Platform.ShareParams shareParams4 = new Platform.ShareParams();
            shareParams4.setTitle(shareBean.getTitle());
            shareParams4.setTitleUrl(shareBean.getQqUrl());
            shareParams4.setText(shareBean.getText());
            shareParams4.setImageUrl(shareBean.getImageUrl());
            shareParams4.setSite(com.join.android.app.mgsim.wufun.b.f17915i);
            Platform platform4 = ShareSDK.getPlatform(QQ.NAME);
            f(context, platform4, from, shareBean.getQqUrl());
            platform4.share(shareParams4);
        } else if (i2 == 3) {
            Platform.ShareParams shareParams5 = new Platform.ShareParams();
            shareParams5.setTitle(shareBean.getTitle());
            shareParams5.setTitleUrl(shareBean.getqZoneShareUrl());
            shareParams5.setText(shareBean.getText());
            shareParams5.setImageUrl(shareBean.getImageUrl());
            shareParams5.setSite(com.join.android.app.mgsim.wufun.b.f17915i);
            Platform platform5 = ShareSDK.getPlatform(QZone.NAME);
            f(context, platform5, from, shareBean.getqZoneShareUrl());
            platform5.share(shareParams5);
        } else if (i2 == 4) {
            Platform.ShareParams shareParams6 = new Platform.ShareParams();
            shareParams6.setText(shareBean.getText() + shareBean.getWeiboShareUrl());
            shareParams6.setImageUrl(shareBean.getImageUrl());
            Platform platform6 = ShareSDK.getPlatform(SinaWeibo.NAME);
            f(context, platform6, from, shareBean.getWeiboShareUrl());
            platform6.share(shareParams6);
        }
        com.papa.sim.statistic.p.l(context).O1(uid, from, i4, shareBean.getGameId(), shareBean.getArticleId());
    }

    public static void q(Context context, int i2, String str, int i4, int i5) {
        String uid = AccountUtil_.getInstance_(context).getUid();
        int i6 = i2 == 0 ? 1 : i2 == 1 ? 2 : i2 == 2 ? 3 : i2 == 3 ? 4 : i2 == 4 ? 5 : -1;
        if (i4 == 0) {
            try {
                ShareBean shareBean = (ShareBean) JsonMapper.getInstance().fromJson(str, ShareBean.class);
                shareBean.setFrom(i5);
                p(context, i2, shareBean);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (i4 == 1) {
            com.papa.sim.statistic.p.l(context).W1(uid, i5);
            if (i2 == 0) {
                z(context, str, i5);
            } else if (i2 == 1) {
                y(context, str, i5);
            } else if (i2 == 2) {
                m(context, str, i5);
            } else if (i2 == 3) {
                n(context, str, i5);
            } else if (i2 == 4) {
                B(context, str, i5);
            }
            com.papa.sim.statistic.p.l(context).O1(uid, i5, i6, "0", "0");
        } else if (i4 != 2) {
        } else {
            com.papa.sim.statistic.p.l(context).W1(uid, i5);
            if (i2 == 0) {
                u(context, str, i5);
            } else if (i2 == 1) {
                x(context, str, i5);
            } else if (i2 == 2) {
                k(context, str, i5);
            } else if (i2 == 3) {
                C(context, str, i5);
            } else if (i2 == 4) {
                A(context, str, i5);
            }
            com.papa.sim.statistic.p.l(context).O1(uid, i5, i6, "0", "0");
        }
    }

    public static void r(Context context, ShareBean shareBean) {
        try {
            String uid = AccountUtil_.getInstance_(context).getUid();
            int from = shareBean.getFrom();
            OnekeyShare onekeyShare = new OnekeyShare();
            onekeyShare.setTitle(shareBean.getTitle());
            onekeyShare.setText(shareBean.getText());
            onekeyShare.disableSSOWhenAuthorize();
            String imageUrl = shareBean.getImageUrl();
            if (d2.i(imageUrl)) {
                onekeyShare.setImageUrl(imageUrl);
            }
            String wechatShareUrl = shareBean.getWechatShareUrl();
            if (d2.i(wechatShareUrl)) {
                if (wechatShareUrl.contains("?")) {
                    wechatShareUrl = wechatShareUrl + "&t=" + System.currentTimeMillis();
                } else {
                    wechatShareUrl = wechatShareUrl + "?t=" + System.currentTimeMillis();
                }
                onekeyShare.setUrl(wechatShareUrl);
            }
            onekeyShare.setComment(shareBean.getText());
            onekeyShare.setSite(context.getString(R.string.app_name));
            onekeyShare.setShareContentCustomizeCallback(new b(shareBean, context, uid, from));
            g(context, onekeyShare, from, wechatShareUrl, shareBean.getGameId());
            onekeyShare.show(context);
            com.papa.sim.statistic.p.l(context).W1(uid, from);
        } catch (Exception e4) {
            e4.printStackTrace();
            i2.a(context).b("分享失败。");
        }
    }

    public static void s(Context context, String str, int i2) {
        try {
            ShareBean share = ((ShareBeanMain) JsonMapper.getInstance().fromJson(str, ShareBeanMain.class)).getShare();
            if (share != null) {
                share.setFrom(i2);
                share.toString();
            }
            r(context, share);
        } catch (Exception e4) {
            e4.printStackTrace();
            i2.a(context).b("分享失败。");
        }
    }

    public static void t(Context context, ShareBean shareBean, ShareContentCustomizeCallback shareContentCustomizeCallback) {
        try {
            String uid = AccountUtil_.getInstance_(context).getUid();
            int from = shareBean.getFrom();
            OnekeyShare onekeyShare = new OnekeyShare();
            onekeyShare.disableSSOWhenAuthorize();
            onekeyShare.setTitle(shareBean.getTitle());
            onekeyShare.setText(shareBean.getText());
            String imageUrl = shareBean.getImageUrl();
            if (d2.i(imageUrl)) {
                onekeyShare.setImageUrl(imageUrl);
            }
            String wechatShareUrl = shareBean.getWechatShareUrl();
            if (d2.i(wechatShareUrl)) {
                if (wechatShareUrl.contains("?")) {
                    wechatShareUrl = wechatShareUrl + "&t=" + System.currentTimeMillis();
                } else {
                    wechatShareUrl = wechatShareUrl + "?t=" + System.currentTimeMillis();
                }
                onekeyShare.setUrl(wechatShareUrl);
            }
            onekeyShare.setComment(shareBean.getText());
            onekeyShare.setSite(context.getString(R.string.app_name));
            onekeyShare.setShareContentCustomizeCallback(new c(shareBean, context, uid, from, shareContentCustomizeCallback));
            g(context, onekeyShare, from, wechatShareUrl, shareBean.getGameId());
            onekeyShare.show(context);
            com.papa.sim.statistic.p.l(context).W1(uid, from);
        } catch (Exception e4) {
            e4.printStackTrace();
            i2.a(context).b("分享失败。");
        }
    }

    private static void u(Context context, String str, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put("Id", "4");
        hashMap.put("SortId", "1");
        hashMap.put(com.alipay.sdk.packet.d.f9787h, "wxf04635c4c318fe2d");
        hashMap.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        hashMap.put("BypassApproval", Bugly.SDK_IS_DEV);
        hashMap.put("Enable", "true");
        String str2 = Wechat.NAME;
        ShareSDK.setPlatformDevInfo(str2, hashMap);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageUrl(str);
        Platform platform = ShareSDK.getPlatform(str2);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    public static void v(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setImagePath(str);
        Platform platform = ShareSDK.getPlatform(Wechat.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    public static void w(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImagePath(str);
        shareParams.setShareType(2);
        Platform platform = ShareSDK.getPlatform(WechatMoments.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void x(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageUrl(str);
        Platform platform = ShareSDK.getPlatform(WechatMoments.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void y(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(1);
        shareParams.setTitle("分享");
        shareParams.setText(str);
        Platform platform = ShareSDK.getPlatform(WechatMoments.NAME);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }

    private static void z(Context context, String str, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put("Id", "4");
        hashMap.put("SortId", "1");
        hashMap.put(com.alipay.sdk.packet.d.f9787h, "wxf04635c4c318fe2d");
        hashMap.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        hashMap.put("BypassApproval", Bugly.SDK_IS_DEV);
        hashMap.put("Enable", "true");
        String str2 = Wechat.NAME;
        ShareSDK.setPlatformDevInfo(str2, hashMap);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(1);
        shareParams.setTitle("分享");
        shareParams.setText(str);
        Platform platform = ShareSDK.getPlatform(str2);
        f(context, platform, i2, str);
        platform.share(shareParams);
    }
}
