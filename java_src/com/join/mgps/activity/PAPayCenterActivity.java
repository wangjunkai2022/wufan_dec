package com.join.mgps.activity;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.u4;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.PapayHistoryInfo;
import com.join.mgps.dto.PapayInfo;
import com.join.mgps.dto.PapayRequest;
import com.join.mgps.dto.PapayResultData;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayAdinfo;
import com.join.mgps.listener.b;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.papapay_center_layout)
/* loaded from: classes3.dex */
public class PAPayCenterActivity extends BaseActivity implements View.OnClickListener, b.a {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    XListView f34499a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    TextView f34500b;

    /* renamed from: c  reason: collision with root package name */
    TextView f34501c;

    /* renamed from: d  reason: collision with root package name */
    TextView f34502d;

    /* renamed from: e  reason: collision with root package name */
    SimpleDraweeView f34503e;

    /* renamed from: f  reason: collision with root package name */
    Button f34504f;

    /* renamed from: g  reason: collision with root package name */
    ImageView f34505g;

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f34506h;

    /* renamed from: i  reason: collision with root package name */
    u4 f34507i;

    /* renamed from: j  reason: collision with root package name */
    Context f34508j;

    /* renamed from: k  reason: collision with root package name */
    List<PapayHistoryInfo> f34509k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    TextView f34510l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    LinearLayout f34511m;

    /* renamed from: n  reason: collision with root package name */
    TextView f34512n;
    @Extra

    /* renamed from: o  reason: collision with root package name */
    int f34513o;

    /* renamed from: p  reason: collision with root package name */
    com.join.mgps.rpc.n f34514p;

    /* renamed from: s  reason: collision with root package name */
    private AccountBean f34517s;

    /* renamed from: t  reason: collision with root package name */
    com.join.mgps.dialog.x0 f34518t;

    /* renamed from: u  reason: collision with root package name */
    private TextView f34519u;

    /* renamed from: v  reason: collision with root package name */
    private TextView f34520v;

    /* renamed from: q  reason: collision with root package name */
    int f34515q = 1;

    /* renamed from: r  reason: collision with root package name */
    private boolean f34516r = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f34521w = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (PAPayCenterActivity.this.f34516r) {
                return;
            }
            PAPayCenterActivity pAPayCenterActivity = PAPayCenterActivity.this;
            pAPayCenterActivity.I0(pAPayCenterActivity.f34517s, PAPayCenterActivity.this.f34515q);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            com.join.mgps.Util.t0.c("click position" + i2);
            int i4 = i2 + (-2);
            if (i4 < 0) {
                return;
            }
            try {
                PapayPayDetialActivity_.E0(PAPayCenterActivity.this.f34508j).a(PAPayCenterActivity.this.f34509k.get(i4)).start();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PayAdinfo f34524a;

        c(PayAdinfo payAdinfo) {
            this.f34524a = payAdinfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().intentActivity(PAPayCenterActivity.this.f34508j, this.f34524a.getLink().getIntentDataBean());
        }
    }

