package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadMoreRecyclerView;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: CommentAllListFragment_.java */
/* loaded from: classes4.dex */
public final class x extends w implements g3.a, i3.a, i3.b {
    private View F;
    private final i3.c E = new i3.c();
    private final Map<Class<?>, Object> G = new HashMap();

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50675a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f50676b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f50677c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f50678d;

        a(String str, boolean z3, int i2, int i4) {
            this.f50675a = str;
            this.f50676b = z3;
            this.f50677c = i2;
            this.f50678d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.T(this.f50675a, this.f50676b, this.f50677c, this.f50678d);
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentResponse f50680a;

        b(CommentResponse commentResponse) {
            this.f50680a = commentResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.U(this.f50680a);
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x.super.O();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f50683a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50684b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f50685c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f50683a = commentBaseBean;
            this.f50684b = i2;
            this.f50685c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x.super.d(this.f50683a, this.f50684b, this.f50685c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class e extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f50687a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50688b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f50689c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, long j4, String str2, CommentBaseBean commentBaseBean, int i2, int i4) {
            super(str, j4, str2);
            this.f50687a = commentBaseBean;
            this.f50688b = i2;
            this.f50689c = i4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x.super.e(this.f50687a, this.f50688b, this.f50689c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class f extends a.c {
        f(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                x.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x.this.relodingimag();
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x.this.setNetwork();
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x.this.W();
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.showLoding();
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50696a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CommentAllListBean.ScoringDetailsBean f50697b;

        k(List list, CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
            this.f50696a = list;
            this.f50697b = scoringDetailsBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.V(this.f50696a, this.f50697b);
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.showLodingFailed();
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.X();
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50701a;

        n(String str) {
            this.f50701a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.showMessage(this.f50701a);
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50703a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f50704b;

        o(int i2, int i4) {
            this.f50703a = i2;
            this.f50704b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.super.N(this.f50703a, this.f50704b);
        }
    }

    /* compiled from: CommentAllListFragment_.java */
    /* loaded from: classes4.dex */
    public static class p extends org.androidannotations.api.builder.d<p, w> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public w build() {
            x xVar = new x();
            xVar.setArguments(this.args);
            return xVar;
        }
    }

    private void init_(Bundle bundle) {
        this.f50601j = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    public static p l0() {
        return new p();
    }

    @Override // com.join.mgps.fragment.w
    public void N(int i2, int i4) {
        org.androidannotations.api.b.e("", new o(i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void O() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void R() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void T(String str, boolean z3, int i2, int i4) {
        org.androidannotations.api.b.e("", new a(str, z3, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void U(CommentResponse commentResponse) {
        org.androidannotations.api.b.e("", new b(commentResponse), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void V(List<CommentBaseBean> list, CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
        org.androidannotations.api.b.e("", new k(list, scoringDetailsBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void X() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    @Override // com.join.mgps.fragment.w, com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void d(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new d("", 0L, "", commentBaseBean, i2, i4));
    }

    @Override // com.join.mgps.fragment.w, com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void e(CommentBaseBean commentBaseBean, int i2, int i4) {
        org.androidannotations.api.a.l(new e("", 0L, "", commentBaseBean, i2, i4));
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
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.F = onCreateView;
        if (onCreateView == null) {
            this.F = layoutInflater.inflate(R.layout.comment_all_list_fragment, viewGroup, false);
        }
        return this.F;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.F = null;
        this.f50593b = null;
        this.f50594c = null;
        this.f50595d = null;
        this.f50596e = null;
        this.f50597f = null;
        this.f50598g = null;
        this.f50599h = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50593b = (ImageView) aVar.internalFindViewById(R.id.back_image);
        this.f50594c = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.f50595d = (TextView) aVar.internalFindViewById(R.id.textTopRight);
        this.f50596e = (LoadMoreRecyclerView) aVar.internalFindViewById(R.id.comment_all_list);
        this.f50597f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f50598g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f50599h = (NestedScrollView) aVar.internalFindViewById(R.id.noCommentLl);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new h());
        }
        TextView textView = this.f50595d;
        if (textView != null) {
            textView.setOnClickListener(new i());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.E.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.G.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.w
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new n(str), 0L);
    }
}
