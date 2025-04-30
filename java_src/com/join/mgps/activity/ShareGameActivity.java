package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat;
import cn.sharesdk.wechat.moments.WechatMoments;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.GameShareData;
import com.join.mgps.dto.RequestGameShareTag;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareGameTodayData;
import com.join.mgps.dto.TipBean;
import com.tencent.bugly.Bugly;
import com.umeng.analytics.MobclickAgent;
import com.zhy.view.flowlayout.FlowLayout;
import com.zhy.view.flowlayout.TagFlowLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.activity_share_game)
/* loaded from: classes3.dex */
public class ShareGameActivity extends AppCompatActivity {
    @ViewById
    TextView A;
    @ViewById
    TextView B;
    @ViewById
    TextView C;
    @ViewById
    TextView D;
    @ViewById
    TagFlowLayout E;
    @ViewById
    ImageView F;
    @ViewById
    ImageView G;
    @ViewById
    ImageView H;
    @ViewById
    EditText I;
    @ViewById
    ImageView J;
    @Extra
    DownloadTask K;
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f35252a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    SimpleDraweeView f35253b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    TextView f35254c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f35255d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f35256e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f35257f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    SimpleDraweeView f35258g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    SimpleDraweeView f35259h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f35260i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f35261j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f35262k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    LinearLayout f35263l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f35264m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    LinearLayout f35265n;

    /* renamed from: n0  reason: collision with root package name */
    LayoutInflater f35266n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    LinearLayout f35267o;

    /* renamed from: o0  reason: collision with root package name */
    Context f35268o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    MStarBar f35269p;

    /* renamed from: p0  reason: collision with root package name */
    com.join.mgps.rpc.d f35270p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    MStarBar f35271q;

    /* renamed from: q0  reason: collision with root package name */
    ShareGameTodayData f35272q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    MStarBar f35273r;

    /* renamed from: r0  reason: collision with root package name */
    AccountBean f35274r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    MStarBar f35275s;

    /* renamed from: s0  reason: collision with root package name */
    String f35276s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    SimpleDraweeView f35277t;