    private void K0() {
        AccountBean accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        this.f34517s = accountData;
        if (accountData == null) {
            IntentUtil.getInstance().goLogin(this.f34508j);
        } else if (this.f34521w) {
            this.f34521w = false;
            this.f34518t.b();
            this.f34515q = 1;
            I0(this.f34517s, 1);
        } else {
            this.f34515q = 1;
            I0(accountData, 1);
            this.f34499a.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void E0() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val("http://h5.5fun.com/wf_help_pa_money.html");
        IntentUtil.getInstance().intentActivity(this.f34508j, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void H0() {
        com.join.mgps.dialog.x0 x0Var = this.f34518t;
        if (x0Var == null || !x0Var.isShowing()) {
            return;
        }
        this.f34518t.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void I0(AccountBean accountBean, int i2) {
        PapayWalletResultMain d4;
        if (com.join.android.app.common.utils.f.j(this.f34508j)) {
            this.f34516r = true;
            try {
                try {
                    PapayRequest papayRequest = new PapayRequest();
                    papayRequest.setLimit(10);
                    papayRequest.setToken(accountBean.getToken());
                    papayRequest.setUid(accountBean.getUid());
                    papayRequest.setPage(i2);
                    if (this.f34513o == 2) {
                        d4 = this.f34514p.c(papayRequest.getParams());
                    } else {
                        d4 = this.f34514p.d(papayRequest.getParams());
                    }
                    if (d4 != null && d4.getError() == 0) {
                        L0(d4.getData(), i2);
                    } else {
                        M0();
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    M0();
                }
                return;
            } finally {
                this.f34516r = false;
                H0();
            }
        }
        H0();
        M0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void J0() {
        this.f34499a.setNoMore();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0(PapayResultData papayResultData, int i2) {
        if (papayResultData != null) {
            if (i2 == 1) {
                PapayInfo wallet = papayResultData.getWallet();
                if (this.f34513o == 2) {
                    this.f34501c.setText(wallet.getRed_envelope());
                    this.f34506h.setVisibility(8);
                } else {
                    this.f34501c.setText(wallet.getMoney());
                    this.f34506h.setVisibility(0);
                }
                this.f34509k.clear();
                PayAdinfo ad = papayResultData.getAd();
                this.f34502d.setText(ad.getTitle());
                this.f34502d.getPaint().setFlags(8);
                this.f34502d.getPaint().setAntiAlias(true);
                MyImageLoader.h(this.f34503e, ad.getIcon());
                this.f34502d.setOnClickListener(new c(ad));
                TextView textView = this.f34520v;
                textView.setText(Html.fromHtml("余额<font color = '#fd5d58'>" + wallet.getRed_envelope() + "</font>"), TextView.BufferType.SPANNABLE);
            }
            List<PapayHistoryInfo> orders = papayResultData.getOrders();
            if (orders != null && orders.size() > 0) {
                this.f34509k.addAll(orders);
                int i4 = this.f34515q;
                if (i4 == i2) {
                    this.f34515q = i4 + 1;
                }
                M0();
                if (orders.size() < 10) {
                    J0();
                }
                this.f34511m.setVisibility(8);
            } else {
                if (i2 == 1) {
                    this.f34511m.setVisibility(0);
                } else {
                    this.f34511m.setVisibility(8);
                }
                J0();
            }
            this.f34507i.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void M0() {
        this.f34499a.q();
        this.f34499a.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f34514p = com.join.mgps.rpc.impl.m.h();
        this.f34508j = this;
        com.join.mgps.dialog.x0 x3 = com.join.mgps.Util.a0.c0(this).x(this.f34508j);
        this.f34518t = x3;
        x3.setCancelable(true);
        View inflate = LayoutInflater.from(this.f34508j).inflate(R.layout.papapayhead, (ViewGroup) null);
        this.f34501c = (TextView) inflate.findViewById(R.id.pabiNumber);
        this.f34502d = (TextView) inflate.findViewById(R.id.message);
        this.f34503e = (SimpleDraweeView) inflate.findViewById(R.id.papaPayIcon);
        this.f34519u = (TextView) inflate.findViewById(R.id.name);
        this.f34512n = (TextView) inflate.findViewById(R.id.listHead);
        this.f34504f = (Button) inflate.findViewById(R.id.payStart);
        this.f34505g = (ImageView) inflate.findViewById(R.id.more);
        this.f34520v = (TextView) inflate.findViewById(R.id.payRedNumber);
        this.f34506h = (LinearLayout) inflate.findViewById(R.id.hongbaoLayout);
        if (this.f34513o == 2) {
            this.f34500b.setText("悟饭红包");
            this.f34504f.setVisibility(8);
            this.f34512n.setText("红包交易记录");
            this.f34519u.setText("余额(红包)");
        } else {
            this.f34500b.setText("我的饭票");
        }
        this.f34506h.setVisibility(8);
        u4 u4Var = new u4(this.f34508j);
        this.f34507i = u4Var;
        this.f34509k = u4Var.a();
        this.f34499a.addHeaderView(inflate);
        this.f34499a.setAdapter((ListAdapter) this.f34507i);
        this.f34504f.setOnClickListener(this);
        this.f34505g.setOnClickListener(this);
        this.f34506h.setOnClickListener(this);
        this.f34499a.setPreLoadCount(10);
        this.f34499a.setPullLoadEnable(new a());
        this.f34499a.c();
        this.f34499a.setOnItemClickListener(new b());
        com.join.mgps.listener.b.b().a(this);
        K0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void back_image() {
        finish();
    }

    @Override // com.join.mgps.listener.b.a
    public void j() {
        K0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.hongbaoLayout || id == R.id.more) {
            PAPayCenterActivity_.S0(this.f34508j).a(2).start();
        } else if (id != R.id.payStart) {
        } else {
            PayStartActivity_.Y0(this).a(this.f34517s).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.listener.b.b().d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
