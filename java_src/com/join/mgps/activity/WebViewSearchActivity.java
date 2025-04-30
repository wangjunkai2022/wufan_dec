package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flipboard.bottomsheet.custom.SimpleSheetView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.LJWebView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.dto.DownloadCfg;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.pref.PrefDef_;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
@EActivity(R.layout.activity_web_view_search)
/* loaded from: classes.dex */
public class WebViewSearchActivity extends BaseFragmentActivity {
    ImageView B;
    ScrollTextViewLayout C;
    TextView D;
    LinearLayout E;
    TextView F;
    ImageView G;
    ImageView H;
    Animation I;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    BottomSheetLayout f36125d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    View f36126e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f36127f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    View f36128g;
    @Pref

    /* renamed from: h  reason: collision with root package name */
    PrefDef_ f36129h;
    @ViewById

    /* renamed from: i  reason: collision with root package name */
    LJWebView f36130i;
    @ViewById

    /* renamed from: j  reason: collision with root package name */
    View f36131j;
    @ViewById

    /* renamed from: k  reason: collision with root package name */
    View f36132k;
    @ViewById

    /* renamed from: l  reason: collision with root package name */
    View f36133l;
    @ViewById

    /* renamed from: m  reason: collision with root package name */
    View f36134m;
    @ViewById

    /* renamed from: n  reason: collision with root package name */
    ImageView f36135n;
    @ViewById

    /* renamed from: o  reason: collision with root package name */
    ImageView f36137o;
    @ViewById

    /* renamed from: p  reason: collision with root package name */
    View f36139p;
    @ViewById

    /* renamed from: q  reason: collision with root package name */
    View f36140q;
    @ViewById

    /* renamed from: r  reason: collision with root package name */
    TextView f36141r;
    @Extra

    /* renamed from: s  reason: collision with root package name */
    String f36142s;
    @Extra

    /* renamed from: t  reason: collision with root package name */
    DownloadTask f36143t;

    /* renamed from: u  reason: collision with root package name */
    DownloadCfg f36144u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f36145v;

    /* renamed from: x  reason: collision with root package name */
    private String f36147x;

    /* renamed from: y  reason: collision with root package name */
    SimpleSheetView f36148y;

    /* renamed from: z  reason: collision with root package name */
    CountDownTimer f36149z;

    /* renamed from: a  reason: collision with root package name */
    private String f36122a = getClass().getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final String f36123b = "downloadc94873e7a457ef607a0cb27c7036b0e2";

    /* renamed from: c  reason: collision with root package name */
    private final String f36124c = "downloadc94873e7a457ef607a0cb27c7036b0e3";

    /* renamed from: w  reason: collision with root package name */
    private boolean f36146w = true;
    boolean A = false;
    private int J = 0;
    private int K = 0;

    /* renamed from: n0  reason: collision with root package name */
    List<DownloadTask> f36136n0 = new ArrayList();

    /* renamed from: o0  reason: collision with root package name */
    Map<String, DownloadTask> f36138o0 = new ConcurrentHashMap();

    /* loaded from: classes3.dex */
    class a implements SimpleSheetView.d {
        a() {
        }

        @Override // com.flipboard.bottomsheet.custom.SimpleSheetView.d
        public void a(SimpleSheetView.c cVar) {
            DownloadTask B = g1.f.G().B(WebViewSearchActivity.this.f36143t.getCrc_link_type_val());
            if (B != null) {
                if (B.getStatus() != 1 && B.getStatus() != 2) {
                    if (B.getStatus() == 5) {
                        com.join.mgps.Util.i2.a(WebViewSearchActivity.this).b("下载已完成");
                    }
                } else {
                    com.join.mgps.Util.i2.a(WebViewSearchActivity.this).b("已创建下载任务");
                }
            }
            WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
            com.php25.PDownload.d.c(webViewSearchActivity.f36143t, webViewSearchActivity.f36148y.getContext());
            WebViewSearchActivity.this.f36125d.r();
        }

        @Override // com.flipboard.bottomsheet.custom.SimpleSheetView.d
        public void b(SimpleSheetView.c cVar) {
            com.join.mgps.Util.i2 a4 = com.join.mgps.Util.i2.a(WebViewSearchActivity.this);
            a4.b("onItemClicked " + cVar.f13745a);
        }

