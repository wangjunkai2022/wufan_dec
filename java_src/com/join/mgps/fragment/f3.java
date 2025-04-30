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
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.AccountBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MGManageFragment_.java */
/* loaded from: classes4.dex */
public final class f3 extends e3 implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private View f48686g;

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f48685f = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f48687h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private final IntentFilter f48688i = new IntentFilter();

    /* renamed from: j  reason: collision with root package name */
    private final BroadcastReceiver f48689j = new a();

    /* compiled from: MGManageFragment_.java */
    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            f3.this.M(intent);
        }
    }

    /* compiled from: MGManageFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f3.super.Q();
        }
    }

    /* compiled from: MGManageFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccountBean f48692a;

        c(AccountBean accountBean) {
            this.f48692a = accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            f3.super.P(this.f48692a);
        }
    }

    /* compiled from: MGManageFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48694a;

        d(int i2) {
            this.f48694a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            f3.super.O(this.f48694a);
        }
    }

    /* compiled from: MGManageFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {
        e(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f3.super.N();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MGManageFragment_.java */
    /* loaded from: classes4.dex */
    public static class f extends org.androidannotations.api.builder.d<f, e3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public e3 build() {
            f3 f3Var = new f3();
            f3Var.setArguments(this.args);
            return f3Var;
        }
    }

    public static f V() {
        return new f();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f48688i.addAction(f1.a.f65492o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e3
    public void N() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e3
    public void O(int i2) {
        org.androidannotations.api.b.e("", new d(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e3
    public void P(AccountBean accountBean) {
        org.androidannotations.api.b.e("", new c(accountBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.e3
    public void Q() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48687h.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48686g;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48685f);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f48689j, this.f48688i);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48686g = onCreateView;
        if (onCreateView == null) {
            this.f48686g = layoutInflater.inflate(R.layout.mg_manage_fragment, viewGroup, false);
        }
        return this.f48686g;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f48689j);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48686g = null;
        this.f48632d = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48632d = (XListView) aVar.internalFindViewById(R.id.manageListView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48685f.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48687h.put(cls, t3);
    }
}
