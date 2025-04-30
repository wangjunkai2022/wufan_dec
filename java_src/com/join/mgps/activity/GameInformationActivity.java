package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.FullScreenActivity;
import com.join.mgps.adapter.FullScreenActivity_;
import com.join.mgps.adapter.GameCommentAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ObservableWebView;
import com.join.mgps.customview.SmartScrollView;
import com.join.mgps.customview.WrapContentListView;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ShareBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Where;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.game_information_layout)
/* loaded from: classes.dex */
public class GameInformationActivity extends BaseActivity {
    @ViewById
    LinearLayout A;
    private AccountBean A0;
    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView B;
    private SimpleDraweeView B0;
    @Extra
    String C;
    @Extra
    String D;
    @Extra
    ExtBean E;
    private GameCommentAdapter E0;
    @Extra
    boolean F;
    private List<GameCommentAdapter.l> F0;
    private List<InformationCommentBean> G0;
    private boolean H;
    private WrapContentListView H0;
    private GameInformationBean I;
    private DownloadTask J;
    @ViewById
    TextView K;

    /* renamed from: a  reason: collision with root package name */
    com.join.mgps.rpc.d f31322a;
    @StringRes(resName = "net_excption")

    /* renamed from: b  reason: collision with root package name */
    String f31323b;
    @StringRes(resName = "connect_server_excption")

    /* renamed from: c  reason: collision with root package name */
    String f31324c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    TextView f31325d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    SmartScrollView f31326e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    ObservableWebView f31327f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    RelativeLayout f31328g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    RelativeLayout f31329h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    RelativeLayout f31330i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    LinearLayout f31331j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    LinearLayout f31332k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    SimpleDraweeView f31333l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    SimpleDraweeView f31334m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f31335n;
    @ViewById

    /* renamed from: n0  reason: collision with root package name */
    TextView f31336n0;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    TextView f31337o;
    @ViewById

    /* renamed from: o0  reason: collision with root package name */
    TextView f31338o0;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    TextView f31339p;
    @ViewById

    /* renamed from: p0  reason: collision with root package name */
    TextView f31340p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    TextView f31341q;
    @ViewById

    /* renamed from: q0  reason: collision with root package name */
    TextView f31342q0;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f31343r;
    @ViewById

    /* renamed from: r0  reason: collision with root package name */
    LinearLayout f31344r0;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    TextView f31345s;
    @ViewById

    /* renamed from: s0  reason: collision with root package name */
    LinearLayout f31346s0;
    @ViewById

    /* renamed from: t  reason: collision with root package name */
    Button f31347t;
    @ViewById

    /* renamed from: t0  reason: collision with root package name */
    LinearLayout f31348t0;
    @ViewById

    /* renamed from: u  reason: collision with root package name */
    TextView f31349u;
    @ViewById

    /* renamed from: u0  reason: collision with root package name */
    TextView f31350u0;
    @ViewById

    /* renamed from: v  reason: collision with root package name */
    TextView f31351v;

    /* renamed from: v0  reason: collision with root package name */
    private Context f31352v0;
    @ViewById

    /* renamed from: w  reason: collision with root package name */
    TextView f31353w;

    /* renamed from: w0  reason: collision with root package name */
    private DetailResultBean f31354w0;
    @ViewById

    /* renamed from: x  reason: collision with root package name */
    Button f31355x;

    /* renamed from: x0  reason: collision with root package name */
    private long f31356x0;
    @ViewById

    /* renamed from: y  reason: collision with root package name */
    ImageView f31357y;
    @ViewById

    /* renamed from: z  reason: collision with root package name */
    ImageView f31359z;

    /* renamed from: z0  reason: collision with root package name */
    private int f31360z0;
    private String G = "";

    /* renamed from: y0  reason: collision with root package name */
    private Handler f31358y0 = new Handler();
    Map<String, DownloadTask> C0 = new HashMap();
    Map<String, DownloadTask> D0 = new HashMap();
    com.join.mgps.customview.t I0 = null;

    /* loaded from: classes3.dex */
    class a implements SmartScrollView.a {
        a() {
        }

        @Override // com.join.mgps.customview.SmartScrollView.a
        public void a() {
            GameInformationActivity.this.e1();
        }

