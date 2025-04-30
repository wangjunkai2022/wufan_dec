package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class MyShopFragmentItem_ extends MyShopFragmentItem implements g3.a, i3.a, i3.b {

    /* renamed from: d  reason: collision with root package name */
    private View f48274d;

    /* renamed from: c  reason: collision with root package name */
    private final i3.c f48273c = new i3.c();

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, Object> f48275e = new HashMap();

    /* loaded from: classes4.dex */
    public static class a extends org.androidannotations.api.builder.d<a, MyShopFragmentItem> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public MyShopFragmentItem build() {
            MyShopFragmentItem_ myShopFragmentItem_ = new MyShopFragmentItem_();
            myShopFragmentItem_.setArguments(this.args);
            return myShopFragmentItem_;
        }
    }

    public static a b() {
        return new a();
    }

    private void c(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48275e.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48274d;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48273c);
        c(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48274d = onCreateView;
        if (onCreateView == null) {
            this.f48274d = layoutInflater.inflate(R.layout.shopfragmet_item, viewGroup, false);
        }
        return this.f48274d;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48274d = null;
        this.f48268a = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48268a = (RecyclerView) aVar.internalFindViewById(R.id.rcy);
        a();
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48273c.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48275e.put(cls, t3);
    }
}
