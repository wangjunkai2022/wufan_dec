package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CustomCircleProgressBar;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.EverdayLogin;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.WebAccountDataBean;
import com.join.mgps.receiver.BootReceiver_;
import com.join.mgps.service.CommonService_;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.home_popup_adqw_activity)
/* loaded from: classes3.dex */
public class HomePopupAdQWActivity extends Activity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f32704a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    MultiTouchViewPager f32705b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    CircleIndicator f32706c;
    @ViewById

    /* renamed from: d  reason: collision with root package name */
    CustomCircleProgressBar f32707d;
    @ViewById

    /* renamed from: e  reason: collision with root package name */
    TextView f32708e;
    @ViewById

    /* renamed from: f  reason: collision with root package name */
    TextView f32709f;
    @ViewById

    /* renamed from: g  reason: collision with root package name */
    RelativeLayout f32710g;
    @Extra

    /* renamed from: h  reason: collision with root package name */
    String f32711h;
    @Extra

    /* renamed from: i  reason: collision with root package name */
    EverdayLogin f32712i;

    /* renamed from: k  reason: collision with root package name */
    PopupAdBean f32714k;

    /* renamed from: l  reason: collision with root package name */
    c f32715l;

    /* renamed from: q  reason: collision with root package name */
    Context f32720q;

    /* renamed from: r  reason: collision with root package name */
    private WebView f32721r;

    /* renamed from: s  reason: collision with root package name */
    BootReceiver_ f32722s;

    /* renamed from: u  reason: collision with root package name */
    com.github.snowdream.android.app.downloader.c f32724u;
    @Extra

    /* renamed from: j  reason: collision with root package name */
    boolean f32713j = false;

    /* renamed from: m  reason: collision with root package name */
    boolean f32716m = false;

    /* renamed from: n  reason: collision with root package name */
    boolean f32717n = false;

    /* renamed from: o  reason: collision with root package name */
    private Handler f32718o = new Handler();

    /* renamed from: p  reason: collision with root package name */
    EverdayLogin f32719p = null;

    /* renamed from: t  reason: collision with root package name */
    Handler f32723t = new b();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    class b extends Handler {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(HomePopupAdQWActivity.this);
                HomePopupAdQWActivity homePopupAdQWActivity = HomePopupAdQWActivity.this;
                g02.u(homePopupAdQWActivity, homePopupAdQWActivity.f32724u.j());
            }
        }

        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(HomePopupAdQWActivity.this);
                HomePopupAdQWActivity homePopupAdQWActivity = HomePopupAdQWActivity.this;
                g02.u(homePopupAdQWActivity, homePopupAdQWActivity.f32724u.j());
                HomePopupAdQWActivity.this.f32707d.setProgress(100);
                HomePopupAdQWActivity.this.f32710g.setVisibility(0);
                HomePopupAdQWActivity.this.f32709f.setVisibility(0);
                HomePopupAdQWActivity.this.f32709f.setOnClickListener(new a());
            } else if (i2 == 2) {
                HomePopupAdQWActivity.this.f32707d.setProgress(1);
                HomePopupAdQWActivity.this.f32710g.setVisibility(0);
            } else if (i2 == 4) {
                com.join.mgps.Util.i2.a(HomePopupAdQWActivity.this.f32720q).b("下载失败");
            } else if (i2 != 5) {
            } else {
                HomePopupAdQWActivity.this.f32707d.setProgress(message.arg1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class c extends PagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<Object> f32728a;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomePopupAdQWActivity.this.finish();
            }
        }

        /* loaded from: classes3.dex */
        class b extends com.facebook.drawee.controller.b<com.facebook.imagepipeline.image.f> {
            b() {
            }

            @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
            /* renamed from: h */
            public void d(String str, com.facebook.imagepipeline.image.f fVar, Animatable animatable) {
                super.d(str, fVar, animatable);
            }
        }

        /* renamed from: com.join.mgps.activity.HomePopupAdQWActivity$c$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0151c implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f32732a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ RecomDatabean f32733b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Context f32734c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ AppBeanMain f32735d;

            View$OnClickListenerC0151c(String str, RecomDatabean recomDatabean, Context context, AppBeanMain appBeanMain) {
                this.f32732a = str;
                this.f32733b = recomDatabean;
                this.f32734c = context;
                this.f32735d = appBeanMain;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f32732a.startsWith(com.facebook.common.util.f.f11765a)) {
                    HomePopupAdQWActivity.this.g(this.f32732a, this.f32733b.getMain().getSub_title());
                } else {
                    ((CommonService_.u1) CommonService_.d2(this.f32734c).extra("downGameId", this.f32735d.getCrc_link_type_val())).a();
                }
                HomePopupAdQWActivity.this.finish();
            }
        }

        /* loaded from: classes3.dex */
        class d implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f32737a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ RecomDatabean f32738b;

            d(String str, RecomDatabean recomDatabean) {
                this.f32737a = str;
                this.f32738b = recomDatabean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f32737a.startsWith(com.facebook.common.util.f.f11765a)) {
                    HomePopupAdQWActivity.this.g(this.f32737a, this.f32738b.getMain().getSub_title());
                    return;
                }
                HomePopupAdQWActivity.this.j(view.getContext(), this.f32738b.getSub().get(0));
                HomePopupAdQWActivity.this.finish();
            }
        }

        /* loaded from: classes3.dex */
        class e extends WebChromeClient {
            e() {
            }
        }

        /* loaded from: classes3.dex */
        class f extends WebViewClient {
            f() {
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }
        }

        public c() {
        }

        public List<Object> b() {
            return this.f32728a;
        }

        public void c(List<Object> list) {
            this.f32728a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<Object> list = this.f32728a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            Uri parse;
            Object obj = this.f32728a.get(i2);
            if (obj instanceof RecomDatabean) {
                RecomDatabean recomDatabean = (RecomDatabean) obj;
                String pic_remote = recomDatabean.getMain().getPic_remote();
                Context context = viewGroup.getContext();
                View inflate = LayoutInflater.from(context).inflate(R.layout.home_popup_ad_item, (ViewGroup) null);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.adImage);
                TextView textView = (TextView) inflate.findViewById(R.id.downLoadView);
                HomePopupAdQWActivity.this.findViewById(R.id.close).setOnClickListener(new a());
                simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
                com.facebook.drawee.backends.pipeline.e newDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
                if (HomePopupAdQWActivity.this.k(pic_remote)) {
                    parse = com.join.mgps.Util.k0.j(new File(com.join.mgps.Util.u.b(HomePopupAdQWActivity.this), com.join.mgps.Util.g0.o(pic_remote)));
                } else {
                    parse = Uri.parse(pic_remote);
                }
                newDraweeControllerBuilder.a(parse);
                newDraweeControllerBuilder.c(simpleDraweeView.getController());
                newDraweeControllerBuilder.H(new b());
                simpleDraweeView.setController(newDraweeControllerBuilder.build());
                simpleDraweeView.setClickable(true);
                try {
                    viewGroup.addView(inflate, -1, -1);
                    AppBeanMain appBeanMain = recomDatabean.getSub().get(0);
                    String link_type_val = appBeanMain.getLink_type_val();
                    if (appBeanMain.getLink_type() == 17) {
                        appBeanMain.setLink_type(1);
                        textView.setOnClickListener(new View$OnClickListenerC0151c(link_type_val, recomDatabean, context, appBeanMain));
                    }
                    simpleDraweeView.setOnClickListener(new d(link_type_val, recomDatabean));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return inflate;
            } else if (obj instanceof EverdayLogin) {
                View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.home_popup_ad_everdaylogin, (ViewGroup) null);
                HomePopupAdQWActivity.this.f32721r = (WebView) inflate2.findViewById(R.id.webView);
                HomePopupAdQWActivity.this.f32721r.setBackgroundColor(0);
                HomePopupAdQWActivity.this.f32721r.getBackground().setAlpha(0);
                HomePopupAdQWActivity.this.f32721r.getSettings().setJavaScriptEnabled(true);
                HomePopupAdQWActivity.this.f32721r.loadUrl(((EverdayLogin) obj).getFilePath());
                HomePopupAdQWActivity.this.f32721r.setHorizontalScrollBarEnabled(false);
                HomePopupAdQWActivity.this.f32721r.setVerticalScrollBarEnabled(false);
                HomePopupAdQWActivity.this.f32721r.setWebChromeClient(new e());
                HomePopupAdQWActivity.this.f32721r.setWebViewClient(new f());
                HomePopupAdQWActivity.this.f32721r.addJavascriptInterface(new d(), "papa");
                viewGroup.addView(inflate2, -1, -1);
                return inflate2;
            } else {
                return new TextView(viewGroup.getContext());
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    /* loaded from: classes3.dex */
    class d {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f32743a;

            a(String str) {
                this.f32743a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().intentActivity(HomePopupAdQWActivity.this.f32720q, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f32743a, IntentDateBean.class));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        d() {
        }

        @JavascriptInterface
        public String getAccountVer2() {
            WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
            AccountBean accountData = AccountUtil_.getInstance_(HomePopupAdQWActivity.this).getAccountData();
            if (accountData != null) {
                webAccountDataBean.setAccountBean(accountData);
                webAccountDataBean.setHasLogin(true);
            } else {
                webAccountDataBean.setHasLogin(false);
            }
            return JsonMapper.getInstance().toJson(webAccountDataBean);
        }

        @JavascriptInterface
        public void getRewards(boolean z3) {
            if (z3) {
                HomePopupAdQWActivity.this.f32719p.setHasGetGiftTime(System.currentTimeMillis());
                com.join.mgps.pref.h.n(HomePopupAdQWActivity.this).Y(JsonMapper.getInstance().toJson(HomePopupAdQWActivity.this.f32719p));
            }
        }

        @JavascriptInterface
        public int getint() {
            return 100222;
        }

        @JavascriptInterface
        public void startIntent(String str) {
            HomePopupAdQWActivity.this.f32718o.post(new a(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.A})
    public void d() {
        WebView webView = this.f32721r;
        if (webView != null) {
            webView.loadUrl("javascript:reloadEveryDayReceive()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void e() {
        List<RecomDatabean> big_pic;
        EverdayLogin everdayLogin;
        this.f32720q = this;
        try {
            this.f32722s = new BootReceiver_();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(BootReceiver_.f51451a);
            intentFilter.addAction(BootReceiver_.f51452b);
            intentFilter.addAction(BootReceiver_.f51454d);
            intentFilter.addAction(BootReceiver_.f51456f);
            intentFilter.addDataScheme("package");
            intentFilter.setPriority(Integer.MAX_VALUE);
            registerReceiver(this.f32722s, intentFilter);
            PopupAdBean popupAdBean = (PopupAdBean) JsonMapper.getInstance().fromJson(com.join.mgps.Util.d2.g(this.f32711h), PopupAdBean.class);
            this.f32714k = popupAdBean;
            if (popupAdBean != null && popupAdBean.getAd_switch().equals("1")) {
                this.f32716m = true;
            }
            if (!this.f32716m && !this.f32717n) {
                finish();
            }
            ArrayList arrayList = new ArrayList();
            if (this.f32717n && (everdayLogin = this.f32719p) != null) {
                arrayList.add(everdayLogin);
            }
            if (this.f32716m && (big_pic = this.f32714k.getBig_pic()) != null) {
                arrayList.addAll(big_pic);
            }
            this.f32715l = new c();
            if (arrayList.size() == 1) {
                this.f32706c.setVisibility(8);
            }
            this.f32715l.c(arrayList);
            this.f32705b.setAdapter(this.f32715l);
            this.f32706c.setViewPager(this.f32705b);
            if (this.f32716m) {
                try {
                    this.f32704a.getHierarchy().x(r.c.f12138a);
                    if (this.f32714k.getMore() != null && this.f32714k.getMore().size() > 0 && this.f32714k.getMore().get(0).getMain().getAd_switch() == 1) {
                        if (this.f32704a.getVisibility() != 0) {
                            this.f32704a.setVisibility(0);
                        }
                        this.f32704a.setOnClickListener(new a());
                        MyImageLoader.h(this.f32704a, this.f32714k.getMore().get(0).getMain().getPic_remote());
                        return;
                    }
                    this.f32704a.setVisibility(8);
                    this.f32704a.setOnClickListener(null);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.f65492o})
    public void f(Intent intent) {
        intent.getStringExtra("packageName");
        String stringExtra = intent.getStringExtra("actionFrom");
        if (stringExtra.equals(BootReceiver_.f51451a)) {
            if (this.f32710g.getVisibility() == 0) {
                finish();
            }
        } else if (stringExtra.equals(BootReceiver_.f51452b)) {
        } else {
            stringExtra.equals(BootReceiver_.f51454d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void g(String str, String str2) {
        String i2 = i(str);
        String substring = i2.substring(i2.lastIndexOf(47) + 1);
        if (substring.length() > 15) {
            substring = substring.substring(0, 14);
        }
        TextView textView = this.f32708e;
        textView.setText(str2 + "正在下载");
        m(substring + "下载中");
        h(i2, substring);
    }

    void h(String str, String str2) {
        com.github.snowdream.android.app.downloader.c cVar = new com.github.snowdream.android.app.downloader.c(str, str2, com.join.mgps.Util.u.f27846e, 0L);
        this.f32724u = cVar;
        cVar.r(this.f32723t);
        this.f32724u.run();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
        if (r0 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String i(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = "Android"
            android.net.http.AndroidHttpClient r0 = android.net.http.AndroidHttpClient.newInstance(r0)
            org.apache.http.client.methods.HttpGet r1 = new org.apache.http.client.methods.HttpGet
            r1.<init>(r6)
            org.apache.http.HttpResponse r1 = r0.execute(r1)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            org.apache.http.StatusLine r2 = r1.getStatusLine()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            int r2 = r2.getStatusCode()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            r3.<init>()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            java.lang.String r4 = "code:"
            r3.append(r4)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            r3.append(r2)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 == r3) goto L4c
            java.lang.String r2 = "Location"
            org.apache.http.Header[] r1 = r1.getHeaders(r2)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            if (r1 == 0) goto L4c
            int r2 = r1.length     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            if (r2 <= 0) goto L4c
            int r2 = r1.length     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            int r2 = r2 + (-1)
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            java.lang.String r1 = r1.getValue()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            java.lang.String r6 = r5.i(r1)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L46
            r0.close()
            return r6
        L44:
            r6 = move-exception
            goto L50
        L46:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L4f
        L4c:
            r0.close()
        L4f:
            return r6
        L50:
            if (r0 == 0) goto L55
            r0.close()
        L55:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.activity.HomePopupAdQWActivity.i(java.lang.String):java.lang.String");
    }

    public void j(Context context, AppBeanMain appBeanMain) {
        if (appBeanMain == null) {
            return;
        }
        IntentUtil.getInstance().intentActivity(context, new IntentDateBean(appBeanMain.getLink_type(), appBeanMain.getJump_type(), appBeanMain.getLink_type_val(), appBeanMain.getCrc_link_type_val(), appBeanMain.getTpl_type(), null));
    }

    boolean k(String str) {
        return new File(com.join.mgps.Util.u.b(this), com.join.mgps.Util.g0.o(str)).exists();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void l() {
        setResult(1);
        if (this.f32710g.getVisibility() == 8) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m(String str) {
        com.join.mgps.Util.i2.a(this.f32720q).b(str);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BootReceiver_ bootReceiver_ = this.f32722s;
        if (bootReceiver_ != null) {
            unregisterReceiver(bootReceiver_);
        }
    }
}
