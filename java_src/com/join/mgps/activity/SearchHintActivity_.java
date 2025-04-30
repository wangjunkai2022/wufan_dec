package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.search.SearchIndexData;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SearchHintActivity_ extends SearchHintActivity implements g3.a, i3.a, i3.b {
    public static final String M0 = "keyword";
    public static final String N0 = "from";
    public static final String O0 = "keywords";
    public static final String P0 = "interval";
    private final i3.c K0 = new i3.c();
    private final Map<Class<?>, Object> L0 = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.q1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.s1();
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIndexData f35112a;

        c(SearchIndexData searchIndexData) {
            this.f35112a = searchIndexData;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.w1(this.f35112a);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.h1();
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f35115a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35116b;

        e(List list, int i2) {
            this.f35115a = list;
            this.f35116b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.y1(this.f35115a, this.f35116b);
        }
    }

    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.serverConnectionException();
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.g1();
        }
    }

    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35120a;

        h(int i2) {
            this.f35120a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.I0(this.f35120a);
        }
    }

    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35122a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35122a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.m1(this.f35122a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.d1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.k1();
        }
    }

    /* loaded from: classes3.dex */
    class l extends a.c {
        l(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.P0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35128a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35128a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.O0(this.f35128a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35130a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f35131b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f35130a = str3;
            this.f35131b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.U0(this.f35130a, this.f35131b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p extends a.c {
        p(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchHintActivity_.super.R0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.t1();
        }
    }

    /* loaded from: classes3.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity_.this.L0();
        }
    }

    /* loaded from: classes3.dex */
    class u implements TextView.OnEditorActionListener {
        u() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            return SearchHintActivity_.this.l1(textView, i2, keyEvent);
        }
    }

    /* loaded from: classes3.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.r1();
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.z1();
        }
    }

    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchHintActivity_.super.p1();
        }
    }

    /* loaded from: classes3.dex */
    public static class y extends org.androidannotations.api.builder.a<y> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35142a;

        public y(Context context) {
            super(context, SearchHintActivity_.class);
        }

        public y a(int i2) {
            return (y) super.extra("from", i2);
        }

        public y b(int i2) {
            return (y) super.extra("interval", i2);
        }

        public y c(String str) {
            return (y) super.extra("keyword", str);
        }

        public y d(ArrayList<String> arrayList) {
            return (y) super.extra(SearchHintActivity_.O0, arrayList);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35142a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, i2);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, i2, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public y(Fragment fragment) {
            super(fragment.getActivity(), SearchHintActivity_.class);
            this.f35142a = fragment;
        }
    }

    public static y S1(Context context) {
        return new y(context);
    }

    public static y T1(Fragment fragment) {
        return new y(fragment);
    }

    private void init_(Bundle bundle) {
        Resources resources = getResources();
        this.f35046w0 = new PrefDef_(this);
        i3.c.b(this);
        this.K = resources.getString(R.string.net_excption);
        this.f35028n0 = resources.getString(R.string.connect_server_excption);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("keyword")) {
                this.f35014a = extras.getString("keyword");
            }
            if (extras.containsKey("from")) {
                this.f35015b = extras.getInt("from");
            }
            if (extras.containsKey(O0)) {
                this.f35016c = extras.getStringArrayList(O0);
            }
            if (extras.containsKey("interval")) {
                this.f35017d = extras.getInt("interval");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void I0(int i2) {
        org.androidannotations.api.b.e("", new h(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void K0() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void O0(String str) {
        org.androidannotations.api.a.l(new n("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void P0() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void R0() {
        org.androidannotations.api.a.l(new p("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void U0(String str, int i2) {
        org.androidannotations.api.a.l(new o("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void d1() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void g1() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.L0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void h1() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void m1(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.K0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.search_hint_activity);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35018e = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f35019f = aVar.internalFindViewById(R.id.requestLayout);
        this.f35020g = (ViewFlipper) aVar.internalFindViewById(R.id.vf);
        this.f35022i = (EditText) aVar.internalFindViewById(R.id.searchEditText);
        this.f35023j = (ImageView) aVar.internalFindViewById(R.id.img_search);
        this.f35024k = (ImageView) aVar.internalFindViewById(R.id.searchClear);
        this.f35025l = aVar.internalFindViewById(R.id.img_iconback);
        this.f35026m = (LinearLayout) aVar.internalFindViewById(R.id.clearLayout);
        this.f35027n = aVar.internalFindViewById(R.id.recommend);
        this.f35029o = (WrapContentGridView) aVar.internalFindViewById(R.id.wrapGridView);
        this.f35031p = (WrapContentGridView) aVar.internalFindViewById(R.id.gameListGrid);
        this.f35033q = (FlowLayout) aVar.internalFindViewById(R.id.flowLayout);
        this.f35035r = aVar.internalFindViewById(R.id.llHotSearch);
        this.f35037s = aVar.internalFindViewById(R.id.llHotTag);
        this.f35039t = aVar.internalFindViewById(R.id.llGameList);
        this.f35041u = aVar.internalFindViewById(R.id.llRecent);
        this.f35043v = (SimpleDraweeView) aVar.internalFindViewById(R.id.ad);
        this.f35045w = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f35047x = (TabLayout) aVar.internalFindViewById(R.id.tabLayout);
        this.f35049y = (FlowLayout) aVar.internalFindViewById(R.id.historyFlow);
        this.f35051z = (FlowLayout) aVar.internalFindViewById(R.id.guessLickFlow);
        this.A = aVar.internalFindViewById(R.id.guessliketext);
        this.B = (ListView) aVar.internalFindViewById(R.id.autoListView);
        View internalFindViewById = aVar.internalFindViewById(R.id.tv_search);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.clearHistoryx);
        ImageView imageView = this.f35024k;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.f35023j;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new q());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new r());
        }
        View view = this.f35025l;
        if (view != null) {
            view.setOnClickListener(new s());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new t());
        }
        EditText editText = this.f35022i;
        if (editText != null) {
            editText.setOnEditorActionListener(new u());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void p1() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.L0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void q1() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void r1() {
        org.androidannotations.api.b.e("", new v(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void s1() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void serverConnectionException() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.K0.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void w1(SearchIndexData searchIndexData) {
        org.androidannotations.api.b.e("", new c(searchIndexData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void y1(List<SearchAutoDataBean> list, int i2) {
        org.androidannotations.api.b.e("", new e(list, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchHintActivity
    public void z1() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.K0.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.K0.a(this);
    }
}