        @Override // com.flipboard.bottomsheet.custom.SimpleSheetView.d
        public void onClose() {
            WebViewSearchActivity.this.f36125d.r();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36152a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(long j4, long j5, boolean z3) {
            super(j4, j5);
            this.f36152a = z3;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            WebViewSearchActivity.this.f36141r.setVisibility(8);
            WebViewSearchActivity.this.d1();
            if (WebViewSearchActivity.this.f36148y.getMixins().size() > 0) {
                WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
                webViewSearchActivity.f36148y.setTitle(webViewSearchActivity.getResources().getString(R.string.sniffing_result_sheet_title, Integer.valueOf(WebViewSearchActivity.this.f36148y.getMixins().size())));
                WebViewSearchActivity webViewSearchActivity2 = WebViewSearchActivity.this;
                webViewSearchActivity2.f36125d.I(webViewSearchActivity2.f36148y);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            if (this.f36152a || j4 > 600) {
                return;
            }
            WebViewSearchActivity.this.f36141r.setText(R.string.sniffing_unfound);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewSearchActivity.this.downloadLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Animation.AnimationListener {
        e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* loaded from: classes3.dex */
    public class f {
        public f() {
        }

        @JavascriptInterface
        public void processHtml(String str) {
            String queryParameter = Uri.parse(WebViewSearchActivity.this.f36142s).getQueryParameter("word");
            WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
            if (webViewSearchActivity.U0(webViewSearchActivity.f36142s) && !TextUtils.isEmpty(queryParameter)) {
                WebViewSearchActivity.this.L0(str);
                return;
            }
            WebViewSearchActivity webViewSearchActivity2 = WebViewSearchActivity.this;
            if (webViewSearchActivity2.V0(webViewSearchActivity2.f36142s)) {
                WebViewSearchActivity.this.J0(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class g extends WebViewClient {

        /* renamed from: a  reason: collision with root package name */
        Context f36157a;

        public g(Context context) {
            this.f36157a = context;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            String str2 = WebViewSearchActivity.this.f36122a;
            com.join.mgps.Util.t0.b(str2, "onPageFinished() called." + str);
            if (str.startsWith(com.facebook.common.util.f.f11765a) || str.startsWith("https") || str.startsWith("file://")) {
                WebViewSearchActivity.this.f36142s = str;
            }
            if (!WebViewSearchActivity.this.f36142s.equals("data:text/html,chromewebdata") && !WebViewSearchActivity.this.f36145v) {
                webView.getSettings().setBlockNetworkImage(false);
                if (WebViewSearchActivity.this.f36146w && WebViewSearchActivity.this.f36141r.getVisibility() != 0) {
                    Uri.parse(WebViewSearchActivity.this.f36142s).getHost();
                    String queryParameter = Uri.parse(WebViewSearchActivity.this.f36142s).getQueryParameter("word");
                    WebViewSearchActivity webViewSearchActivity = WebViewSearchActivity.this;
                    boolean z3 = true;
                    if (!webViewSearchActivity.U0(webViewSearchActivity.f36142s) || TextUtils.isEmpty(queryParameter)) {
                        WebViewSearchActivity webViewSearchActivity2 = WebViewSearchActivity.this;
                        if (!webViewSearchActivity2.V0(webViewSearchActivity2.f36142s)) {
                            z3 = false;
                        }
                    }
                    if (!z3) {
                        return;
                    }
                    WebViewSearchActivity.this.f36141r.setText(R.string.sniffing);
                    WebViewSearchActivity.this.f36141r.setVisibility(0);
                    WebViewSearchActivity.this.f36132k.setVisibility(0);
                    WebViewSearchActivity.this.f36130i.w("javascript:wufan.processHtml(document.documentElement.outerHTML);");
                    WebViewSearchActivity.this.f36146w = false;
                }
                WebViewSearchActivity.this.c1();
                return;
            }
            WebViewSearchActivity.this.e1();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            String str2 = WebViewSearchActivity.this.f36122a;
            com.join.mgps.Util.t0.b(str2, "onPageStarted() called." + str);
            if (str.startsWith(com.facebook.common.util.f.f11765a) || str.startsWith("https") || str.startsWith("file://")) {
                WebViewSearchActivity.this.f36142s = str;
            }
            WebViewSearchActivity.this.showLoading();
            WebViewSearchActivity.this.c1();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            super.onReceivedError(webView, i2, str, str2);
            String str3 = WebViewSearchActivity.this.f36122a;
            com.join.mgps.Util.t0.b(str3, "onReceivedError() called." + str2);
            WebViewSearchActivity.this.f36145v = true;
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            WebViewSearchActivity.this.e1();
            WebViewSearchActivity.this.c1();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            com.join.mgps.Util.t0.b(WebViewSearchActivity.this.f36122a, "shouldOverrideUrlLoading() called.");
            if (com.join.android.app.common.utils.f.j(this.f36157a)) {
                if (!str.startsWith("weixin:")) {
                    if (!str.startsWith(com.facebook.common.util.f.f11765a) && !str.startsWith("https") && !str.startsWith("file://")) {
                        try {
                            WebViewSearchActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        return true;
                    }
                    WebViewSearchActivity.this.f36142s = str;
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                try {
                    WebViewSearchActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            } else {
                com.join.mgps.Util.i2.a(this.f36157a).b(WebViewSearchActivity.this.getString(R.string.net_connect_failed));
            }
            return true;
        }
    }

    private void T0() {
        this.D = (TextView) findViewById(R.id.biground);
        this.E = (LinearLayout) findViewById(R.id.downloadLayout);
        this.F = (TextView) findViewById(R.id.scroll_text);
        this.C = (ScrollTextViewLayout) findViewById(R.id.scroll_text_layout);
        this.B = (ImageView) findViewById(R.id.hasNewFinishedGameImage);
        this.G = (ImageView) findViewById(R.id.downloadLine);
        this.H = (ImageView) findViewById(R.id.imageLoading);
        this.E.setOnClickListener(new d());
        getdownloadTask();
    }

    private void Y0(String str) {
        com.join.mgps.Util.t0.b(this.f36122a, "lodeWebView() called.");
        try {
            if (com.join.android.app.common.utils.f.j(this)) {
                LJWebView lJWebView = this.f36130i;
                if (lJWebView == null) {
                    return;
                }
                lJWebView.setVisibility(0);
                this.f36130i.setBarHeight(getResources().getDimensionPixelOffset(R.dimen.web_loding_progress_h));
                this.f36130i.setClickable(true);
                this.f36130i.setUseWideViewPort(true);
                this.f36130i.setSupportZoom(false);
                this.f36130i.setBuiltInZoomControls(false);
                this.f36130i.setJavaScriptEnabled(true);
                this.f36130i.setCacheMode(-1);
                this.f36130i.setWebViewClient(new g(this));
                this.f36130i.s(new f());
                this.f36130i.w(str);
            } else {
                e1();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void I0(String str) {
        try {
            Document P0 = P0(str);
            Elements elements = null;
            if (Build.VERSION.SDK_INT >= 30 && this.A) {
                elements = P0.select("a#downloadc94873e7a457ef607a0cb27c7036b0e3");
            }
            if (elements == null || elements.size() <= 0) {
                elements = P0.select("a#downloadc94873e7a457ef607a0cb27c7036b0e2");
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Element> it2 = elements.iterator();
            while (it2.hasNext()) {
                Element next = it2.next();
                String attr = next.attr(ForumGroupMemberActivity_.f29856t);
                String attr2 = next.attr("abs:href");
                String substring = attr2.substring(attr2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
                StringBuilder sb = new StringBuilder();
                sb.append("acquirePackage href=");
                sb.append(next.attr("abs:href"));
                sb.append(" gid=");
                sb.append(next.attr(ForumGroupMemberActivity_.f29856t));
                sb.append(" text=");
                sb.append(next.text());
                DownloadTask downloadTask = this.f36143t;
                if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && com.join.mgps.Util.v0.d(this.f36143t.getCrc_link_type_val()).equals(attr)) {
                    SimpleSheetView.c cVar = new SimpleSheetView.c(attr, substring, "来源：" + str);
                    cVar.d(str);
                    cVar.c(attr2);
                    arrayList.add(cVar);
                }
            }
            this.f36148y.getMixins().addAll(arrayList);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void J0(String str) {
        Document parse = Jsoup.parse(str);
        Elements select = (Build.VERSION.SDK_INT < 30 || !this.A) ? null : parse.select("a#downloadc94873e7a457ef607a0cb27c7036b0e3");
        if (select == null || select.size() <= 0) {
            select = parse.select("a#downloadc94873e7a457ef607a0cb27c7036b0e2");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it2 = select.iterator();
        while (it2.hasNext()) {
            Element next = it2.next();
            String attr = next.attr(ForumGroupMemberActivity_.f29856t);
            String attr2 = next.attr("abs:href");
            String substring = attr2.substring(attr2.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1);
            StringBuilder sb = new StringBuilder();
            sb.append("acquirePackage href=");
            sb.append(next.attr("abs:href"));
            sb.append(" gid=");
            sb.append(next.attr(ForumGroupMemberActivity_.f29856t));
            sb.append(" text=");
            sb.append(next.text());
            DownloadTask downloadTask = this.f36143t;
            if (downloadTask != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && com.join.mgps.Util.v0.d(this.f36143t.getCrc_link_type_val()).equals(attr)) {
                SimpleSheetView.c cVar = new SimpleSheetView.c(attr, substring, "来源：" + this.f36142s);
                cVar.d(this.f36142s);
                cVar.c(attr2);
                arrayList.add(cVar);
            }
        }
        this.f36148y.setMixins(arrayList);
        f1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void K0(String str) {
        try {
            List<String> S0 = S0(P0(str));
            for (int i2 = 0; i2 < S0.size(); i2++) {
                I0(S0.get(i2));
            }
            f1();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void L0(String str) {
        List<String> S0 = S0(Jsoup.parse(str));
        for (int i2 = 0; i2 < S0.size(); i2++) {
            I0(S0.get(i2));
        }
        f1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void M0(String str) {
        I0(str);
        f1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void N0() {
        O0(true);
    }

    void O0(boolean z3) {
        c cVar = new c(3000L, 200L, z3);
        this.f36149z = cVar;
        cVar.start();
    }

    Document P0(String str) {
        new HashMap();
        Connection connect = Jsoup.connect(str);
        try {
            return connect.header("User-Agent", "Mozilla/5.0 (Linux; Android 8.1.0; XX; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/68.0.3440.91 Mobile Safari/537.36").get();
        } catch (IOException e4) {
            e4.printStackTrace();
            try {
                return connect.get();
            } catch (IOException e5) {
                e5.printStackTrace();
                return null;
            }
        }
    }

    String Q0(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Elements select = P0(str).select("noscript > META[content]");
            if (select != null) {
                Element first = select.first();
                Matcher matcher = Pattern.compile("(?=http).*?(?=('|$))", 2).matcher(first.attr("content"));
                if (matcher.find() && matcher.groupCount() > 0) {
                    str2 = matcher.group(0);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("getRedirectUrl1 text=");
                sb.append(first.attr("content"));
                sb.append(" url=");
                sb.append(str2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return str2;
    }

    String R0(String str) {
        String str2 = null;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(5000);
            str2 = httpURLConnection.getHeaderField("Location");
            httpURLConnection.disconnect();
            return str2;
        } catch (IOException e4) {
            e4.printStackTrace();
            return str2;
        }
    }

    List<String> S0(Document document) {
        ArrayList arrayList = new ArrayList();
        Elements select = document.select("div.result");
        if (select == null) {
            select = document.select("a[href]");
        }
        Iterator<Element> it2 = select.iterator();
        while (it2.hasNext()) {
            Element first = it2.next().select("a[href]").first();
            if (first != null) {
                String Q0 = Q0(first.attr("abs:href"));
                String host = Uri.parse(Q0).getHost();
                StringBuilder sb = new StringBuilder();
                sb.append("queryLinksByDomain href=");
                sb.append(first.attr("abs:href"));
                sb.append(" \ntext=");
                sb.append(first.text());
                sb.append(" \nredirect=");
                sb.append(Q0);
                sb.append(" \nhost=");
                sb.append(host);
                if (V0(Q0)) {
                    arrayList.add(Q0);
                }
            }
        }
        return arrayList;
    }

    boolean U0(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("(www|m).baidu.com").matcher(Uri.parse(str).getHost()).find();
    }

    boolean V0(String str) {
        DownloadCfg downloadCfg;
        if (TextUtils.isEmpty(str) || (downloadCfg = this.f36144u) == null || TextUtils.isEmpty(downloadCfg.getCfg_values())) {
            return false;
        }
        String host = Uri.parse(str).getHost();
        return Pattern.compile("(^|,)" + host).matcher(this.f36144u.getCfg_values()).find();
    }

    boolean W0() {
        return this.f36141r.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void X0() {
        Y0(this.f36142s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void Z0() {
        if (this.f36141r.getVisibility() == 0) {
            this.f36130i.setClickable(false);
        } else if (this.f36130i.getWebView().canGoForward()) {
            this.f36130i.getWebView().goForward();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void a1() {
        if (this.f36141r.getVisibility() == 0) {
            this.f36130i.setClickable(false);
        } else if (this.f36130i.getWebView().canGoBack()) {
            this.f36130i.getWebView().goBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        if (!TextUtils.isEmpty(this.f36142s)) {
            this.f36147x = Uri.parse(this.f36142s).getQueryParameter("word");
        }
        this.f36144u = com.join.mgps.pref.h.n(this).w().getSniffer_down_load_domain();
        this.f36148y = new SimpleSheetView(this, getResources().getString(R.string.sniffing_result_sheet_title, 0), new a());
        this.f36132k.setOnTouchListener(new b());
        Iterator<TipBean> it2 = this.f36143t.getTipBeans().iterator();
        while (it2.hasNext()) {
            TipBean next = it2.next();
            String id = next.getId();
            if (!id.equals(ConstantIntEnum.DATA.value() + "")) {
                String id2 = next.getId();
                if (!id2.equals(ConstantIntEnum.OBB.value() + "")) {
                    String id3 = next.getId();
                    if (id3.equals(ConstantIntEnum.OBBDATA.value() + "")) {
                    }
                }
            }
            this.A = true;
        }
        com.join.mgps.Util.c0.a().d(this);
        T0();
        this.f36127f.setText(this.f36142s);
        Y0(this.f36142s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void b1() {
        if (this.f36141r.getVisibility() == 0) {
            this.f36130i.setClickable(false);
        } else {
            this.f36130i.w(this.f36142s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c1() {
        LJWebView lJWebView = this.f36130i;
        if (lJWebView == null) {
            return;
        }
        if (!lJWebView.getWebView().canGoBack()) {
            this.f36135n.setBackgroundResource(R.drawable.back_f1_disable);
        } else {
            this.f36135n.setBackgroundResource(R.drawable.back_f1);
        }
        if (!this.f36130i.getWebView().canGoForward()) {
            this.f36137o.setBackgroundResource(R.drawable.back_f2_disable);
        } else {
            this.f36137o.setBackgroundResource(R.drawable.back_f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkDownlodingNumber() {
        this.J = g1.f.G().O();
        this.K = g1.f.G().S(this);
        updateLine(g1.f.G().W());
        int i2 = this.J;
        if (i2 != 0) {
            updateDownloadingPoint(i2);
        } else if (this.K != 0) {
            updateNoOpenPoint();
        } else {
            updateHidePoint();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void close() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void d1() {
        try {
            this.f36131j.setVisibility(8);
            this.f36132k.setVisibility(8);
            LJWebView lJWebView = this.f36130i;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void downloadLayout() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
        this.C.p();
        this.H.setVisibility(8);
        this.f36129h.isNewFinishedGame().g(Boolean.FALSE);
        this.B.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e1() {
        try {
            this.f36131j.setVisibility(0);
            this.f36132k.setVisibility(8);
            LJWebView lJWebView = this.f36130i;
            if (lJWebView != null) {
                lJWebView.setVisibility(8);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f1() {
        if (this.f36148y.getMixins().size() > 0) {
            N0();
        } else {
            O0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void g1() {
        if (this.f36141r.getVisibility() == 0) {
            this.f36130i.setClickable(false);
        } else if (!com.join.android.app.common.utils.f.j(this)) {
            com.join.mgps.Util.i2.a(this).b(getResources().getString(R.string.net_connect_failed));
            O0(false);
        } else {
            this.f36141r.setText(R.string.sniffing);
            this.f36141r.setVisibility(0);
            this.f36132k.setVisibility(0);
            if (TextUtils.isEmpty(this.f36142s)) {
                O0(false);
                return;
            }
            try {
                String queryParameter = Uri.parse(this.f36142s).getQueryParameter("word");
                if (U0(this.f36142s) && !TextUtils.isEmpty(queryParameter) && queryParameter.equals(this.f36147x)) {
                    this.f36148y.getMixins().clear();
                    K0(this.f36142s);
                } else if (V0(this.f36142s)) {
                    this.f36148y.getMixins().clear();
                    M0(this.f36142s);
                } else {
                    O0(false);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getdownloadTask() {
        List<DownloadTask> d4 = g1.f.G().d();
        this.f36136n0 = d4;
        if (d4 == null || d4.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f36136n0) {
            if (downloadTask.getCrc_link_type_val() != null) {
                this.f36138o0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        DownloadTask a4 = lVar.a();
        switch (lVar.c()) {
            case 2:
                updateUI(a4, 1);
                return;
            case 3:
                updateUI(a4, 2);
                return;
            case 4:
            case 9:
            default:
                return;
            case 5:
            case 11:
                updateUI(a4, 5);
                return;
            case 6:
                updateUI(a4, 6);
                return;
            case 7:
                a4.setStatus(7);
                updateUI(a4, 3);
                return;
            case 8:
                updateUI(a4, 4);
                return;
            case 10:
                if (a4 == null) {
                    return;
                }
                updateUI(a4, 7);
                return;
            case 12:
                updateUI(a4, 8);
                return;
            case 13:
                updateUI(a4, 9);
                return;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && this.f36130i.getWebView().canGoBack()) {
            this.f36130i.getWebView().goBack();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        checkDownlodingNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f36136n0.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.f36138o0.remove(next.getCrc_link_type_val());
                it2.remove();
                List<DownloadTask> N = g1.f.G().N(null);
                if (N != null && N.size() == 0) {
                    this.f36129h.isNewFinishedGame().g(Boolean.FALSE);
                    this.B.setVisibility(8);
                }
                checkDownlodingNumber();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveStart(DownloadTask downloadTask, int i2) {
        UtilsMy.D3(this.f36136n0);
        Map<String, DownloadTask> map = this.f36138o0;
        if (map == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f36136n0.add(downloadTask);
            this.f36138o0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            this.C.setTextArray(new String[]{"", "size", "", "size"});
            this.C.setIsStop(false);
            this.C.n();
            checkDownlodingNumber();
        } else if (i2 != 1 && i2 != 7) {
            if (downloadTask.getStatus() == 3 || downloadTask.getStatus() == 6) {
                checkDownlodingNumber();
            }
        } else {
            checkDownlodingNumber();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f36138o0;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f36136n0.add(downloadTask);
            this.f36138o0.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f36138o0.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        checkDownlodingNumber();
        this.f36129h.isNewFinishedGame().g(Boolean.TRUE);
        this.B.setVisibility(0);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        com.join.mgps.Util.z1.o(this, -1, true);
    }

    @UiThread
    public void showLoading() {
        try {
            this.f36127f.setText(this.f36142s);
            this.f36132k.setVisibility(8);
            this.f36132k.setClickable(false);
            this.f36131j.setVisibility(8);
            LJWebView lJWebView = this.f36130i;
            if (lJWebView != null) {
                lJWebView.setVisibility(0);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    void startLineAnimation() {
        this.G.setImageResource(R.drawable.line_blue_bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.img_translate);
        this.I = loadAnimation;
        loadAnimation.setFillAfter(true);
        this.H.setVisibility(0);
        this.H.startAnimation(this.I);
        this.I.setAnimationListener(new e());
    }

    void stopLineAnimation() {
        this.H.clearAnimation();
        this.H.setVisibility(8);
        this.G.setImageResource(R.drawable.line_grey_bg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadingPoint(int i2) {
        this.D.setVisibility(0);
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.D.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.D.setLayoutParams(layoutParams);
            this.D.setCompoundDrawables(null, null, null, null);
            this.D.setBackgroundResource(R.drawable.mygame_big_round);
            this.D.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.D.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.D.setGravity(17);
            this.D.setLayoutParams(layoutParams2);
            this.D.setCompoundDrawables(null, null, null, null);
            this.D.setBackgroundResource(R.drawable.message_round);
            this.D.setPadding(1, 0, 2, 1);
        }
        TextView textView = this.D;
        textView.setText(i2 + "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHidePoint() {
        stopLineAnimation();
        this.D.setVisibility(8);
        this.D.setText("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateLine(int i2) {
        this.C.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
        if (i2 == 0) {
            stopLineAnimation();
            return;
        }
        this.G.setImageResource(R.drawable.line_blue_bg);
        startLineAnimation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateNoOpenPoint() {
        stopLineAnimation();
        this.D.setVisibility(8);
        this.D.setText("");
        Drawable drawable = getResources().getDrawable(R.drawable.mygame_litle_round);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            if (i2 != 1 && i2 != 2) {
                if (i2 == 3) {
                    receiveDelete(downloadTask);
                    return;
                } else if (i2 == 5) {
                    receiveSuccess(downloadTask);
                    return;
                } else if (i2 != 7 && i2 != 8 && i2 != 9) {
                    return;
                }
            }
            receiveStart(downloadTask, i2);
        }
    }
}