        @Override // com.join.mgps.customview.SmartScrollView.a
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements GameCommentAdapter.j {
        b() {
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void a(InformationCommentBean informationCommentBean) {
            if (informationCommentBean.isHasPraised()) {
                com.join.mgps.Util.i2.a(GameInformationActivity.this.f31352v0).b("你已赞过");
            } else {
                GameInformationActivity.this.W0(informationCommentBean, null, null);
            }
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void b(InformationCommentBean.Sub sub) {
            InformationCommentBean informationCommentBean = new InformationCommentBean();
            informationCommentBean.setComment_id(sub.getComment_id());
            informationCommentBean.setUser_id(sub.getUser_id());
            informationCommentBean.setUser_name(sub.getUser_name());
            GameInformationCommentActivity_.n1(GameInformationActivity.this.f31352v0).b(GameInformationActivity.this.C).a(informationCommentBean).start();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void c(InformationCommentBean informationCommentBean) {
            GameInformationCommentActivity_.n1(GameInformationActivity.this.f31352v0).b(GameInformationActivity.this.C).a(informationCommentBean).start();
        }

        @Override // com.join.mgps.adapter.GameCommentAdapter.j
        public void d() {
            GameInformationActivity.this.e1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GameInformationCommentActivity_.n1(GameInformationActivity.this.f31352v0).b(GameInformationActivity.this.C).start();
            }
        }

        /* loaded from: classes3.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f31365a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f31366b;

            b(String str, String str2) {
                this.f31365a = str;
                this.f31366b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                FullScreenActivity.VideoInfo videoInfo = new FullScreenActivity.VideoInfo();
                videoInfo.n(this.f31365a);
                videoInfo.h(this.f31366b);
                FullScreenActivity_.G0(GameInformationActivity.this.f31352v0).a(videoInfo).start();
            }
        }

        /* renamed from: com.join.mgps.activity.GameInformationActivity$c$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0147c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f31368a;

            RunnableC0147c(String str) {
                this.f31368a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().intentActivity(GameInformationActivity.this, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f31368a, IntentDateBean.class));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        c() {
        }

        @JavascriptInterface
        public void intentCommentList() {
            GameInformationActivity.this.f31358y0.post(new a());
        }

        @JavascriptInterface
        public void playVideo(String str, String str2) {
            GameInformationActivity.this.f31358y0.post(new b(str, str2));
        }

        @JavascriptInterface
        public void startIntent(String str) {
            GameInformationActivity.this.f31358y0.post(new RunnableC0147c(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends WebViewClient {
        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            GameInformationActivity.this.f31344r0.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            new IntentDateBean();
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivity gameInformationActivity = GameInformationActivity.this;
            intentUtil.goGameDetialActivity(gameInformationActivity, gameInformationActivity.f31354w0.getCrc_sign_id(), GameInformationActivity.this.f31354w0.getGame_info_tpl_type(), GameInformationActivity.this.f31354w0.getSp_tpl_two_position(), 116);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivity gameInformationActivity = GameInformationActivity.this;
            intentUtil.goGameDetialActivity(gameInformationActivity, gameInformationActivity.f31354w0.getCrc_sign_id(), GameInformationActivity.this.f31354w0.getGame_info_tpl_type(), GameInformationActivity.this.f31354w0.getSp_tpl_two_position(), 116);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            GameInformationActivity gameInformationActivity = GameInformationActivity.this;
            intentUtil.goGameDetialActivity(gameInformationActivity, gameInformationActivity.f31354w0.getCrc_sign_id(), GameInformationActivity.this.f31354w0.getGame_info_tpl_type(), GameInformationActivity.this.f31354w0.getSp_tpl_two_position(), 116);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.n1(GameInformationActivity.this.f31352v0).b(GameInformationActivity.this.C).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (IntentUtil.getInstance().goLoginInteractive(GameInformationActivity.this.f31352v0)) {
                return;
            }
            GameInformationCommentActivity_.n1(GameInformationActivity.this.f31352v0).b(GameInformationActivity.this.C).start();
        }
    }

    private void N0() {
        com.join.mgps.customview.t tVar = this.I0;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.I0.dismiss();
    }

    private void P0() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(536870912);
            startActivity(intent);
        }
        finish();
    }

    private void X0(ListView listView) {
        ListAdapter adapter;
        int i2;
        if (listView == null || (adapter = listView.getAdapter()) == null) {
            return;
        }
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < adapter.getCount(); i6++) {
            View childAt = this.H0.getChildAt(i6);
            if (childAt != null) {
                i2 = childAt.getHeight();
                if (i2 > i5) {
                    i5 = i2;
                }
            } else {
                i2 = 0;
            }
            if (i2 == 0) {
                View view = adapter.getView(i6, null, listView);
                view.measure(0, 0);
                i2 = view.getMeasuredHeight();
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append("");
            }
            i4 += i2;
        }
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = i4 + (listView.getDividerHeight() * (adapter.getCount() - 1));
        listView.setLayoutParams(layoutParams);
    }

    private AccountBean accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private void c1() {
        DownloadTask downloadTask = this.J;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        String plugin_num = this.J.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            this.f31355x.setBackgroundResource(R.drawable.download_blue_butn);
            this.f31355x.setText("打开");
        } else if (UtilsMy.m0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.f31355x.setBackgroundResource(R.drawable.download_green_butn);
                this.f31355x.setText("安装中");
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        this.f31355x.setBackgroundResource(R.drawable.download_maincolor_butn);
                        Button button = this.f31355x;
                        button.setText(button.getResources().getString(R.string.download_status_finished));
                        return;
                    } else if (status != 6) {
                        if (status != 7) {
                            switch (status) {
                                case 9:
                                    this.f31355x.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31355x.setText("更新");
                                    return;
                                case 10:
                                    this.f31355x.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31355x.setText("等待");
                                    return;
                                case 11:
                                    this.f31355x.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31355x.setText("安装");
                                    return;
                                case 12:
                                    this.f31355x.setBackgroundResource(R.drawable.download_grey_butn);
                                    this.f31355x.setText("解压中");
                                    return;
                                case 13:
                                    this.f31355x.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31355x.setText("解压");
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                }
                this.f31355x.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31355x.setText("继续");
                return;
            } else {
                this.f31355x.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31355x.setText("暂停");
                return;
            }
        }
        this.f31355x.setBackgroundResource(R.drawable.download_green_butn);
        if (UtilsMy.m0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            this.f31355x.setText(this.f31352v0.getResources().getString(R.string.pay_game_amount, this.f31354w0.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f31355x.setText(this.f31352v0.getResources().getString(R.string.download_status_download));
        }
        DetailResultBean detailResultBean = this.f31354w0;
        if (detailResultBean != null) {
            UtilsMy.m0(detailResultBean.getPay_tag_info(), this.f31354w0.getCrc_sign_id());
            UtilsMy.F2(this.f31355x, this.f31354w0);
        }
    }

    private void d1() {
        DownloadTask downloadTask = this.J;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        String plugin_num = this.J.getPlugin_num();
        if (plugin_num.equals(ConstantIntEnum.H5.value() + "")) {
            this.f31355x.setBackgroundResource(R.drawable.download_blue_butn);
            this.f31355x.setText("打开");
        } else if (UtilsMy.m0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status == 48) {
                this.f31347t.setBackgroundResource(R.drawable.download_green_butn);
                this.f31347t.setText("安装中");
                return;
            } else if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        this.f31347t.setBackgroundResource(R.drawable.download_maincolor_butn);
                        Button button = this.f31347t;
                        button.setText(button.getResources().getString(R.string.download_status_finished));
                        return;
                    } else if (status != 6) {
                        if (status != 7) {
                            switch (status) {
                                case 9:
                                    this.f31347t.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31347t.setText("更新");
                                    return;
                                case 10:
                                    this.f31347t.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31347t.setText("等待");
                                    return;
                                case 11:
                                    this.f31347t.setBackgroundResource(R.drawable.download_green_butn);
                                    this.f31347t.setText("安装");
                                    return;
                                case 12:
                                    this.f31347t.setBackgroundResource(R.drawable.download_grey_butn);
                                    this.f31347t.setText("解压中");
                                    return;
                                case 13:
                                    this.f31347t.setBackgroundResource(R.drawable.download_blue_butn);
                                    this.f31347t.setText("解压");
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                }
                this.f31347t.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31347t.setText("继续");
                return;
            } else {
                this.f31347t.setBackgroundResource(R.drawable.download_blue_butn);
                this.f31347t.setText("暂停");
                return;
            }
        }
        this.f31347t.setBackgroundResource(R.drawable.download_green_butn);
        if (T0(this.f31354w0) && !n1.e0.o().p(this.f31354w0.getCrc_sign_id())) {
            this.f31347t.setText(this.f31352v0.getResources().getString(R.string.pay_game_amount, this.f31354w0.getPay_tag_info().getPayGameAmount()));
        } else {
            this.f31347t.setText(this.f31352v0.getResources().getString(R.string.download_status_download));
        }
        DetailResultBean detailResultBean = this.f31354w0;
        if (detailResultBean != null) {
            UtilsMy.m0(detailResultBean.getPay_tag_info(), this.f31354w0.getCrc_sign_id());
            UtilsMy.F2(this.f31347t, this.f31354w0);
        }
    }

    private void f1(InformationCommentBean informationCommentBean) {
        GameInformationBean gameInformationBean = this.I;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            Q0(this.C);
        }
        if (this.G0 == null || informationCommentBean == null) {
            return;
        }
        boolean z3 = false;
        for (int i2 = 0; i2 < this.G0.size(); i2++) {
            InformationCommentBean informationCommentBean2 = this.G0.get(i2);
            if (informationCommentBean.getComment_id().equals(informationCommentBean2.getComment_id())) {
                if (informationCommentBean.isHasPraised() != informationCommentBean2.isHasPraised()) {
                    informationCommentBean2.setHasPraised(informationCommentBean.isHasPraised());
                    z3 |= true;
                }
                if (!informationCommentBean.getPraise_count().equals(informationCommentBean2.getPraise_count())) {
                    informationCommentBean2.setPraise_count(informationCommentBean.getPraise_count());
                    z3 |= true;
                }
                if (z3) {
                    break;
                }
            }
        }
        if (z3) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.G0);
            Z0(arrayList);
        }
    }

    private boolean isLogined(Context context) {
        AccountBean accountBean = accountBean(context);
        return accountBean != null && com.join.mgps.Util.d2.i(accountBean.getToken());
    }

    void H0(List<InformationCommentBean> list) {
        for (int i2 = 0; list != null && i2 < list.size(); i2++) {
            InformationCommentBean informationCommentBean = list.get(i2);
            this.F0.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.COMMENT, new GameCommentAdapter.l.a(informationCommentBean)));
            List<InformationCommentBean.Sub> sub = informationCommentBean.getSub();
            if (sub != null && sub.size() > 0) {
                this.F0.add(new GameCommentAdapter.l(GameCommentAdapter.ViewType.REPLY, new GameCommentAdapter.l.b(informationCommentBean.getComment_id(), informationCommentBean, 0, true)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void I0() {
        if (this.f31354w0 == null) {
            return;
        }
        IntentUtil.getInstance().goGameDetialActivity(this, this.f31354w0.getCrc_sign_id(), this.f31354w0.getGame_info_tpl_type(), this.f31354w0.getSp_tpl_two_position(), 116);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        P0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void K0() {
        DownloadTask downloadTask = this.J;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.k(this, this.J);
                return;
            } else if (status != 43) {
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(this.f31352v0, this.J);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.f.j(this.f31352v0)) {
                                            com.join.mgps.Util.i2.a(this.f31352v0).b("无网络连接");
                                            return;
                                        }
                                        int downloadType = this.J.getDownloadType();
                                        if (downloadType != 0 && downloadType != 1) {
                                            if (downloadType != 2) {
                                                return;
                                            }
                                            UtilsMy.z3(this.J);
                                            return;
                                        } else if (this.J.getCrc_link_type_val() == null || this.J.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            DownloadTask B = g1.f.G().B(this.J.getCrc_link_type_val());
                                            if (UtilsMy.T0(this.f31352v0, this.J)) {
                                                return;
                                            }
                                            if (this.f31354w0.getDown_status() == 5) {
                                                UtilsMy.R0(this, this.J);
                                                return;
                                            }
                                            if (B != null) {
                                                this.J.setId(B.getId());
                                                com.php25.PDownload.d.b(B);
                                            }
                                            this.J.setExt1(this.C);
                                            com.php25.PDownload.d.c(this.J, this.f31352v0);
                                            return;
                                        }
                                    case 10:
                                        break;
                                    case 11:
                                        UtilsMy.j3(this.J, this.f31352v0);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.J, this.f31352v0);
                    return;
                }
                com.php25.PDownload.d.h(this.J);
                return;
            }
        }
        this.J.setKeyword(Where.article.name());
        this.J.setExt1(this.C);
        if (UtilsMy.o0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            UtilsMy.m3(this.f31352v0, this.f31354w0.getCrc_sign_id());
        } else {
            UtilsMy.d1(this.J, this.f31354w0);
            if (!UtilsMy.T0(this.f31352v0, this.J)) {
                if (this.f31354w0.getDown_status() == 5) {
                    UtilsMy.R0(this.f31352v0, this.J);
                } else {
                    UtilsMy.F0(this.f31352v0, this.J, this.f31354w0.getTp_down_url(), this.f31354w0.getOther_down_switch(), this.f31354w0.getCdn_down_switch());
                }
            }
        }
        com.papa.sim.statistic.p.l(this.f31352v0).A(this.C, AccountUtil_.getInstance_(this.f31352v0).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void L0() {
        GameInformationCommentActivity_.n1(this.f31352v0).b(this.C).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 2000)
    public void M0() {
        this.f31327f.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void O0() {
        DownloadTask downloadTask = this.J;
        if (downloadTask == null) {
            return;
        }
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.m0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            status = 43;
        }
        if (status != 0) {
            if (status == 13) {
                com.php25.PDownload.d.k(this, this.J);
                return;
            } else if (status != 43) {
                if (status != 2) {
                    if (status != 3) {
                        if (status == 5) {
                            UtilsMy.c3(this.f31352v0, this.J);
                            return;
                        } else if (status != 6) {
                            if (status != 7) {
                                switch (status) {
                                    case 9:
                                        if (!com.join.android.app.common.utils.f.j(this.f31352v0)) {
                                            com.join.mgps.Util.i2.a(this.f31352v0).b("无网络连接");
                                            return;
                                        }
                                        int downloadType = this.J.getDownloadType();
                                        if (downloadType != 0 && downloadType != 1) {
                                            if (downloadType != 2) {
                                                return;
                                            }
                                            UtilsMy.z3(this.J);
                                            return;
                                        } else if (this.J.getCrc_link_type_val() == null || this.J.getCrc_link_type_val().equals("")) {
                                            return;
                                        } else {
                                            DownloadTask B = g1.f.G().B(this.J.getCrc_link_type_val());
                                            if (UtilsMy.T0(this.f31352v0, this.J)) {
                                                return;
                                            }
                                            if (this.f31354w0.getDown_status() == 5) {
                                                UtilsMy.R0(this, this.J);
                                                return;
                                            }
                                            if (B != null) {
                                                this.J.setId(B.getId());
                                                com.php25.PDownload.d.b(B);
                                            }
                                            this.J.setExt1(this.C);
                                            com.php25.PDownload.d.c(this.J, this.f31352v0);
                                            return;
                                        }
                                    case 10:
                                        break;
                                    case 11:
                                        UtilsMy.j3(this.J, this.f31352v0);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                    com.php25.PDownload.d.c(this.J, this.f31352v0);
                    return;
                }
                com.php25.PDownload.d.h(this.J);
                return;
            }
        }
        this.J.setKeyword(Where.article.name());
        this.J.setExt1(this.C);
        if (UtilsMy.o0(this.f31354w0.getPay_tag_info(), this.f31354w0.getCrc_sign_id()) > 0) {
            UtilsMy.m3(this.f31352v0, this.f31354w0.getCrc_sign_id());
        } else {
            UtilsMy.d1(this.J, this.f31354w0);
            if (!UtilsMy.T0(this.f31352v0, this.J)) {
                if (this.f31354w0.getDown_status() == 5) {
                    UtilsMy.R0(this.f31352v0, this.J);
                } else {
                    UtilsMy.F0(this.f31352v0, this.J, this.f31354w0.getTp_down_url(), this.f31354w0.getOther_down_switch(), this.f31354w0.getCdn_down_switch());
                }
            }
        }
        com.papa.sim.statistic.p.l(this.f31352v0).A(this.C, AccountUtil_.getInstance_(this.f31352v0).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Q0(String str) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                GameInformationCommentRequest gameInformationCommentRequest = new GameInformationCommentRequest();
                gameInformationCommentRequest.setComment_type(new int[]{1});
                gameInformationCommentRequest.setInformation_id(str);
                gameInformationCommentRequest.setPn(1);
                gameInformationCommentRequest.setPc(20);
                AccountBean accountBean = this.A0;
                if (accountBean != null) {
                    gameInformationCommentRequest.setUid(accountBean.getUid());
                }
                ResultMainBean<InformationCommentBack> k02 = this.f31322a.k0(RequestBeanUtil.getInstance(this).getGameInformationComment(gameInformationCommentRequest));
                if (k02 != null && k02.getFlag() == 1) {
                    InformationCommentBack data = k02.getMessages().getData();
                    if (data == null) {
                        U0();
                        return;
                    }
                    List<InformationCommentBean> hot = data.getHot();
                    if (hot == null) {
                        U0();
                        return;
                    } else if (hot.size() > 0) {
                        Z0(hot);
                        return;
                    } else {
                        U0();
                        return;
                    }
                }
                U0();
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                U0();
                return;
            }
        }
        U0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R0() {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                ResultMainBean<List<GameInformationBean>> O = this.f31322a.O(RequestBeanUtil.getInstance(this).getgameInformation(this.C, this.E));
                if (O != null && O.getFlag() == 1) {
                    List<GameInformationBean> data = O.getMessages().getData();
                    if (data.size() > 0) {
                        a1(data.get(0));
                    } else {
                        showLodingFailed();
                    }
                } else {
                    showLodingFailed();
                }
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void S0() {
        if (this.I != null && System.currentTimeMillis() - this.f31356x0 > 2000) {
            this.f31356x0 = System.currentTimeMillis();
            ShareBean shareBean = new ShareBean();
            shareBean.setTitle(this.I.getTitle());
            shareBean.setText("点击查看详情");
            shareBean.setImageUrl(this.I.getShow_pic());
            shareBean.setQqUrl(this.I.getShare_url());
            shareBean.setqZoneShareUrl(this.I.getShare_url());
            shareBean.setWeiboShareUrl(this.I.getShare_url());
            shareBean.setWechatFriendUrl(this.I.getShare_url());
            shareBean.setWechatShareUrl(this.I.getShare_url());
            shareBean.setFrom(3);
            shareBean.setGameId(this.C);
            com.join.mgps.Util.r.r(this, shareBean);
        }
    }

    boolean T0(DetailResultBean detailResultBean) {
        return (detailResultBean == null || detailResultBean.getPay_tag_info() == null || detailResultBean.getPay_tag_info().getPay_game_amount() <= 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void U0() {
        this.A.addView(LayoutInflater.from(this.f31352v0).inflate(R.layout.information_footer, (ViewGroup) null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.F, f1.a.H})
    public void V0(@Receiver.Extra("gameData") CollectionBeanSub collectionBeanSub) {
        if (collectionBeanSub != null) {
            PurchasedListTable n4 = n1.e0.o().n(collectionBeanSub.getGame_id());
            if (n4 == null) {
                n4 = new PurchasedListTable();
            }
            n4.setGame_id(collectionBeanSub.getGame_id());
            n1.e0.o().m(n4);
        }
        c1();
        d1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void W0(InformationCommentBean informationCommentBean, ImageView imageView, TextView textView) {
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    return;
                }
                PariseRequest pariseRequest = new PariseRequest();
                pariseRequest.setInformation_id(this.C);
                pariseRequest.setComment_id(informationCommentBean.getComment_id());
                pariseRequest.setUid(this.A0.getUid());
                ResultMainBean<List<PariseBackData>> p02 = this.f31322a.p0(RequestBeanUtil.getInstance(this).getGameInformationParis(pariseRequest));
                if (p02 != null && p02.getCode() == 706) {
                    showMessage("完善资料后就可点赞哦");
                    IntentUtil.getInstance().goLoginInteractive(this);
                    return;
                } else if (p02 != null && p02.getFlag() == 1) {
                    List<PariseBackData> data = p02.getMessages().getData();
                    if (data.size() > 0) {
                        if (data.get(0).isVal()) {
                            informationCommentBean.setHasPraised(true);
                            int parseInt = Integer.parseInt(informationCommentBean.getPraise_count());
                            informationCommentBean.setPraise_count((parseInt + 1) + "");
                            informationCommentBean.setHasPraised(true);
                            f1(informationCommentBean);
                            return;
                        }
                        showToast("你已赞过");
                        informationCommentBean.setHasPraised(true);
                        f1(informationCommentBean);
                        return;
                    }
                    showToast("你已赞过");
                    informationCommentBean.setHasPraised(true);
                    f1(informationCommentBean);
                    return;
                } else {
                    showToast("点赞失败");
                    informationCommentBean.setHasPraised(false);
                    f1(informationCommentBean);
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                showToast("点赞失败");
                informationCommentBean.setHasPraised(false);
                f1(informationCommentBean);
                return;
            }
        }
        showToast("没有网络");
        informationCommentBean.setHasPraised(false);
        f1(informationCommentBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void Y0() {
        LayoutInflater from = LayoutInflater.from(this.f31352v0);
        TextView textView = this.f31340p0;
        textView.setText(this.f31360z0 + "条");
        this.f31342q0.setOnClickListener(new h());
        View inflate = from.inflate(R.layout.game_information_edit_message, (ViewGroup) null);
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.usericonMe);
        this.B0 = simpleDraweeView;
        simpleDraweeView.setImageResource(R.drawable.unloginstatus);
        AccountBean accountBean = this.A0;
        if (accountBean != null) {
            UtilsMy.E2(this.f31352v0, accountBean.getAvatarSrc(), this.B0);
        }
        this.A.addView(inflate);
        ((TextView) inflate.findViewById(R.id.message)).setOnClickListener(new i());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void Z0(List<InformationCommentBean> list) {
        ArrayList arrayList = new ArrayList();
        this.G0 = arrayList;
        arrayList.addAll(list);
        if (this.H0 == null) {
            this.F0 = new ArrayList();
            this.H0 = new WrapContentListView(this);
            GameCommentAdapter gameCommentAdapter = new GameCommentAdapter(this.f31352v0, this.F0, new b());
            this.E0 = gameCommentAdapter;
            this.H0.setAdapter((ListAdapter) gameCommentAdapter);
            this.H0.setDivider(getResources().getDrawable(R.drawable.transparent_bg));
            this.H0.setLayoutParams(new ViewGroup.LayoutParams(-1, (com.join.android.app.common.utils.j.n(this.f31352v0).k(this) - this.f31346s0.getHeight()) - this.f31330i.getHeight()));
            this.A.addView(this.H0);
            this.A.addView(LayoutInflater.from(this.f31352v0).inflate(R.layout.game_detail_header, (ViewGroup) null));
        }
        this.F0.clear();
        H0(list);
        this.E0.notifyDataSetChanged();
        e1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a1(GameInformationBean gameInformationBean) {
        this.f31357y.setVisibility(0);
        if (gameInformationBean.getComment_switch() == 1) {
            this.f31359z.setVisibility(0);
            int comment_count = gameInformationBean.getComment_count();
            this.f31360z0 = comment_count;
            if (comment_count > 0) {
                this.f31350u0.setVisibility(0);
            }
            TextView textView = this.f31350u0;
            textView.setText(gameInformationBean.getComment_count() + "");
        } else {
            this.f31359z.setVisibility(8);
            this.f31350u0.setVisibility(8);
        }
        this.f31348t0.setVisibility(0);
        this.f31332k.setVisibility(8);
        this.f31331j.setVisibility(8);
        this.f31326e.setVisibility(0);
        this.f31346s0.setVisibility(0);
        this.K.setText(gameInformationBean.getTitle());
        TextView textView2 = this.f31336n0;
        textView2.setText("作者:" + gameInformationBean.getAuthor());
        this.f31338o0.setText(gameInformationBean.getRelease_time());
        this.f31327f.setBackgroundColor(-1);
        this.f31327f.getSettings().setJavaScriptEnabled(true);
        this.f31327f.getSettings().setDomStorageEnabled(true);
        this.f31327f.setWebChromeClient(new WebChromeClient());
        this.f31327f.addJavascriptInterface(new c(), "papa");
        this.f31327f.loadDataWithBaseURL("about:blank", gameInformationBean.getContent(), "text/html", "utf-8", null);
        this.f31327f.setWebViewClient(new d());
        this.I = gameInformationBean;
        this.f31327f.setBackgroundColor(-1);
        if (gameInformationBean.getComment_switch() == 1) {
            Y0();
            Q0(this.C);
        }
        List<DetailResultBean> game_info = gameInformationBean.getGame_info();
        if (game_info != null && game_info.size() != 0) {
            DetailResultBean detailResultBean = game_info.get(0);
            this.f31354w0 = detailResultBean;
            detailResultBean.set_from(106);
            UtilsMy.w2(this.f31354w0.getSp_tag_info(), this.f31351v);
            UtilsMy.w2(this.f31354w0.getSp_tag_info(), this.f31353w);
            String crc_sign_id = this.f31354w0.getCrc_sign_id();
            this.G = crc_sign_id;
            if (crc_sign_id == null) {
                return;
            }
            DownloadTask B = g1.f.G().B(this.f31354w0.getCrc_sign_id());
            this.J = B;
            if (B == null) {
                this.J = this.f31354w0.getDownloadtaskDown();
                if (UtilsMy.e0(this.f31354w0.getTag_info())) {
                    this.J.setFileType(Dtype.android.name());
                    if (com.join.android.app.common.utils.a.g0(this).c(this, this.f31354w0.getPackage_name())) {
                        APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this).k(this, this.f31354w0.getPackage_name());
                        if (com.join.mgps.Util.d2.i(this.f31354w0.getVer()) && k4.d() < Integer.parseInt(this.f31354w0.getVer())) {
                            this.J.setStatus(9);
                        } else {
                            this.J.setStatus(5);
                        }
                    } else {
                        this.J.setStatus(0);
                    }
                } else {
                    this.J.setFileType(Dtype.apk.name());
                    this.J.setStatus(0);
                }
            } else {
                B.setCfg_ver(this.f31354w0.getCfg_ver());
                this.J.setCfg_ver_name(this.f31354w0.getCfg_ver_name());
                this.J.setCfg_down_url(this.f31354w0.getCfg_down_url());
                this.J.setDownloadType(this.f31354w0.getDownloadType());
                this.J.setScreenshot_pic(this.f31354w0.getScreenshot_pic());
            }
            c1();
            d1();
            MyImageLoader.h(this.f31333l, this.f31354w0.getIco_remote());
            this.f31337o.setText(this.f31354w0.getGame_name());
            TextView textView3 = this.f31349u;
            textView3.setText("大小：" + this.f31354w0.getSize() + "M");
            if (this.f31354w0 == null) {
                this.f31328g.setVisibility(8);
                this.f31329h.setVisibility(8);
                return;
            }
            this.f31328g.setVisibility(0);
            this.f31329h.setVisibility(0);
            if (this.F) {
                O0();
            }
            this.f31339p.setText(this.f31354w0.getGame_name());
            MyImageLoader.h(this.f31334m, this.f31354w0.getIco_remote());
            this.f31334m.setOnClickListener(new e());
            this.f31335n.setOnClickListener(new f());
            this.f31346s0.setOnClickListener(new g());
            TextView textView4 = this.f31341q;
            textView4.setText(com.join.mgps.Util.d2.b(this.f31354w0.getDown_count()) + "热度");
            TextView textView5 = this.f31343r;
            textView5.setText(net.lingala.zip4j.util.e.F0 + this.f31354w0.getSize() + "M");
            this.f31345s.setText(this.f31354w0.getInfo());
            return;
        }
        this.f31328g.setVisibility(8);
        this.f31329h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        this.f31322a = com.join.mgps.rpc.impl.c.P1();
        com.join.mgps.Util.c0.a().d(this);
        this.f31352v0 = this;
        this.f31325d.setText("详情");
        getDownloadTaskInfo();
        this.B.setVisibility(0);
        showLoding();
        this.f31344r0.setVisibility(8);
        R0();
        this.f31326e.setScanScrollChangedListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
        if (r4 != 11) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask r3, int r4) {
        /*
            r2 = this;
            if (r3 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r3.getCrc_link_type_val()
            r1 = 2
            if (r4 == r1) goto L8d
            r1 = 3
            if (r4 == r1) goto L7f
            r1 = 5
            if (r4 == r1) goto L64
            r1 = 6
            if (r4 == r1) goto L56
            r1 = 7
            if (r4 == r1) goto L3b
            r1 = 10
            if (r4 == r1) goto L20
            r3 = 11
            if (r4 == r3) goto L71
            goto La7
        L20:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L2d
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            r4.put(r0, r3)
        L2d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            r4.put(r0, r3)
            goto La7
        L3b:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L48
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            r3.remove(r0)
        L48:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L56:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L64:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto L71
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.C0
            r3.remove(r0)
        L71:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L7f:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            boolean r3 = r3.containsKey(r0)
            if (r3 == 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r3 = r2.D0
            r3.remove(r0)
            goto La7
        L8d:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto L9a
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.C0
            r4.put(r0, r3)
        L9a:
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            boolean r4 = r4.containsKey(r0)
            if (r4 != 0) goto La7
            java.util.Map<java.lang.String, com.github.snowdream.android.app.downloader.DownloadTask> r4 = r2.D0
            r4.put(r0, r3)
        La7:
            r2.updateDownloadView()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.GameInformationActivity.changeDownloadTaskNumber(com.github.snowdream.android.app.downloader.DownloadTask, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void e1() {
        X0(this.H0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void g1(ImageView imageView, TextView textView, boolean z3, String str) {
        if (z3) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(str);
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> r3 = g1.f.G().r();
        List<DownloadTask> q3 = g1.f.G().q();
        if (q3 != null && q3.size() > 0) {
            for (DownloadTask downloadTask : q3) {
                this.C0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (r3 != null && r3.size() > 0) {
            for (DownloadTask downloadTask2 : r3) {
                this.D0.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    boolean h1() {
        if (accountBean(this.f31352v0) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        P0();
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        changeDownloadTaskNumber(this.J, lVar.c());
        if (a4 != null && this.J != null && a4.getCrc_link_type_val().equals(this.J.getCrc_link_type_val())) {
            this.J.setStatus(a4.getStatus());
            this.J.setPath(a4.getPath());
            this.J.setSize(a4.getSize());
        }
        int c4 = lVar.c();
        if ((c4 == 5 || c4 == 11 || c4 == 48) && a4 != null && this.J != null && a4.getCrc_link_type_val().equals(this.J.getCrc_link_type_val())) {
            this.J = a4;
        }
        c1();
        d1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        ObservableWebView observableWebView = this.f31327f;
        if (observableWebView != null) {
            try {
                observableWebView.getClass().getMethod("onPause", new Class[0]).invoke(this.f31327f, null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        GameInformationBean gameInformationBean = this.I;
        if (gameInformationBean != null && gameInformationBean.getComment_switch() == 1) {
            Q0(this.C);
        }
        ObservableWebView observableWebView = this.f31327f;
        if (observableWebView != null) {
            try {
                observableWebView.getClass().getMethod("onResume", new Class[0]).invoke(this.f31327f, null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        AccountBean accountData = AccountUtil_.getInstance_(this.f31352v0).getAccountData();
        this.A0 = accountData;
        if (accountData != null && this.B0 != null) {
            UtilsMy.E2(this.f31352v0, accountData.getAvatarSrc(), this.B0);
        }
        if (com.join.mgps.Util.d2.h(this.G)) {
            return;
        }
        DownloadTask B = g1.f.G().B(this.G);
        if (B != null && this.J != null) {
            if (Dtype.android.name().equals(this.J.getFileType()) && this.J.getStatus() == 5) {
                com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(this);
                String packageName = this.J.getPackageName();
                APKUtils.DEVICE_TYPE device_type = APKUtils.DEVICE_TYPE.ALL;
                if (Boolean.valueOf(g02.d(this, packageName, device_type)).booleanValue()) {
                    APKUtils.a l4 = com.join.android.app.common.utils.a.g0(this).l(this, this.J.getPackageName(), device_type);
                    if (com.join.mgps.Util.d2.i(this.J.getVer()) && l4.d() < Integer.parseInt(this.J.getVer())) {
                        this.J.setStatus(9);
                    } else {
                        this.J.setStatus(5);
                    }
                } else {
                    this.J.setStatus(11);
                }
            } else {
                this.J.setStatus(B.getStatus());
            }
            c1();
            d1();
        } else if (B != null || this.J == null) {
        } else {
            if (Dtype.android.name().equals(this.J.getFileType()) && this.J.getStatus() == 5) {
                if (Boolean.valueOf(com.join.android.app.common.utils.a.g0(this).c(this, this.J.getPackageName())).booleanValue()) {
                    APKUtils.a k4 = com.join.android.app.common.utils.a.g0(this).k(this, this.J.getPackageName());
                    if (com.join.mgps.Util.d2.i(this.J.getVer()) && k4.d() < Integer.parseInt(this.J.getVer())) {
                        this.J.setStatus(9);
                    } else {
                        this.J.setStatus(5);
                    }
                } else {
                    this.J.setStatus(0);
                }
            }
            c1();
            d1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        showLoding();
        R0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.f31331j.setVisibility(0);
        this.f31332k.setVisibility(8);
        this.f31326e.setVisibility(8);
        this.f31346s0.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        this.f31332k.setVisibility(0);
        this.f31331j.setVisibility(8);
        this.f31326e.setVisibility(8);
        this.f31346s0.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String str) {
        com.join.mgps.Util.i2.a(this.f31352v0).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String str) {
        com.join.mgps.Util.i2.a(this.f31352v0).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.C0.size();
        int size2 = this.D0.size();
        this.B.setDownloadGameNum(size);
        if (size2 > 0) {
            this.B.d();
        } else {
            this.B.g();
        }
    }
}
