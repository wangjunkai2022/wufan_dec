package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.dto.HomeGameCarefullyBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ChoiceFragment_.java */
/* loaded from: classes4.dex */
public final class h extends com.join.mgps.fragment.g implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private View f48761s;

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f48760r = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f48762t = new HashMap();

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.this.Z();
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48764a;

        b(String str) {
            this.f48764a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.showMessage(this.f48764a);
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.e0();
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HomeGameCarefullyBean f48767a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48768b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f48769c;

        d(HomeGameCarefullyBean homeGameCarefullyBean, int i2, int i4) {
            this.f48767a = homeGameCarefullyBean;
            this.f48768b = i2;
            this.f48769c = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.c0(this.f48767a, this.f48768b, this.f48769c);
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HomeGameCarefullyBean f48771a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48772b;

        e(HomeGameCarefullyBean homeGameCarefullyBean, int i2) {
            this.f48771a = homeGameCarefullyBean;
            this.f48772b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.b0(this.f48771a, this.f48772b);
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48774a;

        f(int i2) {
            this.f48774a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.super.P(this.f48774a);
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    class g extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48776a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48776a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h.super.W(this.f48776a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* renamed from: com.join.mgps.fragment.h$h  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0208h extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HomeGameCarefullyBean f48778a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0208h(String str, long j4, String str2, HomeGameCarefullyBean homeGameCarefullyBean) {
            super(str, j4, str2);
            this.f48778a = homeGameCarefullyBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h.super.X(this.f48778a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ChoiceFragment_.java */
    /* loaded from: classes4.dex */
    public static class i extends org.androidannotations.api.builder.d<i, com.join.mgps.fragment.g> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.fragment.g build() {
            h hVar = new h();
            hVar.setArguments(this.args);
            return hVar;
        }
    }

    private void init_(Bundle bundle) {
        this.f48703f = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    public static i m0() {
        return new i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void P(int i2) {
        org.androidannotations.api.b.e("", new f(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void W(int i2) {
        org.androidannotations.api.a.l(new g("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void X(HomeGameCarefullyBean homeGameCarefullyBean) {
        org.androidannotations.api.a.l(new C0208h("", 0L, "", homeGameCarefullyBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void b0(HomeGameCarefullyBean homeGameCarefullyBean, int i2) {
        org.androidannotations.api.b.e("", new e(homeGameCarefullyBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void c0(HomeGameCarefullyBean homeGameCarefullyBean, int i2, int i4) {
        org.androidannotations.api.b.e("", new d(homeGameCarefullyBean, i2, i4), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void e0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48762t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48761s;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48760r);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48761s = onCreateView;
        if (onCreateView == null) {
            this.f48761s = layoutInflater.inflate(R.layout.choice_fragment, viewGroup, false);
        }
        return this.f48761s;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48761s = null;
        this.f48698a = null;
        this.f48699b = null;
        this.f48700c = null;
        this.f48710m = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48698a = (TextView) aVar.internalFindViewById(R.id.searchBack);
        this.f48699b = (TextView) aVar.internalFindViewById(R.id.searchContent);
        this.f48700c = (ForumLoadingView) aVar.internalFindViewById(R.id.loadingView);
        this.f48710m = (XRecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        TextView textView = this.f48698a;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48760r.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48762t.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.g
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new b(str), 0L);
    }
}
