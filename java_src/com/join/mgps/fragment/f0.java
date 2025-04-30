package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: DiscoveryFragment_.java */
/* loaded from: classes4.dex */
public final class f0 extends c0 implements g3.a, i3.a, i3.b {

    /* renamed from: n0  reason: collision with root package name */
    private View f48663n0;
    private final i3.c K = new i3.c();

    /* renamed from: o0  reason: collision with root package name */
    private final Map<Class<?>, Object> f48664o0 = new HashMap();

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.super.h0();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48666a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48666a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f0.super.b0(this.f48666a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f0.super.X();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f0.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f0.this.M();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f0.this.a0();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f0.this.setNetwork();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f0.this.Z();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.super.f0();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48675a;

        j(String str) {
            this.f48675a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.super.showMessage(this.f48675a);
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48677a;

        k(List list) {
            this.f48677a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.super.i0(this.f48677a);
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DiscoveryMainDataBean f48679a;

        l(DiscoveryMainDataBean discoveryMainDataBean) {
            this.f48679a = discoveryMainDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.super.j0(this.f48679a);
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.super.g0();
        }
    }

    /* compiled from: DiscoveryFragment_.java */
    /* loaded from: classes4.dex */
    public static class n extends org.androidannotations.api.builder.d<n, c0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public c0 build() {
            f0 f0Var = new f0();
            f0Var.setArguments(this.args);
            return f0Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f48446j = AccountUtil_.getInstance_(getActivity());
    }

    public static n v0() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void X() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void b0(int i2) {
        org.androidannotations.api.a.l(new b("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void f0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void g0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48664o0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void h0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void i0(List<ForumBean.ForumPostsBean> list) {
        org.androidannotations.api.b.e("", new k(list), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48663n0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void j0(DiscoveryMainDataBean discoveryMainDataBean) {
        org.androidannotations.api.b.e("", new l(discoveryMainDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void loadData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.K);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48663n0 = onCreateView;
        if (onCreateView == null) {
            this.f48663n0 = layoutInflater.inflate(R.layout.fragment_discovery, viewGroup, false);
        }
        return this.f48663n0;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48663n0 = null;
        this.f48437a = null;
        this.f48438b = null;
        this.f48439c = null;
        this.f48440d = null;
        this.f48441e = null;
        this.f48442f = null;
        this.f48443g = null;
        this.f48444h = null;
        this.f48445i = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48437a = (RelativeLayout) aVar.internalFindViewById(R.id.RootRl);
        this.f48438b = (RelativeLayout) aVar.internalFindViewById(R.id.discoveryTitleRl);
        this.f48439c = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f48440d = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f48441e = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f48442f = (XListView2) aVar.internalFindViewById(R.id.listView);
        this.f48443g = (ImageView) aVar.internalFindViewById(R.id.discoveryTitleSearchIv);
        this.f48444h = (TextView) aVar.internalFindViewById(R.id.discoveryTitleTx);
        this.f48445i = aVar.internalFindViewById(R.id.statubar);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        RelativeLayout relativeLayout = this.f48437a;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new e());
        }
        LinearLayout linearLayout = this.f48440d;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new f());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        LinearLayout linearLayout2 = this.f48441e;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.K.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48664o0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c0
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }
}
