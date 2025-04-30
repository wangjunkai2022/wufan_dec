package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: FriendMessageFragment_.java */
/* loaded from: classes4.dex */
public final class a2 extends z1 implements g3.a, i3.a, i3.b {

    /* renamed from: h  reason: collision with root package name */
    private View f48316h;

    /* renamed from: g  reason: collision with root package name */
    private final i3.c f48315g = new i3.c();

    /* renamed from: i  reason: collision with root package name */
    private final Map<Class<?>, Object> f48317i = new HashMap();

    /* compiled from: FriendMessageFragment_.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a2.this.P();
        }
    }

    /* compiled from: FriendMessageFragment_.java */
    /* loaded from: classes4.dex */
    public static class b extends org.androidannotations.api.builder.d<b, z1> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public z1 build() {
            a2 a2Var = new a2();
            a2Var.setArguments(this.args);
            return a2Var;
        }
    }

    public static b U() {
        return new b();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48317i.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48316h;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48315g);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48316h = onCreateView;
        if (onCreateView == null) {
            this.f48316h = layoutInflater.inflate(R.layout.fragment_friend_msg, viewGroup, false);
        }
        return this.f48316h;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48316h = null;
        this.f50817a = null;
        this.f50818b = null;
        this.f50819c = null;
        this.f50820d = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50817a = (TextView) aVar.internalFindViewById(R.id.tabReq);
        this.f50818b = (TextView) aVar.internalFindViewById(R.id.tabLike);
        this.f50819c = aVar.internalFindViewById(R.id.likeDot);
        this.f50820d = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48315g.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48317i.put(cls, t3);
    }
}
