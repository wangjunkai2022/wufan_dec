package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.BaseFragmentActivity;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.introduction.IntroductionCommentListFragment;
import com.join.kotlin.ui.introduction.IntroductionCommentListFragment_;
import com.join.kotlin.ui.introduction.IntroductionProgressFragment;
import com.join.kotlin.ui.introduction.IntroductionProgressFragment_;
import com.join.kotlin.ui.introduction.MoreIntroductionFragment;
import com.join.kotlin.ui.introduction.MoreIntroductionFragment_;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.NestedScrollWebView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.IntroductionCommentDetailParamsBean;
import com.join.mgps.dto.RequestBbsDetailArgs;
import com.join.mgps.dto.RequestBbsDispraiseArgs;
import com.join.mgps.dto.RequestBbsPraiseArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TimingBean;
import com.join.mgps.dto.VideoChaptersBean;
import com.join.mgps.pref.PrefDef_;
import com.mgsim.common.fragment.BackHandledFragment;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
@EActivity(R.layout.introduction_activity_layout)
/* loaded from: classes3.dex */
public class IntroductionActivity extends BaseFragmentActivity implements com.mgsim.common.fragment.a, l1.e {
    FragmentManager A;
    com.join.mgps.rpc.j B;
    String C;
    @Extra
    String D;
    @Extra
    IntroductionCommentDetailParamsBean E;
    Boolean F;
    int G;
    private String H;
    BbsDetailBean I;
    IntroductionProgressFragment J;
    MoreIntroductionFragment K;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f32809c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f32810d;

    /* renamed from: e  reason: collision with root package name */
    AppBarLayout f32811e;

    /* renamed from: f  reason: collision with root package name */
    TextView f32812f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    TextView f32813g;
    @ViewById

    /* renamed from: h  reason: collision with root package name */
    LinearLayout f32814h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    FrameLayout f32815i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    RelativeLayout f32816j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    FrameLayout f32817k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    ImageView f32818l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    TextView f32819m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    TextView f32820n;

    /* renamed from: n0  reason: collision with root package name */
    IntroductionCommentListFragment f32821n0;

    /* renamed from: o  reason: collision with root package name */
    NestedScrollWebView f32822o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    ProgressBar f32824p;

    /* renamed from: p0  reason: collision with root package name */
    private String f32825p0;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    FrameLayout f32826q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f32828r;
    @ViewById

    /* renamed from: s  reason: collision with root package name */
    LinearLayout f32830s;

    /* renamed from: s0  reason: collision with root package name */
    private BackHandledFragment f32831s0;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    IntentDataMain f32832t;

    /* renamed from: t0  reason: collision with root package name */
    PopupWindow f32833t0;

    /* renamed from: u  reason: collision with root package name */
    private View f32834u;

    /* renamed from: v  reason: collision with root package name */
    private WebChromeClient f32836v;
    @Extra

    /* renamed from: x  reason: collision with root package name */
    int f32840x;
    @Pref

    /* renamed from: y  reason: collision with root package name */
    PrefDef_ f32842y;
    @Extra

    /* renamed from: z  reason: collision with root package name */
    int f32843z;

    /* renamed from: a  reason: collision with root package name */
    String f32807a = "IntroductionActivity";

    /* renamed from: b  reason: collision with root package name */
    private Handler f32808b = new a();

    /* renamed from: w  reason: collision with root package name */
    private View f32838w = null;

    /* renamed from: o0  reason: collision with root package name */
    Fragment f32823o0 = null;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f32827q0 = true;

    /* renamed from: r0  reason: collision with root package name */
    com.join.mgps.dialog.x0 f32829r0 = null;

    /* renamed from: u0  reason: collision with root package name */
    boolean f32835u0 = false;

    /* renamed from: v0  reason: collision with root package name */
    boolean f32837v0 = false;

