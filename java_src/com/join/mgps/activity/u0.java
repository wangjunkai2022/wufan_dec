package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.WarIndexDataBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MGFightFragment_.java */
/* loaded from: classes3.dex */
public final class u0 extends t0 implements g3.a, i3.a, i3.b {

    /* renamed from: z  reason: collision with root package name */
    private View f38408z;

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f38407y = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();

    /* compiled from: MGFightFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.h0();
        }
    }

    /* compiled from: MGFightFragment_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.super.i0();
        }
    }

    /* compiled from: MGFightFragment_.java */
    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u0.super.a0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MGFightFragment_.java */
    /* loaded from: classes3.dex */
    class d extends a.c {
        d(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u0.super.b0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MGFightFragment_.java */
    /* loaded from: classes3.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WarIndexDataBean f38413a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, WarIndexDataBean warIndexDataBean) {
            super(str, j4, str2);
            this.f38413a = warIndexDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u0.super.j0(this.f38413a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MGFightFragment_.java */
    /* loaded from: classes3.dex */
    public static class f extends org.androidannotations.api.builder.d<f, t0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public t0 build() {
            u0 u0Var = new u0();
            u0Var.setArguments(this.args);
            return u0Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static f r0() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t0
    public void a0() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t0
    public void b0() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t0
    public void h0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t0
    public void i0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f38408z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.t0
    public void j0(WarIndexDataBean warIndexDataBean) {
        org.androidannotations.api.a.l(new e("", 0L, "", warIndexDataBean));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f38407y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f38408z = onCreateView;
        if (onCreateView == null) {
            this.f38408z = layoutInflater.inflate(R.layout.mg_fight_layout, viewGroup, false);
        }
        return this.f38408z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f38408z = null;
        this.f38381d = null;
        this.f38399v = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f38381d = (XListView2) aVar.internalFindViewById(R.id.fightListView);
        this.f38399v = (RelativeLayout) aVar.internalFindViewById(R.id.top_lay);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f38407y.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }
}
