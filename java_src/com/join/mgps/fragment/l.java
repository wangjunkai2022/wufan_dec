package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout2;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ClassifyRankFragment_.java */
/* loaded from: classes4.dex */
public final class l extends k implements g3.a, i3.a, i3.b {

    /* renamed from: j  reason: collision with root package name */
    private View f49211j;

    /* renamed from: i  reason: collision with root package name */
    private final i3.c f49210i = new i3.c();

    /* renamed from: k  reason: collision with root package name */
    private final Map<Class<?>, Object> f49212k = new HashMap();

    /* compiled from: ClassifyRankFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.M();
        }
    }

    /* compiled from: ClassifyRankFragment_.java */
    /* loaded from: classes4.dex */
    public static class b extends org.androidannotations.api.builder.d<b, k> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public k build() {
            l lVar = new l();
            lVar.setArguments(this.args);
            return lVar;
        }
    }

    public static b P() {
        return new b();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49212k.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49211j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49210i);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49211j = onCreateView;
        if (onCreateView == null) {
            this.f49211j = layoutInflater.inflate(R.layout.fragment_classify_rank, viewGroup, false);
        }
        return this.f49211j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49211j = null;
        this.f49125b = null;
        this.f49126c = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49125b = (ViewPager) aVar.internalFindViewById(R.id.mViewpagerV4);
        this.f49126c = (SlidingTabLayout2) aVar.internalFindViewById(R.id.mSlidingTabLayout);
        View internalFindViewById = aVar.internalFindViewById(R.id.searchImage);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49210i.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49212k.put(cls, t3);
    }
}
