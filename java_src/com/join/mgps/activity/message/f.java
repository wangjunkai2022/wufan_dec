package com.join.mgps.activity.message;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.message.e;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: NoticeFragment_.java */
/* loaded from: classes3.dex */
public final class f extends com.join.mgps.activity.message.e implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    private View f37969p;

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f37968o = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f37970q = new HashMap();

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.showLodingFailed();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.U();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.setNetwork();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.W();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* renamed from: com.join.mgps.activity.message.f$f  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0172f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37976a;

        RunnableC0172f(List list) {
            this.f37976a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.O(this.f37976a);
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37978a;

        g(List list) {
            this.f37978a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.N(this.f37978a);
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.showLoding();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.M();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.S();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37983a;

        k(int i2) {
            this.f37983a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.V(this.f37983a);
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.T();
        }
    }

    /* compiled from: NoticeFragment_.java */
    /* loaded from: classes3.dex */
    public static class m extends org.androidannotations.api.builder.d<m, com.join.mgps.activity.message.e> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.message.e build() {
            f fVar = new f();
            fVar.setArguments(this.args);
            return fVar;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static m j0() {
        return new m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void M() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void N(List<e.c> list) {
        org.androidannotations.api.b.e("", new g(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void O(List<e.c> list) {
        org.androidannotations.api.b.e("", new RunnableC0172f(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void Q() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void S() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void T() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void U() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void V(int i2) {
        org.androidannotations.api.b.e("", new k(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void W() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f37970q.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f37969p;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f37968o);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f37969p = onCreateView;
        if (onCreateView == null) {
            this.f37969p = layoutInflater.inflate(R.layout.fragment_message_notice, viewGroup, false);
        }
        return this.f37969p;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f37969p = null;
        this.f37939a = null;
        this.f37940b = null;
        this.f37941c = null;
        this.f37942d = null;
        this.f37943e = null;
        this.f37949k = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37939a = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f37940b = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f37941c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f37942d = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f37943e = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        Button button = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f37949k = button;
        if (button != null) {
            button.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f37968o.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f37970q.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.e
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }
}
