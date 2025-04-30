package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.SearchAutoDataBean;
import com.zhy.view.flowlayout.TagFlowLayout3;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* loaded from: classes3.dex */
public final class SearchListActivity1_ extends SearchListActivity1 implements g3.a, i3.a, i3.b {
    public static final String I = "currentTab";
    public static final String J = "game_id";
    public static final String K = "keyword";

    /* renamed from: n0  reason: collision with root package name */
    public static final String f35229n0 = "isNeedRecommend";
    private final i3.c G = new i3.c();
    private final Map<Class<?>, Object> H = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35230a;

        a(String str) {
            this.f35230a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.F0(this.f35230a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f35232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35233b;

        b(List list, String str) {
            this.f35232a = list;
            this.f35233b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.j1(this.f35232a, this.f35233b);
        }
    }

    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchListActivity1_.super.W0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchListActivity1_.super.a1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f35237a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f35237a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                SearchListActivity1_.super.N0(this.f35237a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.back();
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.search();
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.clear();
        }
    }

    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.X0();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.Y0();
        }
    }

    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchListActivity1_.this.Z0();
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ClassfyTypeBean f35245a;

        l(ClassfyTypeBean classfyTypeBean) {
            this.f35245a = classfyTypeBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.c1(this.f35245a);
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f35247a;

        m(int i2) {
            this.f35247a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.h1(this.f35247a);
        }
    }

    /* loaded from: classes3.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f35249a;

        n(boolean z3) {
            this.f35249a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1_.super.P0(this.f35249a);
        }
    }

    /* loaded from: classes3.dex */
    public static class o extends org.androidannotations.api.builder.a<o> {

        /* renamed from: a  reason: collision with root package name */
        private Fragment f35251a;

        public o(Context context) {
            super(context, SearchListActivity1_.class);
        }

        public o a(int i2) {
            return (o) super.extra("currentTab", i2);
        }

        public o b(String str) {
            return (o) super.extra("game_id", str);
        }

        public o c(boolean z3) {
            return (o) super.extra(SearchListActivity1_.f35229n0, z3);
        }

        public o d(String str) {
            return (o) super.extra("keyword", str);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int i2) {
            Fragment fragment = this.f35251a;
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

        public o(Fragment fragment) {
            super(fragment.getActivity(), SearchListActivity1_.class);
            this.f35251a = fragment;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("currentTab")) {
                this.f35195m = extras.getInt("currentTab");
            }
            if (extras.containsKey("game_id")) {
                this.f35196n = extras.getString("game_id");
            }
            if (extras.containsKey("keyword")) {
                this.f35197o = extras.getString("keyword");
            }
            if (extras.containsKey(f35229n0)) {
                this.f35198p = extras.getBoolean(f35229n0);
            }
        }
    }

    public static o s1(Context context) {
        return new o(context);
    }

    public static o t1(Fragment fragment) {
        return new o(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void F0(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void N0(String str) {
        org.androidannotations.api.a.l(new e("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void P0(boolean z3) {
        org.androidannotations.api.b.e("", new n(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void W0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void a1() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void c1(ClassfyTypeBean classfyTypeBean) {
        org.androidannotations.api.b.e("", new l(classfyTypeBean), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.H.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void h1(int i2) {
        org.androidannotations.api.b.e("", new m(i2), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        return (T) findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.SearchListActivity1
    public void j1(List<SearchAutoDataBean> list, String str) {
        org.androidannotations.api.b.e("", new b(list, str), 0L);
    }

    @Override // com.join.mgps.activity.SearchListActivity1, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.G);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
        setContentView(R.layout.search_list_activity1);
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f35183a = aVar.internalFindViewById(R.id.clear);
        this.f35184b = aVar.internalFindViewById(R.id.tagBackground);
        this.f35185c = (TagFlowLayout3) aVar.internalFindViewById(R.id.languages);
        this.f35186d = (TagFlowLayout3) aVar.internalFindViewById(R.id.classifies);
        this.f35187e = (EditText) aVar.internalFindViewById(R.id.input);
        this.f35188f = (TabLayout) aVar.internalFindViewById(R.id.tabLayout);
        this.f35189g = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f35190h = (ListView) aVar.internalFindViewById(R.id.autoListView);
        this.f35191i = (ImageView) aVar.internalFindViewById(R.id.iv_filter);
        this.f35192j = (LinearLayout) aVar.internalFindViewById(R.id.ll_filter);
        View internalFindViewById = aVar.internalFindViewById(R.id.back);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.search);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.tv_filter_close);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.tv_filter_confirm);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g());
        }
        View view = this.f35183a;
        if (view != null) {
            view.setOnClickListener(new h());
        }
        ImageView imageView = this.f35191i;
        if (imageView != null) {
            imageView.setOnClickListener(new i());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new j());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new k());
        }
        afterViews();
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.H.put(cls, t3);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        super.setContentView(i2);
        this.G.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent intent) {
        super.setIntent(intent);
        injectExtras_();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.G.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.G.a(this);
    }
}
