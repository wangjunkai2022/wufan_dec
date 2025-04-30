package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.Map;
/* compiled from: CollectionThreeSubFragment_.java */
/* loaded from: classes4.dex */
public final class v extends u implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    private View f50496q;

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f50495p = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f50497r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    private final IntentFilter f50498s = new IntentFilter();

    /* renamed from: t  reason: collision with root package name */
    private final BroadcastReceiver f50499t = new a();

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f50500b = "gameData";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            v.this.M((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v.this.progress_layout();
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v.this.instalButtomButn();
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.super.P();
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.super.showProgress();
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.super.showInstallButn();
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.super.updateButn();
        }
    }

    /* compiled from: CollectionThreeSubFragment_.java */
    /* loaded from: classes4.dex */
    public static class h extends org.androidannotations.api.builder.d<h, u> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public u build() {
            v vVar = new v();
            vVar.setArguments(this.args);
            return vVar;
        }
    }

    public static h U() {
        return new h();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f50498s.addAction(f1.a.H);
        this.f50498s.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u
    public void P() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50497r.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50496q;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50495p);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f50499t, this.f50498s);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50496q = onCreateView;
        if (onCreateView == null) {
            this.f50496q = layoutInflater.inflate(R.layout.collection_three_item, viewGroup, false);
        }
        return this.f50496q;
    }

    @Override // com.join.mgps.fragment.u, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f50499t);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50496q = null;
        this.f50391a = null;
        this.f50392b = null;
        this.f50393c = null;
        this.f50394d = null;
        this.f50395e = null;
        this.f50396f = null;
        this.f50397g = null;
        this.f50398h = null;
        this.f50399i = null;
        this.f50400j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50391a = (SimpleDraweeView) aVar.internalFindViewById(R.id.imgBackground);
        this.f50392b = (SimpleDraweeView) aVar.internalFindViewById(R.id.imgIcon);
        this.f50393c = (TextView) aVar.internalFindViewById(R.id.tvGameDes);
        this.f50394d = (TextView) aVar.internalFindViewById(R.id.tvGameTitle);
        this.f50395e = (Button) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f50396f = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f50397g = (LinearLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f50398h = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f50399i = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f50400j = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        View internalFindViewById = aVar.internalFindViewById(R.id.progress_layout);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        Button button = this.f50395e;
        if (button != null) {
            button.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50495p.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50497r.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u
    public void showProgress() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.u
    public void updateButn() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }
}
