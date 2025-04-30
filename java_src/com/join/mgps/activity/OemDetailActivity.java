package com.join.mgps.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.OemBean;
import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemRequestBean;
import com.join.mgps.dto.OemResponse;
import com.join.mgps.dto.PayCenterOrderRequest;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.mg_forum_forum_gift_detail_activity)
/* loaded from: classes3.dex */
public class OemDetailActivity extends FragmentActivity {
    public static final String H = "key_oem_detail";
    public static final int I = 1;
    OemBean.OemDetailBean A;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    View f34459b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    RelativeLayout f34460c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f34461d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    View f34462e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ForumLoadingView f34463f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f34464g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f34465h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LinearLayout f34466i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    SimpleDraweeView f34467j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    TextView f34468k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f34469l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f34470m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f34471n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f34472o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f34473p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    Button f34474q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    Button f34475r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f34476s;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    TextView f34477t;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    TextView f34478u;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    TextView f34479v;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    View f34480w;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    TextView f34481x;

    /* renamed from: y  reason: collision with root package name */
    com.join.mgps.rpc.l f34482y;

    /* renamed from: a  reason: collision with root package name */
    private String f34458a = getClass().getSimpleName();

    /* renamed from: z  reason: collision with root package name */
    boolean f34483z = false;
    final int B = 1;
    final int C = 2;
    Handler D = new b();
    boolean E = false;
    com.join.mgps.customview.t F = null;
    com.join.mgps.customview.t G = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ForumLoadingView.e {
        a(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            if (view.getId() == R.id.setNetwork) {
                OemDetailActivity.this.O0();
            }
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 1) {
                OemDetailActivity.this.a1((String) message.obj);
            } else if (i2 != 2) {
            } else {
                try {
                    OemDetailActivity.this.T0();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.M(view.getContext(), OemDetailActivity.this.A.getGift_cdk());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (OemDetailActivity.this.F0(OemDetailActivity.this.A.getType())) {
                OemDetailActivity.this.R0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String url = OemDetailActivity.this.A.getUrl();
            if (com.join.mgps.Util.d2.h(url)) {
                OemDetailActivity.this.showToast("礼包获取失败");
            } else {
                com.join.mgps.Util.i0.P0(view.getContext(), url);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.Util.i0.P0(view.getContext(), OemDetailActivity.this.A.getUrl());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (OemDetailActivity.this.J0()) {
                com.join.mgps.Util.i0.P0(view.getContext(), OemDetailActivity.this.A.getUrl());
                return;
            }
            OemDetailActivity.this.showToast("您的銅板不足");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends ForumLoadingView.e {
        i(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            super.a(view);
            IntentUtil.getInstance().goWirelessSettings(view.getContext());
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            OemDetailActivity.this.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends ForumLoadingView.e {
        j(ForumLoadingView forumLoadingView) {
            super(forumLoadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View view) {
            if (view.getId() == R.id.setNetwork) {
                OemDetailActivity.this.O0();
            }
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean F0(String str) {
        if (com.join.mgps.Util.d2.h(str)) {
            com.join.mgps.Util.i2.a(this).b(getString(R.string.unknow_gift_type));
            return false;
        }
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (str.equals("6")) {
            if (accountData.getVip_level() <= 0) {
                b1();
                return false;
            }
        } else if (str.equals("7") && accountData.getSvip_level() <= 0) {
            Z0();
            return false;
        }
        return true;
    }

    private void G0() {
        com.join.mgps.customview.t tVar = this.F;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.F.dismiss();
    }

    private void H0() {
        com.join.mgps.customview.t tVar = this.G;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.G.dismiss();
    }

    private void K0() {
        this.f34461d.setText("详情");
    }

    private void L0() {
        E0(1);
    }

    private void N0() {
        M0(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        E0(1);
        if (com.join.android.app.common.utils.f.j(this)) {
            N0();
            return;
        }
        showToast(getString(R.string.net_connect_failed));
        E0(9);
    }

    private void P0(int i2, OemData.GiftDetailData giftDetailData) {
        if (this.A == null) {
            this.A = new OemBean.OemDetailBean();
        }
        JsonMapper.getInstance();
        this.A = (OemBean.OemDetailBean) JsonMapper.getInstance().fromJson(JsonMapper.toJsonString(giftDetailData), OemBean.OemDetailBean.class);
        S0();
    }

    private void Q0(OemData.GiftGetCdkData giftGetCdkData) {
        try {
            String gift_cdk = giftGetCdkData.getGift_cdk();
            if (com.join.mgps.Util.d2.i(gift_cdk)) {
                this.A.setIs_used(Boolean.TRUE);
                this.A.setGift_cdk(gift_cdk);
                if (com.join.mgps.Util.d2.i(this.A.getMy_oem())) {
                    OemBean.OemDetailBean oemDetailBean = this.A;
                    oemDetailBean.setMy_oem((Integer.parseInt(this.A.getMy_oem()) + 1) + "");
                }
                if (this.A.getSurplus() > 0) {
                    OemBean.OemDetailBean oemDetailBean2 = this.A;
                    oemDetailBean2.setSurplus(oemDetailBean2.getSurplus() - 1);
                }
            }
            S0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @UiThread
    void E0(int i2) {
        this.f34463f.setFailedReloadingRes(R.drawable.reload_butn_selector);
        this.f34463f.setFailedImgRes(R.drawable.set_net_butn);
        if (i2 == 1) {
            this.f34463f.j(1);
        } else if (i2 == 2) {
            this.f34463f.j(2);
        } else if (i2 == 9) {
            ForumLoadingView forumLoadingView = this.f34463f;
            forumLoadingView.setListener(new i(forumLoadingView));
            this.f34463f.j(9);
        } else if (i2 == 10) {
            this.f34463f.j(10);
            this.f34463f.setFailedMsg("没有更多详情哦~");
            ForumLoadingView forumLoadingView2 = this.f34463f;
            forumLoadingView2.setListener(new j(forumLoadingView2));
            this.f34463f.setReloadingVisibility(0);
            this.f34463f.setFailedImgVisibility(0);
            this.f34463f.setFailedImgRes(R.drawable.btn_refresh);
            this.f34463f.setFailedReloadingRes(R.drawable.icon_no_rec);
        } else if (i2 != 16) {
        } else {
            this.f34463f.j(10);
            this.f34463f.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView3 = this.f34463f;
            forumLoadingView3.setListener(new a(forumLoadingView3));
            this.f34463f.setReloadingVisibility(0);
            this.f34463f.setFailedImgVisibility(0);
            this.f34463f.setFailedImgRes(R.drawable.btn_refresh);
            this.f34463f.setFailedReloadingRes(R.drawable.icon_no_rec);
        }
    }

    public void I0() {
        try {
            String str = (String) getIntent().getSerializableExtra(H);
            if (com.join.mgps.Util.d2.h(str)) {
                finish();
            } else {
                this.A = (OemBean.OemDetailBean) JsonMapper.getInstance().fromJson(str, OemBean.OemDetailBean.class);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    boolean J0() {
        return AccountUtil_.getInstance_(this).getAccountData().getPapaMoney() >= ((long) (com.join.mgps.Util.d2.i(this.A.getMoney_num()) ? Integer.parseInt(this.A.getMoney_num()) : 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0(int i2) {
        int i4;
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.f34483z) {
                return;
            }
            try {
                try {
                    OemRequestBean.GetOemDetailRequestBean getOemDetailRequestBean = new OemRequestBean.GetOemDetailRequestBean();
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    if (com.join.mgps.Util.i0.Y0(this)) {
                        i4 = T.getUid();
                        T.getToken();
                    } else {
                        i4 = 0;
                    }
                    OemBean.OemDetailBean oemDetailBean = this.A;
                    String id = oemDetailBean != null ? oemDetailBean.getId() : "";
                    getOemDetailRequestBean.setUid(i4 + "");
                    getOemDetailRequestBean.setOid(id);
                    OemResponse<OemData.GiftDetailData> b4 = this.f34482y.b(i4, id);
                    if (b4 != null && b4.getError() == 0 && b4.getData() != null) {
                        OemData.GiftDetailData data = b4.getData();
                        if (data == null) {
                            if (i2 == 1) {
                                E0(10);
                            }
                            return;
                        }
                        P0(i2, data);
                        E0(2);
                    } else {
                        E0(16);
                    }
                } catch (Exception e4) {
                    E0(16);
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.f34483z = false;
            }
        }
        showToast(getString(R.string.net_connect_failed));
        E0(9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R0() {
        String str;
        int i2;
        if (com.join.android.app.common.utils.f.j(this)) {
            if (this.E) {
                return;
            }
            try {
                try {
                    String str2 = "礼包码获取失败";
                    OemRequestBean.ReceiveCdkRequestBean receiveCdkRequestBean = new OemRequestBean.ReceiveCdkRequestBean();
                    AccountBean T = com.join.mgps.Util.i0.T(this);
                    if (com.join.mgps.Util.i0.Y0(this)) {
                        i2 = T.getUid();
                        str = T.getToken();
                    } else {
                        str = "";
                        i2 = 0;
                    }
                    OemBean.OemDetailBean oemDetailBean = this.A;
                    String id = oemDetailBean != null ? oemDetailBean.getId() : "";
                    receiveCdkRequestBean.setUid(i2 + "");
                    receiveCdkRequestBean.setOid(id);
                    OemResponse<OemData.GiftGetCdkData> a4 = this.f34482y.a(i2, str, id);
                    if (a4 != null && a4.getError() == 0) {
                        OemData.GiftGetCdkData data = a4.getData();
                        if (data != null && com.join.mgps.Util.d2.i(data.getGift_cdk())) {
                            Q0(data);
                            showToast("礼包码获取成功");
                        } else {
                            if (!com.join.mgps.Util.d2.h("")) {
                                str2 = "";
                            }
                            showToast(str2);
                        }
                    } else {
                        showToast("礼包码获取失败");
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return;
            } finally {
                this.E = false;
            }
        }
        showToast(getString(R.string.net_connect_failed));
    }

    void S0() {
        Message obtainMessage = this.D.obtainMessage();
        obtainMessage.what = 2;
        obtainMessage.sendToTarget();
    }

    @UiThread
    void T0() {
        this.f34468k.setText(this.A.getName());
        this.f34469l.setText(getString(R.string.cdk_expired_date, new Object[]{com.join.mgps.Util.x.C(this.A.getEnd_time() * 1000)}));
        String content = this.A.getContent();
        String use_method = this.A.getUse_method();
        this.f34477t.setText(content);
        this.f34479v.setText(use_method);
        if (com.join.mgps.Util.d2.h(content)) {
            this.f34476s.setVisibility(8);
            this.f34477t.setVisibility(8);
        } else {
            this.f34476s.setVisibility(0);
            this.f34477t.setVisibility(0);
        }
        if (com.join.mgps.Util.d2.h(use_method)) {
            this.f34478u.setVisibility(8);
            this.f34479v.setVisibility(8);
        } else {
            this.f34478u.setVisibility(0);
            this.f34479v.setVisibility(0);
        }
        this.f34480w.setOnClickListener(new c());
        this.f34481x.setText(getString(R.string.my_cdk_count, new Object[]{this.A.getMy_oem() + ""}));
        this.f34468k.setTextColor(getResources().getColor(R.color.gift_type_normal));
        String type = this.A.getType();
        this.f34464g.setVisibility(8);
        this.f34465h.setVisibility(8);
        this.f34466i.setVisibility(8);
        this.f34470m.setVisibility(8);
        this.f34473p.setVisibility(8);
        if (com.join.mgps.Util.d2.i(type)) {
            if (type.equals("4")) {
                this.f34468k.setTextColor(getResources().getColor(R.color.gift_type_exchange));
                X0();
            } else if (type.equals("3")) {
                this.f34468k.setTextColor(getResources().getColor(R.color.gift_type_exclusive));
                W0();
            } else if (type.equals(PayCenterOrderRequest.PAY_TYPE_RECHARGE)) {
                V0();
            } else if (type.equals("1") || type.equals("5")) {
                U0();
            }
        }
        MyImageLoader.h(this.f34467j, this.A.getIcon());
    }

    void U0() {
        int parseInt;
        this.f34464g.setVisibility(0);
        this.f34470m.setVisibility(0);
        this.f34474q.setOnClickListener(null);
        getResources();
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.A.getSurplus());
        sb2.append("");
        sb.append(com.join.mgps.Util.d2.i(sb2.toString()) ? Integer.valueOf(this.A.getSurplus()) : "0");
        sb.append("个");
        String string = getString(R.string.cdk_propotion, new Object[]{sb.toString()});
        if (com.join.mgps.Util.d2.h(this.A.getSurplus() + "")) {
            parseInt = 0;
        } else {
            parseInt = Integer.parseInt(this.A.getSurplus() + "");
        }
        this.f34471n.setText(string);
        if (this.A.getIs_used().booleanValue()) {
            this.f34472o.setText(this.A.getGift_cdk());
            this.f34474q.setBackgroundResource(R.drawable.receive_orange);
            this.f34474q.setText("复制");
            this.f34474q.setOnClickListener(new d());
        } else if (parseInt < 1) {
            this.f34464g.setVisibility(8);
            this.f34466i.setVisibility(0);
        } else {
            this.f34472o.setText(getString(R.string.receive_cdk_tip));
            this.f34474q.setBackgroundResource(R.drawable.receive_orange);
            this.f34474q.setText("领取");
            this.f34474q.setOnClickListener(new e());
        }
    }

    void V0() {
        this.f34465h.setVisibility(0);
        this.f34475r.setText(getString(R.string.receive_cdk_button2));
        this.f34475r.setOnClickListener(new f());
    }

    void W0() {
        this.f34465h.setVisibility(0);
        this.f34473p.setVisibility(0);
        this.f34475r.setText(getString(R.string.receive_cdk_button3));
        this.f34475r.setOnClickListener(new g());
    }

    void X0() {
        this.f34465h.setVisibility(0);
        this.f34473p.setVisibility(0);
        this.f34475r.setText(getString(R.string.receive_cdk_button4));
        this.f34475r.setOnClickListener(new h());
    }

    void Y0() {
        OemBean.OemDetailBean oemDetailBean = this.A;
        if (oemDetailBean != null && oemDetailBean.getIs_used().booleanValue()) {
            Intent intent = new Intent();
            intent.putExtra("receivedOemDetail", JsonMapper.getInstance().toJson(this.A));
            setResult(1, intent);
        }
    }

    @UiThread
    void Z0() {
        com.join.mgps.customview.t tVar = this.F;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.F = com.join.mgps.Util.a0.c0(this).Z(this);
        }
        this.F.show();
    }

    void a1(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        K0();
        L0();
        I0();
        this.f34482y = com.join.mgps.rpc.impl.l.c();
        this.f34463f.m();
        O0();
    }

    @UiThread
    void b1() {
        com.join.mgps.customview.t tVar = this.G;
        if (tVar != null) {
            if (tVar.isShowing()) {
                return;
            }
        } else {
            this.G = com.join.mgps.Util.a0.c0(this).b0(this);
        }
        this.G.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        Y0();
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        H0();
        G0();
        super.onDestroy();
    }

    void showToast(String str) {
        Message obtainMessage = this.D.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = str;
        obtainMessage.sendToTarget();
    }
}
