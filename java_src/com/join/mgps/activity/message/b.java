package com.join.mgps.activity.message;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.message.a;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: CommunityFragment_.java */
/* loaded from: classes3.dex */
public final class b extends com.join.mgps.activity.message.a implements g3.a, i3.a, i3.b {
    private View C;
    private final i3.c B = new i3.c();
    private final Map<Class<?>, Object> D = new HashMap();

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.b0();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* renamed from: com.join.mgps.activity.message.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0167b implements Runnable {
        RunnableC0167b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.R();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.showLoding();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.Q();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.showLodingFailed();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37819a;

        f(String str) {
            this.f37819a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.showToast(this.f37819a);
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37822b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f37823c;

        g(int i2, int i4, String str) {
            this.f37821a = i2;
            this.f37822b = i4;
            this.f37823c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.Z(this.f37821a, this.f37822b, this.f37823c);
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37826a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37827b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f37828c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3, int i2, int i4) {
            super(str, j4, str2);
            this.f37826a = str3;
            this.f37827b = i2;
            this.f37828c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.U(this.f37826a, this.f37827b, this.f37828c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.setNetwork();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.c0();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.M();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37833a;

        m(List list) {
            this.f37833a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.O(this.f37833a);
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.d0();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.V();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.a0();
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37838a;

        q(int i2) {
            this.f37838a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.W(this.f37838a);
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37840a;

        r(List list) {
            this.f37840a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.T(this.f37840a);
        }
    }

    /* compiled from: CommunityFragment_.java */
    /* loaded from: classes3.dex */
    public static class s extends org.androidannotations.api.builder.d<s, com.join.mgps.activity.message.a> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.message.a build() {
            b bVar = new b();
            bVar.setArguments(this.args);
            return bVar;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static s v0() {
        return new s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void M() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void O(List<a.i> list) {
        org.androidannotations.api.b.e("", new m(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void P() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void Q() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void R() {
        org.androidannotations.api.b.e("", new RunnableC0167b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void T(List<a.i> list) {
        org.androidannotations.api.b.e("", new r(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void U(String str, int i2, int i4) {
        org.androidannotations.api.a.l(new i("", 0L, "", str, i2, i4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void V() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void W(int i2) {
        org.androidannotations.api.b.e("", new q(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void Z(int i2, int i4, String str) {
        org.androidannotations.api.b.e("", new g(i2, i4, str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void a0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void b0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void d0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.C;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.B);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.C = onCreateView;
        if (onCreateView == null) {
            this.C = layoutInflater.inflate(R.layout.fragment_communtity, viewGroup, false);
        }
        return this.C;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.C = null;
        this.f37746a = null;
        this.f37747b = null;
        this.f37748c = null;
        this.f37750e = null;
        this.f37751f = null;
        this.f37752g = null;
        this.f37753h = null;
        this.f37757l = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37746a = (LinearLayout) aVar.internalFindViewById(R.id.thumbslayout);
        this.f37747b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f37748c = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f37750e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f37751f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f37752g = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        this.f37753h = (TextView) aVar.internalFindViewById(R.id.redTips);
        Button button = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f37757l = button;
        if (button != null) {
            button.setOnClickListener(new j());
        }
        LinearLayout linearLayout = this.f37746a;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.B.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.D.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.a
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }
}
