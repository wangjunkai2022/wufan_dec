package com.join.mgps.activity;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import com.BaseActivity;
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
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.EverdayLogin;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.WebAccountDataBean;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import me.relex.circleindicator.CircleIndicator;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;
@EActivity(R.layout.home_popup_ad_activity)
/* loaded from: classes3.dex */
public class HomePopupAdActivity extends BaseActivity {
    @ViewById

    /* renamed from: a  reason: collision with root package name */
    SimpleDraweeView f32666a;
    @ViewById

    /* renamed from: b  reason: collision with root package name */
    MultiTouchViewPager f32667b;
    @ViewById

    /* renamed from: c  reason: collision with root package name */
    CircleIndicator f32668c;
    @Extra

    /* renamed from: d  reason: collision with root package name */
    String f32669d;
    @Extra

    /* renamed from: e  reason: collision with root package name */
    EverdayLogin f32670e;

    /* renamed from: g  reason: collision with root package name */
    PopupAdBean f32672g;

    /* renamed from: h  reason: collision with root package name */
    b f32673h;

    /* renamed from: m  reason: collision with root package name */
    Context f32678m;

    /* renamed from: n  reason: collision with root package name */
    private WebView f32679n;
    @Extra

    /* renamed from: f  reason: collision with root package name */
    boolean f32671f = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f32674i = false;

    /* renamed from: j  reason: collision with root package name */
    boolean f32675j = false;

    /* renamed from: k  reason: collision with root package name */
    private Handler f32676k = new Handler();

    /* renamed from: l  reason: collision with root package name */
    EverdayLogin f32677l = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecomDatabean f32680a;

