package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.fragment.j2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GameFormFragment_.java */
/* loaded from: classes4.dex */
public final class k2 extends j2 implements g3.a, i3.a, i3.b {

    /* renamed from: t  reason: collision with root package name */
    private View f49159t;

    /* renamed from: s  reason: collision with root package name */
    private final i3.c f49158s = new i3.c();

    /* renamed from: u  reason: collision with root package name */
    private final Map<Class<?>, Object> f49160u = new HashMap();

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.showLodingFailed();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.T();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.relodingimag();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.setNetwork();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.O();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.Z();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.b0();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49168a;

        h(List list) {
            this.f49168a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.a0(this.f49168a);
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.S();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.showLoding();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.U();
        }
    }

    /* compiled from: GameFormFragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, j2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public j2 build() {
            k2 k2Var = new k2();
            k2Var.setArguments(this.args);
            return k2Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static l l0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void O() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void S() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void T() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void U() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void Z() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void a0(List<j2.g> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void b0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49160u.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49159t;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49158s);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49159t = onCreateView;
        if (onCreateView == null) {
            this.f49159t = layoutInflater.inflate(R.layout.fragment_gamefrom, viewGroup, false);
        }
        return this.f49159t;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49159t = null;
        this.f49007a = null;
        this.f49008b = null;
        this.f49011e = null;
        this.f49012f = null;
        this.f49013g = null;
        this.f49020n = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49007a = (XRecyclerView) aVar.internalFindViewById(R.id.comment_all_list);
        this.f49008b = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        this.f49011e = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f49012f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49013g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        ImageView imageView = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f49020n = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        Button button = this.f49011e;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49158s.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49160u.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }
}