    /* renamed from: w0  reason: collision with root package name */
    long f32839w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    LinkedHashMap<String, Long> f32841x0 = new LinkedHashMap<>();

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 1) {
                return;
            }
            if (i2 == 2) {
                IntroductionActivity introductionActivity = IntroductionActivity.this;
                introductionActivity.u0(introductionActivity.J);
            } else if (i2 == 3) {
                IntroductionActivity introductionActivity2 = IntroductionActivity.this;
                NestedScrollWebView nestedScrollWebView = introductionActivity2.f32822o;
                introductionActivity2.r1(nestedScrollWebView, nestedScrollWebView.getMeasuredWidth() / 2, IntroductionActivity.this.f32822o.getMeasuredHeight() / 2);
            } else if (i2 == 4) {
                IntroductionActivity.this.f1();
                IntroductionActivity.this.f32827q0 = false;
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
            IntroductionActivity.this.f32833t0.dismiss();
            IntroductionActivity introductionActivity = IntroductionActivity.this;
            if (introductionActivity.I != null) {
                com.papa.sim.statistic.p.l(introductionActivity).m1(Event.singleStartGamePageDetail, Event.ClickBrowser, "", new Ext().setFrom("1").setArticleId(String.valueOf(IntroductionActivity.this.I.getId())).setFromTabId(String.valueOf(IntroductionActivity.this.f32843z)), new Data().setGameId(Long.parseLong(IntroductionActivity.this.D)));
                IntroductionActivity introductionActivity2 = IntroductionActivity.this;
                introductionActivity2.j1(introductionActivity2.I.getSourceUrl());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity.this.f32833t0.dismiss();
            IntroductionActivity introductionActivity = IntroductionActivity.this;
            if (introductionActivity.I != null) {
                com.papa.sim.statistic.p.l(introductionActivity).m1(Event.singleStartGamePageDetail, Event.ClickReport, "", new Ext().setFrom("1").setArticleId(String.valueOf(IntroductionActivity.this.I.getId())).setFromTabId(String.valueOf(IntroductionActivity.this.f32843z)), new Data().setGameId(Long.parseLong(IntroductionActivity.this.D)));
                IntentUtil intentUtil = IntentUtil.getInstance();
                IntroductionActivity introductionActivity2 = IntroductionActivity.this;
                intentUtil.goShareWebActivity(introductionActivity2, introductionActivity2.Q0());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        private Context f32849a;

        public e(Context context) {
            this.f32849a = context;
        }

        @JavascriptInterface
        public void openImage(String[] strArr, int i2) {
            Intent intent = new Intent(IntroductionActivity.this, ImagePagerActivity.class);
            intent.putExtra("image_urls", strArr);
            intent.putExtra("image_index", i2);
            IntroductionActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f extends WebViewClient {
        public f(Context context) {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            String str2 = IntroductionActivity.this.f32807a;
            com.join.mgps.Util.t0.b(str2, "onPageFinished() called." + str);
            webView.getSettings().setBlockNetworkImage(false);
            IntroductionActivity.this.T0();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            String str2 = IntroductionActivity.this.f32807a;
            com.join.mgps.Util.t0.b(str2, "onPageStarted() called." + str);
            IntroductionActivity.this.showLoding();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            super.onReceivedError(webView, i2, str, str2);
            String str3 = IntroductionActivity.this.f32807a;
            com.join.mgps.Util.t0.b(str3, "onReceivedError() called." + str2);
            if (str2.endsWith(".zip")) {
                return;
            }
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            IntroductionActivity.this.showLodingFailed();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.proceed();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            com.join.mgps.Util.t0.b(IntroductionActivity.this.f32807a, "shouldOverrideUrlLoading() called.");
            if (com.join.android.app.common.utils.f.j(IntroductionActivity.this)) {
                if (!str.startsWith("weixin:")) {
                    if (!str.startsWith(com.facebook.common.util.f.f11765a) && !str.startsWith("https") && !str.startsWith("file://")) {
                        try {
                            IntroductionActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        return true;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                try {
                    IntroductionActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            } else {
                com.join.mgps.Util.i2.a(IntroductionActivity.this).b(IntroductionActivity.this.getString(R.string.net_connect_failed));
            }
            return true;
        }
    }

    private int R0() {
        AccountBean accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData != null) {
            return accountData.getUid();
        }
        return 0;
    }

    private void Z0(String str) {
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                if (this.f32822o == null) {
                    return;
                }
                X0(str);
            } else {
                showLodingFailed();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void init() {
        V0();
        this.f32822o.setWebChromeClient(new b());
    }

    private void k1() {
        this.f32815i.setVisibility(8);
        this.f32816j.setVisibility(0);
    }

    private void m1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r1(View view, int i2, int i4) {
        long uptimeMillis = SystemClock.uptimeMillis();
        long uptimeMillis2 = SystemClock.uptimeMillis() + 100;
        float f4 = i2;
        float f5 = i4;
        view.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis2, 0, f4, f5, 0));
        view.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis + 1000, uptimeMillis2 + 1000, 1, f4, f5, 0));
    }

    private String t1(String str, int i2) {
        if (com.join.mgps.Util.d2.h(str)) {
            return "";
        }
        if (str.contains("?")) {
            return str + "&t=" + i2;
        }
        return str + "?t=" + i2;
    }

    void K0(FragmentTransaction fragmentTransaction) {
        fragmentTransaction.setCustomAnimations(R.anim.from_right, R.anim.out_right);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void L0() {
        this.f32829r0.b();
        this.f32829r0.a("正在上传图片请稍候");
        this.f32829r0.setCancelable(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65475f0})
    public void M0(Intent intent) {
        finish();
    }

    void N0() {
        BbsDetailBean bbsDetailBean = this.I;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        synchronized (this) {
            if (this.f32841x0.containsKey(this.f32825p0)) {
                Long l4 = this.f32841x0.get(this.f32825p0);
                if (l4 == null) {
                    l4 = 0L;
                }
                if (l4.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis() - l4.longValue();
                    this.f32841x0.remove(this.f32825p0);
                    this.f32839w0 += currentTimeMillis;
                }
            }
            if (this.f32841x0.isEmpty() && this.f32839w0 > 0) {
                com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.videoLookTimes, "", new Ext().setArticleId(String.valueOf(this.f32840x)).setLiveTime(this.f32839w0 / 1000).setFrom("1"), new Data().setGameId(Long.valueOf(this.D).longValue()));
            }
            this.f32839w0 = 0L;
        }
    }

    void O0() {
        BbsDetailBean bbsDetailBean = this.I;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        synchronized (this) {
            if (this.f32841x0.containsKey(this.f32825p0)) {
                Long l4 = this.f32841x0.get(this.f32825p0);
                if (l4 == null) {
                    l4 = 0L;
                }
                long currentTimeMillis = System.currentTimeMillis() - l4.longValue();
                this.f32841x0.remove(this.f32825p0);
                if (this.f32841x0.isEmpty()) {
                    this.f32839w0 += currentTimeMillis;
                }
            }
        }
    }

    void P0() {
        BbsDetailBean bbsDetailBean = this.I;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        this.f32841x0.put(this.f32825p0, Long.valueOf(System.currentTimeMillis()));
    }

    String Q0() {
        BbsDetailBean bbsDetailBean = this.I;
        if (bbsDetailBean == null || !com.join.mgps.Util.d2.i(bbsDetailBean.getReportUrl())) {
            return "";
        }
        if (this.I.getReportUrl().contains("?")) {
            return this.I.getReportUrl() + "&resourceType=POST&ruid=" + this.I.getPosterId() + "&resourceId=" + this.f32840x;
        }
        return this.I.getReportUrl() + "?resourceType=POST&ruid=" + this.I.getPosterId() + "&resourceId=" + this.f32840x;
    }

    public void S0() {
        this.f32834u = null;
        k1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T0() {
        this.f32810d.setVisibility(8);
        this.f32809c.setVisibility(8);
    }

    public boolean U0() {
        return this.f32834u != null;
    }

    public void V0() {
        this.f32822o.getSettings().setDomStorageEnabled(true);
        this.f32822o.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.f32822o.getSettings().setAppCacheEnabled(true);
        this.H = getApplicationContext().getDir("cacheH5", 0).getPath();
        this.f32822o.getSettings().setAppCachePath(this.H);
        this.f32822o.getSettings().setAllowFileAccess(true);
        this.f32822o.getSettings().setCacheMode(-1);
        this.f32822o.getSettings().setPluginState(WebSettings.PluginState.ON);
        this.f32822o.getSettings().setLoadWithOverviewMode(true);
        this.f32822o.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        this.f32822o.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f32822o.getSettings().setTextZoom(100);
        this.f32822o.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.f32822o.getSettings().setUseWideViewPort(true);
        this.f32822o.getSettings().setSupportZoom(false);
        this.f32822o.getSettings().setBuiltInZoomControls(false);
        this.f32822o.getSettings().setJavaScriptEnabled(true);
        this.f32822o.getSettings().setDefaultTextEncodingName("UTF-8");
        this.f32822o.getSettings().setCacheMode(-1);
        this.f32822o.setWebViewClient(new f(this));
        this.f32822o.addJavascriptInterface(new e(this), "papa");
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f32822o.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0053 -> B:18:0x0065). Please submit an issue!!! */
    @Background
    public void W0() {
        showLoding();
        if (com.join.android.app.common.utils.f.j(this)) {
            try {
                showLoding();
                RequestBbsDetailArgs requestBbsDetailArgs = new RequestBbsDetailArgs();
                requestBbsDetailArgs.setPostId(Integer.valueOf(this.f32840x));
                requestBbsDetailArgs.setUid(Integer.valueOf(R0()));
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestBbsDetailArgs);
                ResponseModel<BbsDetailBean> A = this.B.A(requestModel.makeSign());
                if (A != null) {
                    try {
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        showLodingFailed();
                    }
                    if (A.getData() != null) {
                        BbsDetailBean data = A.getData();
                        this.I = data;
                        p1(data);
                        P0();
                        return;
                    }
                }
                showLodingFailed();
                return;
            } catch (Exception e5) {
                e5.printStackTrace();
                showLodingFailed();
                return;
            }
        }
        showLodingFailed();
    }

    public void X0(String str) {
        this.f32822o.loadData(str, "text/html", "utf-8");
        this.f32808b.removeMessages(3);
        BbsDetailBean bbsDetailBean = this.I;
        if (bbsDetailBean == null || bbsDetailBean.getType().intValue() != 1) {
            return;
        }
        this.f32808b.sendEmptyMessageDelayed(3, 1300L);
    }

    public void Y0(String str) {
        this.f32822o.loadUrl(str);
    }

    @Override // l1.e
    public void a0(Object obj) {
        if (obj instanceof TimingBean) {
            String replace = this.I.getVideoH5Tpl().replace("_s_", t1(this.I.getContent(), ((TimingBean) obj).getTime().intValue()));
            this.C = replace;
            Z0(replace);
            com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.AjustSpeed, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
        } else if (obj instanceof VideoChaptersBean) {
            String replace2 = this.I.getVideoH5Tpl().replace("_s_", ((VideoChaptersBean) obj).getContent());
            this.C = replace2;
            Z0(replace2);
            com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.AjustSeries, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a1() {
        com.join.mgps.Util.t0.b(this.f32807a, "loding_faile() called.");
        if (this.f32822o != null) {
            Z0(this.C);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterview() {
        com.join.mgps.Util.t0.b(this.f32807a, "afterView() called.");
        try {
            TextView textView = this.f32813g;
            if (textView != null) {
                textView.setText("网页加载失败，再试试吧~");
            }
            this.f32829r0 = com.join.mgps.Util.a0.c0(this).x(this);
            this.f32825p0 = "TIME_" + this.f32840x;
            W0();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b1(Integer num) {
        try {
            if (this.f32837v0) {
                return;
            }
            if (com.join.android.app.common.utils.f.j(this)) {
                if (IntentUtil.getInstance().goLogin(this)) {
                    q1("您还未登录请先登录帐号！");
                    this.f32837v0 = false;
                    return;
                }
                try {
                    this.f32837v0 = true;
                    RequestBbsDispraiseArgs requestBbsDispraiseArgs = new RequestBbsDispraiseArgs();
                    requestBbsDispraiseArgs.setResourceType("POST");
                    requestBbsDispraiseArgs.setResourceId(num);
                    requestBbsDispraiseArgs.setUid(Integer.valueOf(R0()));
                    RequestModel requestModel = new RequestModel(this);
                    requestModel.setArgs(requestBbsDispraiseArgs);
                    ResponseModel<Boolean> l4 = this.B.l(requestModel.makeSign());
                    this.f32837v0 = false;
                    if (l4 == null || !l4.getData().booleanValue()) {
                        return;
                    }
                    s1(false);
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    this.f32837v0 = false;
                    return;
                }
            }
            this.f32837v0 = false;
            q1(getResources().getString(R.string.net_connect_failed));
        } catch (Exception e5) {
            this.f32837v0 = false;
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void c1(String str, Integer num) {
        try {
            if (this.f32835u0) {
                return;
            }
            if (com.join.android.app.common.utils.f.j(this)) {
                if (IntentUtil.getInstance().goLogin(this)) {
                    q1("您还未登录请先登录帐号！");
                    this.f32835u0 = false;
                    return;
                }
                try {
                    this.f32835u0 = true;
                    RequestBbsPraiseArgs requestBbsPraiseArgs = new RequestBbsPraiseArgs();
                    requestBbsPraiseArgs.setResourceType("POST");
                    requestBbsPraiseArgs.setResourceId(num);
                    requestBbsPraiseArgs.setRuid(str);
                    requestBbsPraiseArgs.setUid(Integer.valueOf(R0()));
                    RequestModel requestModel = new RequestModel(this);
                    requestModel.setArgs(requestBbsPraiseArgs);
                    ResponseModel<Boolean> y3 = this.B.y(requestModel.makeSign());
                    this.f32835u0 = false;
                    if (y3 == null || !y3.getData().booleanValue()) {
                        return;
                    }
                    s1(true);
                    com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ClickLike, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
                    return;
                } catch (Exception e4) {
                    this.f32835u0 = false;
                    e4.printStackTrace();
                    return;
                }
            }
            this.f32835u0 = false;
            q1(getResources().getString(R.string.net_connect_failed));
        } catch (Exception e5) {
            this.f32835u0 = false;
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_more})
    public void d1() {
        View inflate = getLayoutInflater().inflate(R.layout.introduction_comment_bottom_popwin, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        this.f32833t0 = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        this.f32833t0.setFocusable(true);
        this.f32833t0.setOutsideTouchable(true);
        this.f32833t0.update();
        Rect rect = new Rect();
        View findViewById = findViewById(R.id.ll_more);
        findViewById.getGlobalVisibleRect(rect);
        this.f32833t0.showAtLocation(findViewById(R.id.ll_more), 0, (int) (rect.left - getResources().getDimension(R.dimen.wdp187)), (int) ((rect.bottom - getResources().getDimension(R.dimen.wdp145)) - (findViewById.getHeight() / 2)));
        ((TextView) inflate.findViewById(R.id.tv_pop_open_web)).setOnClickListener(new c());
        ((TextView) inflate.findViewById(R.id.tv_pop_report)).setOnClickListener(new d());
        if (this.I != null) {
            com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ClickMoreButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissLoadingDialog() {
        com.join.mgps.dialog.x0 x0Var = this.f32829r0;
        if (x0Var != null) {
            x0Var.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_close_drawer})
    public void e1() {
        PopupWindow popupWindow = this.f32833t0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_comment})
    public void f1() {
        boolean z3;
        if (this.I != null) {
            if (this.f32821n0 == null) {
                IntroductionCommentListFragment_ introductionCommentListFragment_ = new IntroductionCommentListFragment_();
                this.f32821n0 = introductionCommentListFragment_;
                introductionCommentListFragment_.setFragmentCallback(this);
                z3 = true;
            } else {
                z3 = false;
            }
            this.f32821n0.setVideo(this.I.getType().intValue() == 1);
            this.f32821n0.setDuration(this.I.getDuration().intValue());
            this.f32821n0.setParams(this.I.getId().intValue(), this.I.getPosterId().intValue(), this.I.getReportUrl(), this.D);
            IntroductionCommentDetailParamsBean introductionCommentDetailParamsBean = this.E;
            if (introductionCommentDetailParamsBean != null) {
                this.f32821n0.setCommentId(introductionCommentDetailParamsBean.getParent_comment_id());
                this.f32821n0.setFromNotice(this.f32827q0);
            }
            IntroductionCommentListFragment introductionCommentListFragment = this.f32821n0;
            if (introductionCommentListFragment != null) {
                introductionCommentListFragment.notifyDataChanged(this.I.getId().intValue());
            }
            o1(this.f32823o0, this.f32821n0, z3);
            com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ClickComment, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_progress})
    public void g1() {
        if (this.I != null) {
            boolean z3 = false;
            if (this.J == null) {
                IntroductionProgressFragment_ introductionProgressFragment_ = new IntroductionProgressFragment_();
                this.J = introductionProgressFragment_;
                introductionProgressFragment_.setData(this.I);
                z3 = true;
            }
            IntroductionProgressFragment introductionProgressFragment = this.J;
            if (introductionProgressFragment != null) {
                introductionProgressFragment.notifyDataChanged(this.I);
            }
            o1(this.f32823o0, this.J, z3);
            if (this.I.getIsCollection().intValue() == 1) {
                com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ClickSeriesButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
            } else {
                com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ClickSpeedButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_recommend})
    public void h1() {
        if (this.I != null) {
            boolean z3 = false;
            if (this.K == null) {
                z3 = true;
                this.K = new MoreIntroductionFragment_();
                Bundle bundle = new Bundle();
                bundle.putInt("tagId", this.I.getId().intValue());
                bundle.putString("gameId", this.D);
                this.K.setArguments(bundle);
            }
            MoreIntroductionFragment moreIntroductionFragment = this.K;
            if (moreIntroductionFragment != null) {
                moreIntroductionFragment.notifyDataChanged(this.I.getId().intValue());
            }
            o1(this.f32823o0, this.K, z3);
            com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ClickRecommandButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click({R.id.ll_praise})
    public void i1() {
        BbsDetailBean bbsDetailBean = this.I;
        if (bbsDetailBean != null) {
            if (bbsDetailBean.getPraise().booleanValue()) {
                b1(this.I.getId());
            } else {
                c1("", this.I.getId());
            }
        }
    }

    void j1(String str) {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l1() {
        Z0(this.C);
    }

    public void n1(View view, WebChromeClient.CustomViewCallback customViewCallback, WebChromeClient webChromeClient) {
        this.f32834u = view;
        if (view == null) {
            return;
        }
        this.f32836v = webChromeClient;
        this.f32816j.setVisibility(8);
        this.f32815i.removeAllViews();
        this.f32815i.setVisibility(0);
        this.f32815i.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        m1();
    }

    void o1(Fragment fragment, Fragment fragment2, boolean z3) {
        if (fragment == fragment2) {
            return;
        }
        if (fragment != null) {
            FragmentTransaction beginTransaction = this.A.beginTransaction();
            K0(beginTransaction);
            beginTransaction.hide(fragment);
            try {
                beginTransaction.commit();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (fragment2 != null) {
            FragmentTransaction beginTransaction2 = this.A.beginTransaction();
            K0(beginTransaction2);
            if (z3) {
                beginTransaction2.add(R.id.fl_front_view, fragment2);
            }
            beginTransaction2.show(fragment2);
            try {
                beginTransaction2.commit();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            this.f32823o0 = fragment2;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        BackHandledFragment backHandledFragment = this.f32831s0;
        if (backHandledFragment == null || !backHandledFragment.a()) {
            if (getSupportFragmentManager().getBackStackEntryCount() == 0) {
                super.onBackPressed();
            } else {
                getSupportFragmentManager().popBackStack();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.A = getSupportFragmentManager();
        this.B = com.join.mgps.rpc.impl.h.L();
        if (bundle != null) {
            try {
                NestedScrollWebView nestedScrollWebView = this.f32822o;
                if (nestedScrollWebView != null) {
                    nestedScrollWebView.restoreState(bundle);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            if (this.f32832t != null) {
                moveTaskToBack(true);
            }
            NestedScrollWebView nestedScrollWebView = this.f32822o;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.destroy();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        super.onDestroy();
        N0();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        com.join.mgps.Util.t0.b(this.f32807a, "onKeyDown() called.");
        if (i2 == 4 && keyEvent.getRepeatCount() == 0 && U0()) {
            this.f32836v.onHideCustomView();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        NestedScrollWebView nestedScrollWebView = this.f32822o;
        if (nestedScrollWebView != null) {
            try {
                nestedScrollWebView.getClass().getMethod("onPause", new Class[0]).invoke(this.f32822o, null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        super.onPause();
        O0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        NestedScrollWebView nestedScrollWebView = this.f32822o;
        if (nestedScrollWebView != null) {
            try {
                nestedScrollWebView.getClass().getMethod("onResume", new Class[0]).invoke(this.f32822o, null);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (NoSuchMethodException e5) {
                e5.printStackTrace();
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
            }
        }
        P0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        NestedScrollWebView nestedScrollWebView = this.f32822o;
        if (nestedScrollWebView != null) {
            nestedScrollWebView.saveState(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p1(BbsDetailBean bbsDetailBean) {
        try {
            if (this.E != null && this.f32827q0) {
                this.f32808b.sendEmptyMessage(4);
            }
            this.f32826q.removeAllViews();
            this.f32822o = (NestedScrollWebView) View.inflate(this, R.layout.layout_introduction_video, this.f32826q).findViewById(R.id.ns_web_view);
            int intValue = bbsDetailBean.getType().intValue();
            this.G = intValue;
            if (intValue == 1) {
                this.C = bbsDetailBean.getVideoH5Tpl().replace("_s_", bbsDetailBean.getContent());
                P0();
            } else {
                this.C = bbsDetailBean.getContent();
            }
            if ((bbsDetailBean.getTiming() != null && bbsDetailBean.getTiming().size() > 0) || (bbsDetailBean.getVideoChapters() != null && bbsDetailBean.getVideoChapters().size() > 0)) {
                this.f32830s.setVisibility(0);
                if (bbsDetailBean.getIsCollection().intValue() == 1) {
                    this.f32828r.setText("合集");
                    com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ShowSeriesButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(bbsDetailBean.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
                } else {
                    g1();
                    this.f32808b.sendEmptyMessageDelayed(2, 3000L);
                    this.f32828r.setText("进度");
                    com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.ShowSpeedButton, "", new Ext().setFrom("1").setArticleId(String.valueOf(bbsDetailBean.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
                }
            } else {
                this.f32830s.setVisibility(8);
            }
            init();
            Z0(this.C);
            com.join.mgps.Util.t0.b(this.f32807a, "showMain() called.");
            NestedScrollWebView nestedScrollWebView = this.f32822o;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.setVisibility(0);
            }
            this.f32819m.setText(String.valueOf(bbsDetailBean.getLike()));
            this.f32820n.setText(String.valueOf(bbsDetailBean.getComment()));
            if (bbsDetailBean.getPraise().booleanValue()) {
                this.f32818l.setImageResource(R.drawable.ic_introduction_star_blue);
                this.f32819m.setTextColor(Color.parseColor("#34ACFF"));
                return;
            }
            this.f32818l.setImageResource(R.drawable.ic_introduction_star_white);
            this.f32819m.setTextColor(Color.parseColor("#FFFFFF"));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q1(String str) {
        com.join.mgps.Util.i2.a(this).b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void relodingimag() {
        W0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s1(boolean z3) {
        if (z3) {
            this.f32818l.setImageResource(R.drawable.ic_introduction_star_blue);
            BbsDetailBean bbsDetailBean = this.I;
            bbsDetailBean.setLike(Integer.valueOf(bbsDetailBean.getLike().intValue() + 1));
            this.f32819m.setText(String.valueOf(this.I.getLike()));
            this.f32819m.setTextColor(Color.parseColor("#34ACFF"));
        } else {
            this.f32818l.setImageResource(R.drawable.ic_introduction_star_white);
            BbsDetailBean bbsDetailBean2 = this.I;
            bbsDetailBean2.setLike(Integer.valueOf(bbsDetailBean2.getLike().intValue() - 1));
            this.f32819m.setText(String.valueOf(this.I.getLike()));
            this.f32819m.setTextColor(Color.parseColor("#FFFFFF"));
        }
        this.I.setPraise(Boolean.valueOf(z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void setNetwork() {
        com.join.mgps.Util.t0.b(this.f32807a, "setNetwork() called.");
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            com.join.mgps.Util.t0.b(this.f32807a, "showLoding() called.");
            this.f32809c.setVisibility(0);
            this.f32810d.setVisibility(8);
            NestedScrollWebView nestedScrollWebView = this.f32822o;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.setVisibility(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            com.join.mgps.Util.t0.b(this.f32807a, "showLodingFailed() called.");
            this.f32810d.setVisibility(0);
            this.f32809c.setVisibility(8);
            NestedScrollWebView nestedScrollWebView = this.f32822o;
            if (nestedScrollWebView != null) {
                nestedScrollWebView.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // l1.e
    public void u0(Fragment fragment) {
        if (fragment != null) {
            try {
                this.A.beginTransaction().hide(fragment).commitNowAllowingStateLoss();
                this.f32823o0 = null;
            } catch (Exception e4) {
                e4.printStackTrace();
                return;
            }
        }
        if (fragment == this.J) {
            this.f32808b.removeMessages(2);
        }
    }

    @Override // l1.e
    public void v() {
        com.papa.sim.statistic.p.l(this).m1(Event.singleStartGamePageDetail, Event.PostComment, String.valueOf(R0()), new Ext().setFrom("1").setArticleId(String.valueOf(this.I.getId())).setFromTabId(String.valueOf(this.f32843z)), new Data().setGameId(Long.parseLong(this.D)));
    }

    @Override // com.mgsim.common.fragment.a
    public void v0(BackHandledFragment backHandledFragment) {
        this.f32831s0 = backHandledFragment;
    }

    @Override // l1.e
    public void w(int i2, int i4, boolean z3) {
        if (this.f32840x == i2) {
            return;
        }
        N0();
        this.f32840x = i2;
        this.F = Boolean.valueOf(z3);
        this.G = i4;
        this.I = null;
        this.f32825p0 = "TIME_" + i2;
        W0();
    }

    @Override // l1.e
    public void y0(int i2) {
        String videoH5Tpl = this.I.getVideoH5Tpl();
        String replace = videoH5Tpl.replace("_s_", this.I.getContent() + "&t=" + i2);
        this.C = replace;
        Z0(replace);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends WebChromeClient {

        /* renamed from: a  reason: collision with root package name */
        WebChromeClient.CustomViewCallback f32845a;

        b() {
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (IntroductionActivity.this.f32838w == null) {
                LayoutInflater from = LayoutInflater.from(IntroductionActivity.this);
                IntroductionActivity.this.f32838w = from.inflate(R.layout.video_loading_progress, (ViewGroup) null);
            }
            return IntroductionActivity.this.f32838w;
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            if (IntroductionActivity.this.f32834u == null) {
                return;
            }
            IntroductionActivity.this.f32834u = null;
            try {
                WebChromeClient.CustomViewCallback customViewCallback = this.f32845a;
                if (customViewCallback != null) {
                    customViewCallback.onCustomViewHidden();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            IntroductionActivity.this.S0();
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i2) {
            ProgressBar progressBar;
            ProgressBar progressBar2;
            ProgressBar progressBar3;
            super.onProgressChanged(webView, i2);
            if (i2 > 10 && (progressBar3 = IntroductionActivity.this.f32824p) != null) {
                progressBar3.setVisibility(0);
            }
            if (i2 > 80 && (progressBar2 = IntroductionActivity.this.f32824p) != null) {
                progressBar2.setVisibility(8);
            }
            if (i2 != 100 || (progressBar = IntroductionActivity.this.f32824p) == null) {
                return;
            }
            progressBar.setVisibility(8);
        }

        @Override // android.webkit.WebChromeClient
        public void onReachedMaxAppCacheSize(long j4, long j5, WebStorage.QuotaUpdater quotaUpdater) {
            try {
                UtilsMy.delete(new File(IntroductionActivity.this.H));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            super.onReachedMaxAppCacheSize(j4, j5, quotaUpdater);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            try {
                if (IntroductionActivity.this.f32834u != null) {
                    customViewCallback.onCustomViewHidden();
                    return;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            IntroductionActivity.this.f32834u = view;
            this.f32845a = customViewCallback;
            IntroductionActivity.this.n1(view, customViewCallback, this);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, int i2, WebChromeClient.CustomViewCallback customViewCallback) {
            onShowCustomView(view, customViewCallback);
        }
    }
}
