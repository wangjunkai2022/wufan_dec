package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ForumPostsFragment_.java */
/* loaded from: classes4.dex */
public final class t0 extends s0 implements g3.a, i3.a, i3.b {
    private View F;
    private final i3.c E = new i3.c();
    private final Map<Class<?>, Object> G = new HashMap();
    private final IntentFilter H = new IntentFilter();
    private final BroadcastReceiver I = new b();

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50311a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f50311a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.g0(this.f50311a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class b extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f50313b = "gameData";

        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t0.this.f0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.x0();
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.d0();
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50317a;

        e(int i2) {
            this.f50317a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.Q(this.f50317a);
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f50319a;

        f(DetailResultBean detailResultBean) {
            this.f50319a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.w0(this.f50319a);
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.u0();
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50322a;

        h(String str) {
            this.f50322a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t0.super.showMessage(this.f50322a);
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50324a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f50324a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.V(this.f50324a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50326a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f50326a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t0.super.S(this.f50326a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumPostsFragment_.java */
    /* loaded from: classes4.dex */
    public static class k extends org.androidannotations.api.builder.d<k, s0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public s0 build() {
            t0 t0Var = new t0();
            t0Var.setArguments(this.args);
            return t0Var;
        }
    }

    public static k K0() {
        return new k();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.H.addAction(f1.a.H);
        this.H.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void Q(int i2) {
        org.androidannotations.api.b.e("", new e(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void S(String str) {
        org.androidannotations.api.a.l(new j("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void V(int i2) {
        org.androidannotations.api.a.l(new i("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void d0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void g0(int i2) {
        org.androidannotations.api.a.l(new a("", 0L, "", i2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.G.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.F;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.E);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.I, this.H);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.F = onCreateView;
        if (onCreateView == null) {
            this.F = layoutInflater.inflate(R.layout.mg_forum_all_fragment, viewGroup, false);
        }
        return this.F;
    }

    @Override // com.join.mgps.fragment.s0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.I);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.F = null;
        this.f50190k = null;
        this.f50191l = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50190k = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f50191l = (XListView2) aVar.internalFindViewById(R.id.forum_posts_list);
        afterViews();
    }

    @Override // com.join.mgps.fragment.s0, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.E.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.G.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void u0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void w0(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new f(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s0
    public void x0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }
}