    /* renamed from: t0  reason: collision with root package name */
    boolean f35278t0 = false;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    SimpleDraweeView f35279u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    SimpleDraweeView f35280v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    SimpleDraweeView f35281w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    SimpleDraweeView f35282x;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    TextView f35283y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    TextView f35284z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.zhy.view.flowlayout.b<TipBean> {
        a(List list) {
            super(list);
        }

        @Override // com.zhy.view.flowlayout.b
        /* renamed from: j */
        public View d(FlowLayout flowLayout, int i2, TipBean tipBean) {
            ShareGameActivity shareGameActivity = ShareGameActivity.this;
            TextView textView = (TextView) shareGameActivity.f35266n0.inflate(R.layout.share_flowlayout_tagitem, (ViewGroup) shareGameActivity.E, false);
            textView.setText(tipBean.getName());
            return textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TagFlowLayout.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f35286a;

        b(List list) {
            this.f35286a = list;
        }

        @Override // com.zhy.view.flowlayout.TagFlowLayout.b
        public boolean a(View view, int i2, FlowLayout flowLayout) {
            try {
                DownloadTask B = g1.f.G().B(ShareGameActivity.this.K.getCrc_link_type_val());
                B.setIs_boot_commented(1);
                g1.f.G().update(B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (i2 + 1 == this.f35286a.size()) {
                ShareGameActivity.this.f35264m.setVisibility(8);
                ShareGameActivity.this.f35260i.setVisibility(8);
                ShareGameActivity.this.f35263l.setVisibility(0);
                y1.a.c(ShareGameActivity.this.I);
                ShareGameActivity.this.J.setVisibility(0);
                ShareGameActivity.this.H.setVisibility(8);
                ShareGameActivity.this.G.setVisibility(8);
                MobclickAgent.onEvent(ShareGameActivity.this.f35268o0, "OnRemarkInput");
            } else if (AccountUtil_.getInstance_(ShareGameActivity.this.f35268o0).isTourist()) {
                ShareGameActivity.this.U0(1, ((TipBean) this.f35286a.get(i2)).getContent(), ((TipBean) this.f35286a.get(i2)).getId());
            } else {
                MobclickAgent.onEvent(ShareGameActivity.this.f35268o0, "OnRemarkShare");
                ShareGameActivity.this.f35265n.setVisibility(0);
                ShareGameActivity.this.J.setVisibility(0);
                ShareGameActivity.this.G.setVisibility(8);
                ShareGameActivity.this.f35267o.setVisibility(0);
                ShareGameActivity.this.f35260i.setVisibility(8);
                ShareGameActivity.this.f35262k.setVisibility(8);
                ShareGameActivity.this.D.setText(((TipBean) this.f35286a.get(i2)).getContent());
                if (ShareGameActivity.this.f35274r0.getAccount_type() == 2) {
                    ShareGameActivity shareGameActivity = ShareGameActivity.this;
                    shareGameActivity.P0(shareGameActivity.f35269p.getStarMark(), ShareGameActivity.this.C);
                } else {
                    ShareGameActivity.this.N0(((TipBean) this.f35286a.get(i2)).getId());
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements TagFlowLayout.a {
        c() {
        }

        @Override // com.zhy.view.flowlayout.TagFlowLayout.a
        public void a(Set<Integer> set) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements MStarBar.a {
        d() {
        }

        @Override // com.join.mgps.customview.MStarBar.a
        public void a(float f4) {
            double d4 = f4;
            ShareGameActivity.this.f35271q.setStarMark(d4);
            ShareGameActivity.this.f35275s.setStarMark(d4);
            ShareGameActivity.this.f35273r.setStarMark(d4);
            if (f4 > 2.0f) {
                ShareGameActivity.this.f35261j.setVisibility(8);
                ShareGameActivity.this.H.setVisibility(8);
                ShareGameActivity.this.f35262k.setVisibility(0);
                ShareGameActivity.this.J.setVisibility(8);
                MobclickAgent.onEvent(ShareGameActivity.this.f35268o0, "onRemarkLabel");
                ShareGameActivity.this.G.setVisibility(0);
                return;
            }
            ShareGameActivity.this.f35264m.setVisibility(8);
            ShareGameActivity.this.f35260i.setVisibility(8);
            ShareGameActivity.this.f35263l.setVisibility(0);
            ShareGameActivity.this.J.setVisibility(0);
            ShareGameActivity.this.H.setVisibility(8);
            y1.a.c(ShareGameActivity.this.I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ShareGameActivity.this.I.getText().toString().trim().length() == 0) {
                com.join.mgps.Util.i2.a(ShareGameActivity.this.f35268o0).b("评价不能为空");
                return;
            }
            try {
                DownloadTask B = g1.f.G().B(ShareGameActivity.this.K.getCrc_link_type_val());
                B.setIs_boot_commented(1);
                g1.f.G().update(B);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (AccountUtil_.getInstance_(ShareGameActivity.this.f35268o0).isTourist()) {
                ShareGameActivity shareGameActivity = ShareGameActivity.this;
                shareGameActivity.U0(2, shareGameActivity.I.getText().toString(), "1");
            } else {
                ShareGameActivity.this.f35263l.setVisibility(8);
                MobclickAgent.onEvent(ShareGameActivity.this.f35268o0, "OnRemarkShare");
                ShareGameActivity.this.f35265n.setVisibility(0);
                ShareGameActivity.this.f35267o.setVisibility(0);
                ShareGameActivity shareGameActivity2 = ShareGameActivity.this;
                shareGameActivity2.D.setText(shareGameActivity2.I.getText());
                if (ShareGameActivity.this.f35274r0.getAccount_type() == 2) {
                    ShareGameActivity shareGameActivity3 = ShareGameActivity.this;
                    shareGameActivity3.P0(shareGameActivity3.f35269p.getStarMark(), ShareGameActivity.this.C);
                }
                ShareGameActivity shareGameActivity4 = ShareGameActivity.this;
                shareGameActivity4.O0(shareGameActivity4.I.getText().toString());
            }
            y1.a.b(ShareGameActivity.this.I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements l1.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35291a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35292b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f35293c;

        f(String str, String str2, int i2) {
            this.f35291a = str;
            this.f35292b = str2;
            this.f35293c = i2;
        }

        @Override // l1.b
        public void a(Dialog dialog) {
            MobclickAgent.onEvent(ShareGameActivity.this.f35268o0, "OnRemarkShare");
            ShareGameActivity.this.f35265n.setVisibility(0);
            ShareGameActivity.this.J.setVisibility(0);
            ShareGameActivity.this.f35267o.setVisibility(0);
            ShareGameActivity.this.f35260i.setVisibility(8);
            ShareGameActivity.this.f35262k.setVisibility(8);
            ShareGameActivity.this.G.setVisibility(8);
            ShareGameActivity.this.f35263l.setVisibility(8);
            ShareGameActivity.this.f35265n.setVisibility(0);
            ShareGameActivity.this.f35267o.setVisibility(0);
            ShareGameActivity.this.D.setText(this.f35292b);
            if (this.f35293c == 1) {
                if (ShareGameActivity.this.f35274r0.getAccount_type() == 2) {
                    ShareGameActivity shareGameActivity = ShareGameActivity.this;
                    shareGameActivity.P0(shareGameActivity.f35269p.getStarMark(), ShareGameActivity.this.C);
                }
                ShareGameActivity.this.N0(this.f35291a);
            } else {
                if (ShareGameActivity.this.f35274r0.getAccount_type() == 2) {
                    ShareGameActivity shareGameActivity2 = ShareGameActivity.this;
                    shareGameActivity2.P0(shareGameActivity2.f35269p.getStarMark(), ShareGameActivity.this.C);
                }
                ShareGameActivity shareGameActivity3 = ShareGameActivity.this;
                shareGameActivity3.O0(shareGameActivity3.I.getText().toString());
            }
            dialog.dismiss();
        }

        @Override // l1.b
        public void b(Dialog dialog) {
            ShareGameActivity shareGameActivity = ShareGameActivity.this;
            shareGameActivity.f35276s0 = this.f35291a;
            shareGameActivity.D.setText(this.f35292b);
            LoginSplashActivity_.intent(ShareGameActivity.this.f35268o0).start();
            dialog.dismiss();
        }
    }

    public static boolean G0(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                if (installedPackages.get(i2).packageName.toLowerCase(Locale.ENGLISH).equals("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean H0(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i2 = 0; i2 < installedPackages.size(); i2++) {
                if (installedPackages.get(i2).packageName.toLowerCase(Locale.ENGLISH).equals("com.tencent.mm")) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0(float f4, TextView textView) {
        int i2 = (int) f4;
        if (i2 == 1) {
            textView.setText("浪费生命");
        } else if (i2 == 2) {
            textView.setText("打发时间");
        } else if (i2 == 3) {
            textView.setText("值得一玩");
        } else if (i2 == 4) {
            textView.setText("强烈推荐");
        } else if (i2 != 5) {
            textView.setText("点击星星评分");
        } else {
            textView.setText("必玩神作");
        }
    }

    private static void R0(Context context, String str, int i2) {
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setImagePath(str);
        ShareSDK.getPlatform(QZone.NAME).share(shareParams);
    }

    private static void S0(Context context, Bitmap bitmap, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put("Id", "4");
        hashMap.put("SortId", "1");
        hashMap.put(com.alipay.sdk.packet.d.f9787h, "wxf04635c4c318fe2d");
        hashMap.put("AppSecret", "8e21d75298829047b830ac5034b7073c");
        hashMap.put("BypassApproval", Bugly.SDK_IS_DEV);
        hashMap.put("Enable", "true");
        ShareSDK.setPlatformDevInfo(WechatMoments.NAME, hashMap);
        Platform.ShareParams shareParams = new Platform.ShareParams();
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageData(bitmap);
        ShareSDK.getPlatform(Wechat.NAME).share(shareParams);
    }

    private static void T0(Context context, Bitmap bitmap, int i2) {
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
        shareParams.setShareType(2);
        shareParams.setTitle("分享");
        shareParams.setImageData(bitmap);
        ShareSDK.getPlatform(str).share(shareParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.B})
    public void C0() {
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.f35274r0 = accountData;
        MyImageLoader.h(this.f35259h, accountData.getAvatarSrc());
        MyImageLoader.h(this.f35277t, this.f35274r0.getAvatarSrc());
        MyImageLoader.h(this.f35279u, this.f35274r0.getAvatarSrc());
        MyImageLoader.h(this.f35282x, this.f35274r0.getAvatarSrc());
        this.f35283y.setText(this.f35274r0.getNickname());
        this.f35284z.setText(this.f35274r0.getNickname());
        this.C.setText(this.f35274r0.getNickname());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        if (this.f35263l.getVisibility() == 0) {
            MobclickAgent.onEvent(this.f35268o0, "onRemarkBegin");
            this.f35264m.setVisibility(0);
            this.f35260i.setVisibility(0);
            this.f35263l.setVisibility(8);
            this.J.setVisibility(8);
            if (this.f35269p.getStarMark() > 2.0f) {
                this.G.setVisibility(0);
                this.H.setVisibility(8);
            } else {
                this.G.setVisibility(8);
                this.H.setVisibility(0);
            }
            y1.a.b(this.I);
            return;
        }
        V0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void F0() {
        if (!H0(this.f35268o0)) {
            com.join.mgps.Util.i2.a(this.f35268o0).b("沒有安裝微信");
            return;
        }
        MobclickAgent.onEvent(this.f35268o0, "OnRemarkShareChannel", "friends");
        Q0();
        this.f35265n.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(this.f35265n.getDrawingCache());
        this.f35265n.setDrawingCacheEnabled(false);
        S0(this.f35268o0, createBitmap, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0() {
        try {
            ResultMainBean<GameShareData> n12 = this.f35270p0.n1(RequestBeanUtil.getInstance(this.f35268o0).getDetialmoreServer(this.K.getCrc_link_type_val()));
            if (n12 != null && n12.getFlag() == 1) {
                W0(n12.getMessages().getData());
            } else {
                M0();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            M0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        try {
            DownloadTask B = g1.f.G().B(this.K.getCrc_link_type_val());
            B.setIs_boot_commented(1);
            g1.f.G().update(B);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        V0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        if (!G0(this.f35268o0)) {
            com.join.mgps.Util.i2.a(this.f35268o0).b("沒有安裝qq");
            return;
        }
        MobclickAgent.onEvent(this.f35268o0, "OnRemarkShareChannel", "qZone");
        Q0();
        this.f35265n.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(this.f35265n.getDrawingCache());
        this.f35265n.setDrawingCacheEnabled(false);
        String str = com.join.mgps.Util.u.f27851j + "shareImage.png";
        com.join.mgps.Util.o1.n(createBitmap, str);
        R0(this.f35268o0, str, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        if (!G0(this.f35268o0)) {
            com.join.mgps.Util.i2.a(this.f35268o0).b("沒有安裝qq");
            return;
        }
        MobclickAgent.onEvent(this.f35268o0, "OnRemarkShareChannel", "qq");
        Q0();
        this.f35265n.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(this.f35265n.getDrawingCache());
        this.f35265n.setDrawingCacheEnabled(false);
        String str = com.join.mgps.Util.u.f27851j + "shareImage.png";
        com.join.mgps.Util.o1.n(createBitmap, str);
        com.join.mgps.Util.r.l(this.f35268o0, str, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void M0() {
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void N0(String str) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this.f35268o0).getAccountData();
            if (accountData != null && accountData.getUid() != 0 && accountData.getAccount_type() != 2) {
                RequestGameShareTag requestGameShareTag = new RequestGameShareTag();
                requestGameShareTag.setGame_id(this.K.getCrc_link_type_val());
                requestGameShareTag.setUid(accountData.getUid());
                requestGameShareTag.setScore(this.f35269p.getStarMark() + "");
                requestGameShareTag.setTag_des_id(str);
                requestGameShareTag.setTag_des_type(0);
                requestGameShareTag.setToken(accountData.getToken());
                this.f35270p0.E1(RequestBeanUtil.getInstance(this.f35268o0).getDefalutRequestBean(requestGameShareTag));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void O0(String str) {
        try {
            AccountBean accountData = AccountUtil_.getInstance_(this.f35268o0).getAccountData();
            if (accountData != null && accountData.getUid() != 0 && accountData.getAccount_type() != 2) {
                RequestUidtagidTagdes requestUidtagidTagdes = new RequestUidtagidTagdes();
                requestUidtagidTagdes.setGame_id(this.K.getCrc_link_type_val());
                requestUidtagidTagdes.setUid(accountData.getUid());
                requestUidtagidTagdes.setScore(this.f35269p.getStarMark() + "");
                requestUidtagidTagdes.setTag_des(str);
                requestUidtagidTagdes.setToken(accountData.getToken());
                this.f35270p0.k1(RequestBeanUtil.getInstance(this.f35268o0).getDefalutRequestBean(requestUidtagidTagdes));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void Q0() {
        if (this.f35278t0) {
            return;
        }
        this.f35278t0 = true;
        try {
            DownloadTask B = g1.f.G().B(this.K.getCrc_link_type_val());
            B.setIs_boot_commented(1);
            g1.f.G().update(B);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f35272q0.setHasShare(true);
        com.join.mgps.pref.h.n(this.f35268o0).y0(JsonMapper.getInstance().toJson(this.f35272q0));
    }

    void U0(int i2, String str, String str2) {
        com.join.mgps.Util.a0.c0(this.f35268o0).d(this.f35268o0, "登陆后保存点评数据", "悟饭为你记录每一份评价", "跳过", "去登陆", new f(str2, str, i2)).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void V0() {
        UtilsMy.d3(this, this.K, 0);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0(GameShareData gameShareData) {
        this.f35274r0 = AccountUtil_.getInstance_(this).getAccountData();
        SimpleDraweeView simpleDraweeView = this.f35252a;
        String cover = gameShareData.getStatistics_info().getCover();
        r.c cVar = r.c.f12144g;
        MyImageLoader.i(simpleDraweeView, cover, cVar);
        MyImageLoader.i(this.f35280v, gameShareData.getStatistics_info().getCover(), cVar);
        MyImageLoader.h(this.f35258g, this.K.getPortraitURL());
        MyImageLoader.h(this.f35281w, this.K.getPortraitURL());
        MyImageLoader.h(this.f35259h, this.f35274r0.getAvatarSrc());
        MyImageLoader.h(this.f35277t, this.f35274r0.getAvatarSrc());
        MyImageLoader.h(this.f35279u, this.f35274r0.getAvatarSrc());
        MyImageLoader.h(this.f35282x, this.f35274r0.getAvatarSrc());
        if (!gameShareData.getStatistics_info().getCounts().equals("0")) {
            TextView textView = this.f35254c;
            textView.setText(gameShareData.getStatistics_info().getCounts() + "人平均打分" + gameShareData.getStatistics_info().getAvg_score());
            TextView textView2 = this.f35255d;
            textView2.setText(gameShareData.getStatistics_info().getCounts() + "人平均打分" + gameShareData.getStatistics_info().getAvg_score());
        } else {
            this.f35255d.setVisibility(4);
            this.f35254c.setVisibility(4);
        }
        MyImageLoader.K(this.f35253b, gameShareData.getStatistics_info().getCover(), 6, 15);
        this.f35256e.setText(this.K.getShowName());
        this.B.setText(this.K.getShowName());
        this.f35266n0 = LayoutInflater.from(this);
        this.f35283y.setText(this.f35274r0.getNickname());
        this.f35284z.setText(this.f35274r0.getNickname());
        this.C.setText(this.f35274r0.getNickname());
        List<TipBean> tag_info = gameShareData.getTag_info();
        TipBean tipBean = new TipBean();
        tipBean.setName("+自定义");
        tag_info.add(tipBean);
        this.E.setAdapter(new a(tag_info));
        this.E.setOnTagClickListener(new b(tag_info));
        this.E.setOnSelectListener(new c());
        this.f35269p.setOnStarChangeListener(new d());
        this.A.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        if (!H0(this.f35268o0)) {
            com.join.mgps.Util.i2.a(this.f35268o0).b("沒有安裝微信");
            return;
        }
        MobclickAgent.onEvent(this.f35268o0, "OnRemarkShareChannel", "weichart");
        Q0();
        this.f35265n.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(this.f35265n.getDrawingCache());
        this.f35265n.setDrawingCacheEnabled(false);
        T0(this.f35268o0, createBitmap, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterView() {
        this.f35268o0 = this;
        this.f35270p0 = com.join.mgps.rpc.impl.c.P1();
        MobclickAgent.onEvent(this.f35268o0, "onRemarkBegin");
        MyImageLoader.K(this.f35253b, this.K.getPortraitURL(), 6, 15);
        String K = com.join.mgps.pref.h.n(this.f35268o0).K();
        if (com.join.mgps.Util.d2.h(K)) {
            this.f35272q0 = new ShareGameTodayData();
        } else {
            this.f35272q0 = (ShareGameTodayData) JsonMapper.getInstance().fromJson(K, ShareGameTodayData.class);
        }
        if (this.f35272q0 == null) {
            this.f35272q0 = new ShareGameTodayData();
        }
        if (!com.join.android.app.common.utils.c.g(this.f35272q0.getLastTime())) {
            this.f35272q0.setLastTime(System.currentTimeMillis());
            this.f35272q0.setGameid1(this.K.getCrc_link_type_val());
            this.f35272q0.setGameid2(null);
            this.f35272q0.setGameid3(null);
            this.f35272q0.setHasShare(false);
        } else {
            String crc_link_type_val = this.K.getCrc_link_type_val();
            if (!crc_link_type_val.equals(this.f35272q0.getGameid1()) && !crc_link_type_val.equals(this.f35272q0.getGameid2()) && !crc_link_type_val.equals(this.f35272q0.getGameid3())) {
                if (this.f35272q0.getGameid1() == null) {
                    this.f35272q0.setGameid1(crc_link_type_val);
                } else if (this.f35272q0.getGameid2() == null) {
                    this.f35272q0.setGameid2(crc_link_type_val);
                } else if (this.f35272q0.getGameid3() == null) {
                    this.f35272q0.setGameid3(crc_link_type_val);
                }
            }
        }
        com.join.mgps.pref.h.n(this.f35268o0).y0(JsonMapper.getInstance().toJson(this.f35272q0));
        I0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back() {
        this.f35261j.setVisibility(0);
        this.H.setVisibility(0);
        this.f35262k.setVisibility(8);
        this.G.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, @Nullable Intent intent) {
        super.onActivityResult(i2, i4, intent);
        if (i4 == 10011) {
            MobclickAgent.onEvent(this.f35268o0, "OnRemarkShare");
            this.f35265n.setVisibility(0);
            this.J.setVisibility(0);
            this.f35267o.setVisibility(0);
            this.f35260i.setVisibility(8);
            this.H.setVisibility(8);
            this.f35262k.setVisibility(8);
            this.G.setVisibility(8);
            this.f35263l.setVisibility(8);
            this.f35265n.setVisibility(0);
            this.f35267o.setVisibility(0);
            if (i2 == 1) {
                N0(this.f35276s0);
            } else {
                O0(this.I.getText().toString());
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        UtilsMy.d3(this, this.K, 0);
        finish();
    }
}
