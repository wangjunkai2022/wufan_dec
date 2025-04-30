package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.SearchGameFavoriteListBean;
import com.join.mgps.dto.SearchIntegratedBean;
import com.join.mgps.dto.SearchPostsBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: SearchListFragment_.java */
/* loaded from: classes4.dex */
public final class t4 extends s4 implements g3.a, i3.a, i3.b {
    public static final String B = "currentTab";
    public static final String C = "game_id";
    public static final String D = "keyword";

    /* renamed from: z  reason: collision with root package name */
    private View f50364z;

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f50363y = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.hideLoading();
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t4.super.X();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50367a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f50367a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t4.super.U(this.f50367a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50369a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f50369a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t4.super.V(this.f50369a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50371a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f50371a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t4.super.W(this.f50371a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t4.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t4.this.relodingimag();
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t4.this.setNetwork();
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.k0();
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIntegratedBean f50377a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50378b;

        j(SearchIntegratedBean searchIntegratedBean, int i2) {
            this.f50377a = searchIntegratedBean;
            this.f50378b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.g0(this.f50377a, this.f50378b);
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchGameFavoriteListBean f50380a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50381b;

        k(SearchGameFavoriteListBean searchGameFavoriteListBean, int i2) {
            this.f50380a = searchGameFavoriteListBean;
            this.f50381b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.f0(this.f50380a, this.f50381b);
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchPostsBean f50383a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50384b;

        l(SearchPostsBean searchPostsBean, int i2) {
            this.f50383a = searchPostsBean;
            this.f50384b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.h0(this.f50383a, this.f50384b);
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50386a;

        m(String str) {
            this.f50386a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.T(this.f50386a);
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.showLoadingView();
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50389a;

        o(String str) {
            this.f50389a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t4.super.showLoadFailed(this.f50389a);
        }
    }

    /* compiled from: SearchListFragment_.java */
    /* loaded from: classes4.dex */
    public static class p extends org.androidannotations.api.builder.d<p, s4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public s4 build() {
            t4 t4Var = new t4();
            t4Var.setArguments(this.args);
            return t4Var;
        }

        public p b(int i2) {
            this.args.putInt("currentTab", i2);
            return this;
        }

        public p c(String str) {
            this.args.putString("game_id", str);
            return this;
        }

        public p d(String str) {
            this.args.putString("keyword", str);
            return this;
        }
    }

    public static p D0() {
        return new p();
    }

    private void E0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("currentTab")) {
                this.f50270d = arguments.getInt("currentTab");
            }
            if (arguments.containsKey("game_id")) {
                this.f50271e = arguments.getString("game_id");
            }
            if (arguments.containsKey("keyword")) {
                this.f50272f = arguments.getString("keyword");
            }
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        E0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4, com.join.mgps.fragment.d
    public void T(String str) {
        org.androidannotations.api.b.e("", new m(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void U(int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void V(int i2) {
        org.androidannotations.api.a.l(new d("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void W(int i2) {
        org.androidannotations.api.a.l(new e("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void X() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void e0() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void f0(SearchGameFavoriteListBean searchGameFavoriteListBean, int i2) {
        org.androidannotations.api.b.e("", new k(searchGameFavoriteListBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void g0(SearchIntegratedBean searchIntegratedBean, int i2) {
        org.androidannotations.api.b.e("", new j(searchIntegratedBean, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void h0(SearchPostsBean searchPostsBean, int i2) {
        org.androidannotations.api.b.e("", new l(searchPostsBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void hideLoading() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50364z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void k0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50363y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50364z = onCreateView;
        if (onCreateView == null) {
            this.f50364z = layoutInflater.inflate(R.layout.fragment_search_list, viewGroup, false);
        }
        return this.f50364z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50364z = null;
        this.f50267a = null;
        this.f50281o = null;
        this.f50282p = null;
        this.f50283q = null;
        this.f50284r = null;
        this.f50285s = null;
        this.f50286t = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50267a = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f50281o = aVar.internalFindViewById(R.id.loding_layout);
        this.f50282p = aVar.internalFindViewById(R.id.loding_faile);
        this.f50283q = aVar.internalFindViewById(R.id.relodingimag);
        this.f50284r = (TextView) aVar.internalFindViewById(R.id.failedMessage);
        this.f50285s = (TextView) aVar.internalFindViewById(R.id.setting);
        this.f50286t = (TextView) aVar.internalFindViewById(R.id.setNetwork);
        View view = this.f50283q;
        if (view != null) {
            view.setOnClickListener(new g());
        }
        TextView textView = this.f50286t;
        if (textView != null) {
            textView.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50363y.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void showLoadFailed(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s4
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }
}
