package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.customview.SlidingTabLayout1;
import com.join.mgps.customview.ViewPagerCompat;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: RankingFragment_.java */
/* loaded from: classes4.dex */
public final class d4 extends c4 implements g3.a, i3.a, i3.b {

    /* renamed from: g  reason: collision with root package name */
    private View f48581g;

    /* renamed from: f  reason: collision with root package name */
    private final i3.c f48580f = new i3.c();

    /* renamed from: h  reason: collision with root package name */
    private final Map<Class<?>, Object> f48582h = new HashMap();

    /* compiled from: RankingFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48583a;

        a(List list) {
            this.f48583a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            d4.super.P(this.f48583a);
        }
    }

    /* compiled from: RankingFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d4.super.O();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RankingFragment_.java */
    /* loaded from: classes4.dex */
    public static class c extends org.androidannotations.api.builder.d<c, c4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public c4 build() {
            d4 d4Var = new d4();
            d4Var.setArguments(this.args);
            return d4Var;
        }
    }

    public static c S() {
        return new c();
    }

    private void init_(Bundle bundle) {
        this.f48505a = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c4
    public void O() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c4
    public void P(List<TagData> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48582h.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48581g;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48580f);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48581g = onCreateView;
        if (onCreateView == null) {
            this.f48581g = layoutInflater.inflate(R.layout.fragment_rank, viewGroup, false);
        }
        return this.f48581g;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48581g = null;
        this.f48506b = null;
        this.f48507c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48506b = (SlidingTabLayout1) aVar.internalFindViewById(R.id.tabs);
        this.f48507c = (ViewPagerCompat) aVar.internalFindViewById(R.id.viewPager);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48580f.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48582h.put(cls, t3);
    }
}
