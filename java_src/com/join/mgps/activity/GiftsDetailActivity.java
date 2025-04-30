package com.join.mgps.activity;

import android.app.Dialog;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.dto.GiftPackageInfoBean;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.enums.Dtype;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.gift_detail_activity)
/* loaded from: classes.dex */
public class GiftsDetailActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.d f32059a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f32060b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f32061c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    ScrollView f32062d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f32063e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    SimpleDraweeView f32064f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f32065g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    TextView f32066h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    TextView f32067i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    TextView f32068j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f32069k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f32070l;
    @Extra("")

    /* renamed from: m  reason: collision with root package name */
    String f32071m;
    @Extra

    /* renamed from: n  reason: collision with root package name */
    int f32072n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    GiftPackageDataInfoBean f32073o;

    /* renamed from: p  reason: collision with root package name */
    private Context f32074p;

    /* renamed from: q  reason: collision with root package name */
    private Dialog f32075q;

    /* renamed from: r  reason: collision with root package name */
    private Button f32076r;

    /* renamed from: s  reason: collision with root package name */
    private TextView f32077s;

    /* renamed from: t  reason: collision with root package name */
    private DownloadTask f32078t;

    /* renamed from: u  reason: collision with root package name */
    private DetailResultBean f32079u;

    /* renamed from: v  reason: collision with root package name */
    private com.join.mgps.dialog.x0 f32080v;

    /* renamed from: w  reason: collision with root package name */
    private com.join.mgps.customview.t f32081w;

    /* renamed from: x  reason: collision with root package name */
    private com.join.mgps.customview.t f32082x;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.customview.t f32083y = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GiftsDetailActivity.this.f32075q != null && GiftsDetailActivity.this.f32075q.isShowing()) {
                GiftsDetailActivity.this.f32075q.dismiss();
            }
            int status = GiftsDetailActivity.this.f32078t != null ? GiftsDetailActivity.this.f32078t.getStatus() : 0;
            if (UtilsMy.m0(GiftsDetailActivity.this.f32079u.getPay_tag_info(), GiftsDetailActivity.this.f32079u.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status != 0) {
                if (status == 5) {
                    UtilsMy.c3(GiftsDetailActivity.this.f32074p, GiftsDetailActivity.this.f32078t);
                    return;
                } else if (status != 9 && status != 43) {
                    return;
                }
            }
            if (GiftsDetailActivity.this.f32079u != null) {
                if (UtilsMy.o0(GiftsDetailActivity.this.f32079u.getPay_tag_info(), GiftsDetailActivity.this.f32079u.getCrc_sign_id()) > 0) {
                    UtilsMy.m3(GiftsDetailActivity.this.f32074p, GiftsDetailActivity.this.f32078t.getCrc_link_type_val());
                } else {
                    UtilsMy.d1(GiftsDetailActivity.this.f32078t, GiftsDetailActivity.this.f32079u);
                    if (!UtilsMy.T0(GiftsDetailActivity.this.f32074p, GiftsDetailActivity.this.f32078t)) {
                        if (GiftsDetailActivity.this.f32079u.getDown_status() == 5) {
                            UtilsMy.R0(GiftsDetailActivity.this.f32074p, GiftsDetailActivity.this.f32078t);
                        } else {
                            UtilsMy.F0(GiftsDetailActivity.this.f32074p, GiftsDetailActivity.this.f32078t, GiftsDetailActivity.this.f32079u.getTp_down_url(), GiftsDetailActivity.this.f32079u.getOther_down_switch(), GiftsDetailActivity.this.f32079u.getCdn_down_switch());
                        }
                    }
                }
            }
            GiftsDetailActivity.this.f32078t.setStatus(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ClipboardManager) GiftsDetailActivity.this.f32074p.getSystemService("clipboard")).setText(GiftsDetailActivity.this.f32073o.getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(GiftsDetailActivity.this.f32074p);
            a4.b(GiftsDetailActivity.this.f32073o.getGift_package_code() + "已复制到剪贴板");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GiftsDetailActivity.this.f32075q == null || !GiftsDetailActivity.this.f32075q.isShowing()) {
                return;
            }
            GiftsDetailActivity.this.f32075q.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            GiftsDetailActivity.this.T0();
        }
    }

    private boolean I0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this.f32074p).b(this.f32074p.getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f32074p).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                Z0();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            Y0();
            return false;
        }
        return true;
    }

    private void J0() {
        com.join.mgps.customview.t tVar = this.f32083y;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.f32083y.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0() {
        DetailResultBean detailResultBean = this.f32079u;
        if (detailResultBean == null || detailResultBean.getCrc_sign_id() == null) {
            return;
        }
        DownloadTask B = g1.f.G().B(this.f32079u.getCrc_sign_id());
        this.f32078t = B;
        if (B == null) {
            this.f32078t = this.f32079u.getDownloadtaskDown();
            if (UtilsMy.e0(this.f32079u.getTag_info())) {
                this.f32078t.setFileType(Dtype.android.name());
                if (com.join.android.app.common.utils.a.g0(getApplicationContext()).c(getApplicationContext(), this.f32079u.getPackage_name())) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(getApplicationContext()).k(getApplicationContext(), this.f32079u.getPackage_name());
                    if (com.join.mgps.Util.d2.i(this.f32079u.getVer()) && k4.d() < Integer.parseInt(this.f32079u.getVer())) {
                        this.f32078t.setStatus(9);
                    } else {
                        this.f32078t.setStatus(5);
                    }
                } else {
                    this.f32078t.setStatus(0);
                }
            } else {
                this.f32078t.setStatus(0);
            }
        } else {
            B.setDownloadType(this.f32079u.getDownloadType());
            this.f32078t.setScreenshot_pic(this.f32079u.getScreenshot_pic());
        }
        V0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0() {
        if (com.join.android.app.common.utils.f.j(this.f32074p)) {
            try {
                GiftPackageInfoBean P0 = this.f32059a.P0(N0());
                if (P0 != null) {
                    GiftPackageDataInfoBean data = P0.getMessages().getData();
                    this.f32073o = data;
                    if (data != null) {
                        X0();
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                P0();
                return;
            }
        }
        P0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0() {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                try {
                    GiftPackageOperationBean f02 = this.f32059a.f0(RequestBeanUtil.getInstance(this).getGiftPackageOperationRequestBean(this.f32072n, this.f32073o.getGift_package_id(), this.f32071m));
                    if (f02 != null) {
                        if (f02.getFlag().equals("0")) {
                            String error_info = f02.getError_info();
                            if (error_info != null && f02.getCode().equals("1001")) {
                                showToast(error_info);
                            }
                            return;
                        }
                        List<GiftPackageDataOperationBean> data = f02.getMessages().getData();
                        if (data != null && data.size() > 0) {
                            GiftPackageDataOperationBean giftPackageDataOperationBean = data.get(0);
                            U0(giftPackageDataOperationBean);
                            GiftPackageDataInfoBean gift_info = giftPackageDataOperationBean.getGift_info();
                            if (gift_info != null) {
                                R0(gift_info.getGift_package_code());
                            }
                        } else {
                            showToast("领取失败");
                        }
                    } else {
                        showToast("领取失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                O0();
            } else {
                showToast("领取失败");
            }
        } finally {
            O0();
        }
    }

    public CommonRequestBean N0() {
        AccountBean accountData = AccountUtil_.getInstance_(this.f32074p).getAccountData();
        if (accountData != null) {
            this.f32072n = accountData.getUid();
        }
        return RequestBeanUtil.getInstance(this.f32074p).getGiftPackageInfoRequestBean(this.f32072n, this.f32073o.getGift_package_id());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void O0() {
        com.join.mgps.dialog.x0 x0Var = this.f32080v;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f32080v.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void P0() {
        this.f32060b.setVisibility(8);
        this.f32061c.setVisibility(0);
        this.f32062d.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Q0() {
        if (this.f32073o.getGift_package_status() == 1) {
            if (this.f32073o.getGift_package_overdue() == 1) {
                com.join.mgps.Util.i2.a(this.f32074p).b("该礼包已过期");
                return;
            }
            ((ClipboardManager) this.f32074p.getSystemService("clipboard")).setText(this.f32073o.getGift_package_code());
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(this.f32074p);
            a4.b(this.f32073o.getGift_package_code() + "已复制到剪贴板");
            return;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f32074p).getAccountData();
        if (IntentUtil.getInstance().goLoginNetGame(this) || !I0(this.f32073o.getGift_package_type())) {
            return;
        }
        this.f32072n = accountData.getUid();
        com.join.mgps.dialog.x0 x0Var = this.f32080v;
        if (x0Var != null) {
            x0Var.b();
        }
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void R0(String str) {
        this.f32067i.setText(str);
        this.f32066h.setText("复制");
    }

    void S0() {
        if (this.f32073o == null) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("receivedOemDetail", JsonMapper.getInstance().toJson(this.f32073o));
        setResult(100, intent);
    }

    void T0() {
        if (this.f32073o.getGift_package_status() == 1) {
            if (this.f32073o.getGift_package_overdue() == 1) {
                this.f32066h.setText("已过期");
                this.f32066h.setTextColor(-7763575);
                this.f32066h.setBackgroundResource(R.drawable.recom_grey_butn);
                return;
            }
            this.f32066h.setText("复制");
            this.f32066h.setTextColor(-358375);
            this.f32066h.setBackgroundResource(R.drawable.recom_maincolor_butn);
            return;
        }
        this.f32066h.setText("领取");
        this.f32066h.setTextColor(-358375);
        this.f32066h.setBackgroundResource(R.drawable.recom_maincolor_butn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U0(GiftPackageDataOperationBean giftPackageDataOperationBean) {
        GiftPackageDataInfoBean gift_info = giftPackageDataOperationBean.getGift_info();
        this.f32073o.setGift_package_status(1);
        this.f32073o.setGift_package_overdue(gift_info.getGift_package_overdue());
        this.f32073o.setGift_package_code(gift_info.getGift_package_code());
        this.f32066h.setBackgroundResource(R.drawable.recom_maincolor_butn);
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(this.f32074p, R.style.MyDialog);
        this.f32075q = tVar;
        tVar.setContentView(R.layout.save_code_dialog);
        this.f32076r = (Button) this.f32075q.findViewById(R.id.dialog_button_cancle);
        Button button = (Button) this.f32075q.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f32075q.findViewById(R.id.saveCodeTv);
        this.f32077s = (TextView) this.f32075q.findViewById(R.id.moneyText);
        textView.setText("领取");
        ((TextView) this.f32075q.findViewById(R.id.tip_title)).setText("领号成功");
        button.setText("关闭");
        ((TextView) this.f32075q.findViewById(R.id.saveCodeContent)).setText(this.f32073o.getGift_package_code());
        this.f32076r.setOnClickListener(new a());
        textView.setOnClickListener(new b());
        button.setOnClickListener(new c());
        this.f32075q.setOnDismissListener(new d());
        this.f32079u = giftPackageDataOperationBean.getGame_info();
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void V0() {
        Dialog dialog;
        DownloadTask downloadTask = this.f32078t;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f32079u.getPay_tag_info(), this.f32079u.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 5) {
                this.f32076r.setText("启动游戏");
            } else if (status != 9 && status != 43) {
                this.f32076r.setText("下载中..");
            }
            this.f32067i.setText(this.f32073o.getGift_package_code());
            dialog = this.f32075q;
            if (dialog != null || dialog.isShowing()) {
            }
            this.f32075q.show();
            return;
        }
        this.f32076r.setText("下载游戏");
        DetailResultBean detailResultBean = this.f32079u;
        if (detailResultBean != null) {
            UtilsMy.m0(detailResultBean.getPay_tag_info(), this.f32079u.getCrc_sign_id());
            UtilsMy.D2(this.f32076r, this.f32079u.getDown_status(), this.f32079u.getPay_tag_info(), this.f32079u.getCrc_sign_id());
            UtilsMy.w2(this.f32079u.getSp_tag_info(), this.f32077s);
        }
        this.f32067i.setText(this.f32073o.getGift_package_code());
        dialog = this.f32075q;
        if (dialog != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void W0() {
        this.f32061c.setVisibility(8);
        this.f32060b.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void X0() {
        this.f32060b.setVisibility(8);
        this.f32061c.setVisibility(8);
        this.f32062d.setVisibility(0);
        this.f32065g.setText(this.f32073o.getGift_package_title());
        this.f32067i.setText(this.f32073o.getGift_package_code());
        MyImageLoader.f(this.f32064f, R.drawable.banner_normal_icon, this.f32073o.getGift_package_pic(), MyImageLoader.C(this.f32074p));
        this.f32068j.setText(this.f32073o.getGift_package_content());
        TextView textView = this.f32069k;
        textView.setText(com.join.mgps.Util.x.w(this.f32073o.getGift_package_times_begin()) + " 至 " + com.join.mgps.Util.x.w(this.f32073o.getGift_package_times_end()));
        this.f32070l.setText(this.f32073o.getGift_package_explain());
        T0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y0() {
        com.join.mgps.customview.t tVar = this.f32081w;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.f32081w = com.join.mgps.Util.a0.c0(this.f32074p).Z(this.f32074p);
        }
        this.f32081w.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Z0() {
        com.join.mgps.customview.t tVar = this.f32083y;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.f32083y = com.join.mgps.Util.a0.c0(this).b0(this);
        }
        this.f32083y.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        this.f32059a = com.join.mgps.rpc.impl.c.P1();
        this.f32074p = this;
        com.join.mgps.Util.c0.a().d(this);
        this.f32063e.setText("礼包详情");
        this.f32065g.setText(this.f32073o.getGift_package_title());
        this.f32067i.setText(this.f32073o.getGift_package_code());
        TextView textView = this.f32069k;
        textView.setText(com.join.mgps.Util.x.w(this.f32073o.getGift_package_times_begin()) + " 至 " + com.join.mgps.Util.x.w(this.f32073o.getGift_package_times_end()));
        MyImageLoader.f(this.f32064f, R.drawable.banner_normal_icon, this.f32073o.getGift_package_pic(), MyImageLoader.C(this.f32074p));
        T0();
        W0();
        this.f32080v = com.join.mgps.Util.a0.c0(this.f32074p).x(this.f32074p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        S0();
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        S0();
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        J0();
        com.join.mgps.Util.c0.a().e(this);
        Dialog dialog = this.f32075q;
        if (dialog != null && dialog.isShowing()) {
            this.f32075q.dismiss();
        }
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        if (a4 == null || this.f32078t == null || !a4.getCrc_link_type_val().equals(this.f32078t.getCrc_link_type_val())) {
            return;
        }
        this.f32078t = a4;
        int c4 = lVar.c();
        if (c4 != 5) {
            if (c4 == 8) {
                DownloadTask downloadTask = this.f32078t;
                if (downloadTask == null || downloadTask.getPath() == null) {
                    return;
                }
                UtilsMy.C3(this.f32078t);
                return;
            } else if (c4 != 11 && c4 != 48) {
                return;
            }
        }
        if (this.f32078t == null || !a4.getCrc_link_type_val().equals(this.f32078t.getCrc_link_type_val())) {
            return;
        }
        this.f32078t = a4;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        W0();
        L0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f32074p).b(str);
    }
}