        a(RecomDatabean recomDatabean) {
            this.f32680a = recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f32680a.getSub() == null || this.f32680a.getSub().size() <= 0) {
                return;
            }
            HomePopupAdActivity.this.I0(view.getContext(), this.f32680a.getSub().get(0));
        }
    }

    /* loaded from: classes3.dex */
    public class b extends PagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<Object> f32682a;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f32684a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ AppBeanMain f32685b;

            a(Context context, AppBeanMain appBeanMain) {
                this.f32684a = context;
                this.f32685b = appBeanMain;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UtilsMy.I0(this.f32684a, this.f32685b);
                HomePopupAdActivity.this.finish();
            }
        }

        /* renamed from: com.join.mgps.activity.HomePopupAdActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0150b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ RecomDatabean f32687a;

            View$OnClickListenerC0150b(RecomDatabean recomDatabean) {
                this.f32687a = recomDatabean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                HomePopupAdActivity.this.I0(view.getContext(), this.f32687a.getSub().get(0));
                HomePopupAdActivity.this.finish();
            }
        }

        /* loaded from: classes3.dex */
        class c extends WebChromeClient {
            c() {
            }
        }

        /* loaded from: classes3.dex */
        class d extends WebViewClient {
            d() {
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }
        }

        public b() {
        }

        public List<Object> b() {
            return this.f32682a;
        }

        public void c(List<Object> list) {
            this.f32682a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<Object> list = this.f32682a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            Uri parse;
            Object obj = this.f32682a.get(i2);
            if (obj instanceof RecomDatabean) {
                RecomDatabean recomDatabean = (RecomDatabean) obj;
                String pic_remote = recomDatabean.getMain().getPic_remote();
                Context context = viewGroup.getContext();
                View inflate = LayoutInflater.from(context).inflate(R.layout.home_popup_ad_item, (ViewGroup) null);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) inflate.findViewById(R.id.adImage);
                TextView textView = (TextView) inflate.findViewById(R.id.downLoadView);
                simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
                com.facebook.drawee.backends.pipeline.e newDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
                if (HomePopupAdActivity.this.isHomePopupAdLocalCached(pic_remote)) {
                    parse = com.join.mgps.Util.k0.j(new File(com.join.mgps.Util.u.b(context), com.join.mgps.Util.g0.o(pic_remote)));
                } else {
                    parse = Uri.parse(pic_remote);
                }
                newDraweeControllerBuilder.a(parse);
                simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().a(Uri.parse(pic_remote)).E(true).build());
                simpleDraweeView.setClickable(true);
                try {
                    viewGroup.addView(inflate, -1, -1);
                    AppBeanMain appBeanMain = recomDatabean.getSub().get(0);
                    if (appBeanMain != null && appBeanMain.getLink_type() == 17) {
                        appBeanMain.setLink_type(1);
                        textView.setOnClickListener(new a(context, appBeanMain));
                    }
                    simpleDraweeView.setOnClickListener(new View$OnClickListenerC0150b(recomDatabean));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return inflate;
            } else if (obj instanceof EverdayLogin) {
                View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.home_popup_ad_everdaylogin, (ViewGroup) null);
                HomePopupAdActivity.this.f32679n = (WebView) inflate2.findViewById(R.id.webView);
                HomePopupAdActivity.this.f32679n.setBackgroundColor(0);
                HomePopupAdActivity.this.f32679n.getBackground().setAlpha(0);
                HomePopupAdActivity.this.f32679n.getSettings().setJavaScriptEnabled(true);
                HomePopupAdActivity.this.f32679n.loadUrl(((EverdayLogin) obj).getFilePath());
                HomePopupAdActivity.this.f32679n.setHorizontalScrollBarEnabled(false);
                HomePopupAdActivity.this.f32679n.setVerticalScrollBarEnabled(false);
                HomePopupAdActivity.this.f32679n.setWebChromeClient(new c());
                HomePopupAdActivity.this.f32679n.setWebViewClient(new d());
                HomePopupAdActivity.this.f32679n.addJavascriptInterface(new c(), "papa");
                HomePopupAdActivity.this.f32679n.setLayerType(1, null);
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
    class c {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f32692a;

            a(String str) {
                this.f32692a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IntentUtil.getInstance().intentActivity(HomePopupAdActivity.this.f32678m, (IntentDateBean) JsonMapper.getInstance().fromJson(this.f32692a, IntentDateBean.class));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        c() {
        }

        @JavascriptInterface
        public String getAccountVer2() {
            WebAccountDataBean webAccountDataBean = new WebAccountDataBean();
            AccountBean accountData = AccountUtil_.getInstance_(HomePopupAdActivity.this).getAccountData();
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
                HomePopupAdActivity.this.f32677l.setHasGetGiftTime(System.currentTimeMillis());
                com.join.mgps.pref.h.n(HomePopupAdActivity.this).Y(JsonMapper.getInstance().toJson(HomePopupAdActivity.this.f32677l));
            }
        }

        @JavascriptInterface
        public int getint() {
            return 100222;
        }

        @JavascriptInterface
        public void startIntent(String str) {
            HomePopupAdActivity.this.f32676k.post(new a(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Receiver(actions = {f1.a.A})
    public void H0() {
        WebView webView = this.f32679n;
        if (webView != null) {
            webView.loadUrl("javascript:reloadEveryDayReceive()");
        }
    }

    public void I0(Context context, AppBeanMain appBeanMain) {
        if (appBeanMain == null) {
            return;
        }
        PopupAdBean popupAdBean = this.f32672g;
        if (popupAdBean != null && com.join.mgps.Util.d2.i(popupAdBean.getTag()) && "SP_001".equals(this.f32672g.getTag())) {
            com.papa.sim.statistic.p.l(context).p("fingerClickAdPop", "", AccountUtil_.getInstance_(context).getUid());
        }
        IntentDateBean intentDateBean = new IntentDateBean(appBeanMain.getLink_type(), appBeanMain.getJump_type(), appBeanMain.getLink_type_val(), appBeanMain.getCrc_link_type_val(), appBeanMain.getTpl_type(), null);
        intentDateBean.setExtBean(new ExtBean(13202));
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void J0() {
        setResult(1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        List<RecomDatabean> big_pic;
        EverdayLogin everdayLogin;
        this.f32678m = this;
        try {
            PopupAdBean popupAdBean = (PopupAdBean) JsonMapper.getInstance().fromJson(com.join.mgps.Util.d2.g(this.f32669d), PopupAdBean.class);
            this.f32672g = popupAdBean;
            if (popupAdBean != null && popupAdBean.getAd_switch().equals("1")) {
                this.f32674i = true;
            }
            if (!this.f32674i && !this.f32675j) {
                finish();
            }
            ArrayList arrayList = new ArrayList();
            if (this.f32675j && (everdayLogin = this.f32677l) != null) {
                arrayList.add(everdayLogin);
            }
            if (this.f32674i && (big_pic = this.f32672g.getBig_pic()) != null) {
                arrayList.addAll(big_pic);
            }
            this.f32673h = new b();
            if (arrayList.size() == 1) {
                this.f32668c.setVisibility(8);
            }
            this.f32673h.c(arrayList);
            this.f32667b.setAdapter(this.f32673h);
            this.f32668c.setViewPager(this.f32667b);
            if (this.f32674i) {
                try {
                    this.f32666a.getHierarchy().x(r.c.f12138a);
                    if (this.f32672g.getMore() != null && this.f32672g.getMore().size() > 0 && this.f32672g.getMore().get(0).getMain().getAd_switch() == 1) {
                        if (this.f32666a.getVisibility() != 0) {
                            this.f32666a.setVisibility(0);
                        }
                        RecomDatabean recomDatabean = this.f32672g.getMore().get(0);
                        this.f32666a.setOnClickListener(new a(recomDatabean));
                        MyImageLoader.h(this.f32666a, recomDatabean.getMain().getPic_remote());
                        return;
                    }
                    this.f32666a.setVisibility(8);
                    this.f32666a.setOnClickListener(null);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    boolean isHomePopupAdLocalCached(String str) {
        return new File(com.join.mgps.Util.u.b(this.f32678m), com.join.mgps.Util.g0.o(str)).exists();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
