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
/* compiled from: ForumGroupPostsFragment_.java */
/* loaded from: classes4.dex */
public final class p0 extends o0 implements g3.a, i3.a, i3.b {
    private View H;
    private final i3.c G = new i3.c();
    private final Map<Class<?>, Object> I = new HashMap();
    private final IntentFilter J = new IntentFilter();
    private final BroadcastReceiver K = new c();

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49714a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f49714a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p0.super.U(this.f49714a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49716a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49716a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p0.super.h0(this.f49716a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f49718b = "gameData";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            p0.this.g0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.y0();
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.e0();
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.c0();
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49723a;

        g(int i2) {
            this.f49723a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.R(this.f49723a);
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f49725a;

        h(DetailResultBean detailResultBean) {
            this.f49725a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.x0(this.f49725a);
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.v0();
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49728a;

        j(String str) {
            this.f49728a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.super.showMessage(this.f49728a);
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    class k extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49730a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49730a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p0.super.W(this.f49730a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ForumGroupPostsFragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, o0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public o0 build() {
            p0 p0Var = new p0();
            p0Var.setArguments(this.args);
            return p0Var;
        }
    }

    public static l L0() {
        return new l();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.J.addAction(f1.a.H);
        this.J.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void R(int i2) {
        org.androidannotations.api.b.e("", new g(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void U(String str) {
        org.androidannotations.api.a.l(new a("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void W(int i2) {
        org.androidannotations.api.a.l(new k("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void c0() {
        org.androidannotations.api.b.e("", new f(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void e0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void h0(int i2) {
        org.androidannotations.api.a.l(new b("", 0L, "", i2));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.H;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.G);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.K, this.J);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.H = onCreateView;
        if (onCreateView == null) {
            this.H = layoutInflater.inflate(R.layout.mg_forum_all_fragment, viewGroup, false);
        }
        return this.H;
    }

    @Override // com.join.mgps.fragment.o0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.K);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.H = null;
        this.f49545k = null;
        this.f49546l = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49545k = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f49546l = (XListView2) aVar.internalFindViewById(R.id.forum_posts_list);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.G.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.I.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void v0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void x0(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new h(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o0
    public void y0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }
}
