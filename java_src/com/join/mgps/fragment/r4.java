package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.SearchGameListBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: SearchGameListFragment_.java */
/* loaded from: classes4.dex */
public final class r4 extends q4 implements g3.a, i3.a, i3.b {
    public static final String G = "currentTab";
    public static final String H = "game_id";
    public static final String I = "keyword";
    private View E;
    private final i3.c D = new i3.c();
    private final Map<Class<?>, Object> F = new HashMap();

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50050a;

        a(String str) {
            this.f50050a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.showLoadFailed(this.f50050a);
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.hideLoading();
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50053a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f50054b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2, boolean z3) {
            super(str, j4, str2);
            this.f50053a = i2;
            this.f50054b = z3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r4.super.Z(this.f50053a, this.f50054b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                r4.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r4.this.relodingimag();
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r4.this.setNetwork();
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.S();
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.k0();
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50061a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f50062b;

        i(List list, boolean z3) {
            this.f50061a = list;
            this.f50062b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.i0(this.f50061a, this.f50062b);
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchGameListBean f50064a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50065b;

        j(SearchGameListBean searchGameListBean, int i2) {
            this.f50064a = searchGameListBean;
            this.f50065b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.h0(this.f50064a, this.f50065b);
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f50067a;

        k(boolean z3) {
            this.f50067a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.j0(this.f50067a);
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50069a;

        l(String str) {
            this.f50069a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.T(this.f50069a);
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r4.super.showLoadingView();
        }
    }

    /* compiled from: SearchGameListFragment_.java */
    /* loaded from: classes4.dex */
    public static class n extends org.androidannotations.api.builder.d<n, q4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public q4 build() {
            r4 r4Var = new r4();
            r4Var.setArguments(this.args);
            return r4Var;
        }

        public n b(int i2) {
            this.args.putInt("currentTab", i2);
            return this;
        }

        public n c(String str) {
            this.args.putString("game_id", str);
            return this;
        }

        public n d(String str) {
            this.args.putString("keyword", str);
            return this;
        }
    }

    public static n C0() {
        return new n();
    }

    private void D0() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("currentTab")) {
                this.f49947h = arguments.getInt("currentTab");
            }
            if (arguments.containsKey("game_id")) {
                this.f49948i = arguments.getString("game_id");
            }
            if (arguments.containsKey("keyword")) {
                this.f49949j = arguments.getString("keyword");
            }
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        D0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void S() {
        org.androidannotations.api.b.e("", new g(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4, com.join.mgps.fragment.d
    public void T(String str) {
        org.androidannotations.api.b.e("", new l(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void Z(int i2, boolean z3) {
        org.androidannotations.api.a.l(new c("", 0L, "", i2, z3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void f0() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.F.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void h0(SearchGameListBean searchGameListBean, int i2) {
        org.androidannotations.api.b.e("", new j(searchGameListBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void hideLoading() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void i0(List<CommonGameInfoBean> list, boolean z3) {
        org.androidannotations.api.b.e("", new i(list, z3), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.E;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void j0(boolean z3) {
        org.androidannotations.api.b.e("", new k(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void k0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.D);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.E = onCreateView;
        if (onCreateView == null) {
            this.E = layoutInflater.inflate(R.layout.fragment_search_game_list, viewGroup, false);
        }
        return this.E;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.E = null;
        this.f49940a = null;
        this.f49941b = null;
        this.f49942c = null;
        this.f49943d = null;
        this.f49959t = null;
        this.f49960u = null;
        this.f49961v = null;
        this.f49962w = null;
        this.f49963x = null;
        this.f49964y = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49940a = (XQuickRecyclerView) aVar.internalFindViewById(R.id.rv_list_data);
        this.f49941b = aVar.internalFindViewById(R.id.v_no_data);
        this.f49942c = (ImageView) aVar.internalFindViewById(R.id.icon);
        this.f49943d = (TextView) aVar.internalFindViewById(R.id.name);
        this.f49959t = aVar.internalFindViewById(R.id.loding_layout);
        this.f49960u = aVar.internalFindViewById(R.id.loding_faile);
        this.f49961v = aVar.internalFindViewById(R.id.relodingimag);
        this.f49962w = (TextView) aVar.internalFindViewById(R.id.failedMessage);
        this.f49963x = (TextView) aVar.internalFindViewById(R.id.setting);
        this.f49964y = (TextView) aVar.internalFindViewById(R.id.setNetwork);
        View view = this.f49961v;
        if (view != null) {
            view.setOnClickListener(new e());
        }
        TextView textView = this.f49964y;
        if (textView != null) {
            textView.setOnClickListener(new f());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.D.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.F.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void showLoadFailed(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void showLoadingView() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }
}
