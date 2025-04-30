package com.join.mgps.activity.message;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.message.c;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.GameReplyMessageListBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MessagePriaceFragment_.java */
/* loaded from: classes3.dex */
public final class d extends com.join.mgps.activity.message.c implements g3.a, i3.a, i3.b {
    private View A;

    /* renamed from: z  reason: collision with root package name */
    private final i3.c f37906z = new i3.c();
    private final Map<Class<?>, Object> B = new HashMap();

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.d0();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.S();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showLoding();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* renamed from: com.join.mgps.activity.message.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0171d implements Runnable {
        RunnableC0171d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.R();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showLodingFailed();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37912a;

        f(String str) {
            this.f37912a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showToast(this.f37912a);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37914a;

        g(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
            this.f37914a = dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.b0(this.f37914a);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f37916a;

        h(CommentResponse commentResponse) {
            this.f37916a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.U(this.f37916a);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37918a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentCreateBean.InfoBean f37919b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f37920c;

        i(String str, CommentCreateBean.InfoBean infoBean, boolean z3) {
            this.f37918a = str;
            this.f37919b = infoBean;
            this.f37920c = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.V(this.f37918a, this.f37919b, this.f37920c);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.setNetwork();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37924a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f37925b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, String str3, GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
            super(str, j4, str2);
            this.f37924a = str3;
            this.f37925b = dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.X(this.f37924a, this.f37925b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class m extends a.c {
        m(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.e0();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.M();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37930a;

        p(int i2) {
            this.f37930a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.Z(this.f37930a);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.f0();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37933a;

        r(List list) {
            this.f37933a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.N(this.f37933a);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.c0();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.W();
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37937a;

        u(List list) {
            this.f37937a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.T(this.f37937a);
        }
    }

    /* compiled from: MessagePriaceFragment_.java */
    /* loaded from: classes3.dex */
    public static class v extends org.androidannotations.api.builder.d<v, com.join.mgps.activity.message.c> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.message.c build() {
            d dVar = new d();
            dVar.setArguments(this.args);
            return dVar;
        }
    }

    public static v A0() {
        return new v();
    }

    private void init_(Bundle bundle) {
        this.f37854m = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void M() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void N(List<c.h> list) {
        org.androidannotations.api.b.e("", new r(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void P() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void Q() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void R() {
        org.androidannotations.api.b.e("", new RunnableC0171d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void S() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void T(List<c.h> list) {
        org.androidannotations.api.b.e("", new u(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void U(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new h(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void V(String str, CommentCreateBean.InfoBean infoBean, boolean z3) {
        org.androidannotations.api.b.e("", new i(str, infoBean, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void W() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void X(String str, GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
        org.androidannotations.api.a.l(new l("", 0L, "", str, dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void Z(int i2) {
        org.androidannotations.api.b.e("", new p(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void b0(GameReplyMessageListBean.MessagesBean.DataBean dataBean) {
        org.androidannotations.api.b.e("", new g(dataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void c0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void d0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void f0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.A;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f37906z);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.A = onCreateView;
        if (onCreateView == null) {
            this.A = layoutInflater.inflate(R.layout.fragment_communtity, viewGroup, false);
        }
        return this.A;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A = null;
        this.f37842a = null;
        this.f37843b = null;
        this.f37844c = null;
        this.f37846e = null;
        this.f37847f = null;
        this.f37848g = null;
        this.f37849h = null;
        this.f37855n = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37842a = (LinearLayout) aVar.internalFindViewById(R.id.thumbslayout);
        this.f37843b = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f37844c = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f37846e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f37847f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f37848g = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        this.f37849h = (TextView) aVar.internalFindViewById(R.id.redTips);
        Button button = (Button) aVar.internalFindViewById(R.id.setNetwork);
        this.f37855n = button;
        if (button != null) {
            button.setOnClickListener(new k());
        }
        LinearLayout linearLayout = this.f37842a;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new n());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f37906z.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.B.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }
}
