package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.TodayWufunBean;
import com.join.mgps.dto.TodayWufunTopic;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: NowWufunFragment_.java */
/* loaded from: classes3.dex */
public final class c2 extends NowWufunFragment implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    private View f36903q;

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f36902p = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f36904r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    private final IntentFilter f36905s = new IntentFilter();

    /* renamed from: t  reason: collision with root package name */
    private final BroadcastReceiver f36906t = new a();

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f36907b = "gameData";

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            c2.this.T((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c2.this.relodingimag();
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c2.this.setNetwork();
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c2.super.a0();
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c2.super.Z();
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36913a;

        f(List list) {
            this.f36913a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            c2.super.b0(this.f36913a);
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36915a;

        g(List list) {
            this.f36915a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            c2.super.c0(this.f36915a);
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c2.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    class i extends a.c {
        i(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c2.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: NowWufunFragment_.java */
    /* loaded from: classes3.dex */
    public static class j extends org.androidannotations.api.builder.d<j, NowWufunFragment> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public NowWufunFragment build() {
            c2 c2Var = new c2();
            c2Var.setArguments(this.args);
            return c2Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f36905s.addAction(f1.a.H);
        this.f36905s.addAction(f1.a.F);
    }

    public static j m0() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NowWufunFragment
    public void Q() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NowWufunFragment
    public void R() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NowWufunFragment
    public void Z() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NowWufunFragment
    public void a0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NowWufunFragment
    public void b0(List<TodayWufunBean> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.NowWufunFragment
    public void c0(List<TodayWufunTopic> list) {
        org.androidannotations.api.b.e("", new g(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f36904r.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f36903q;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36902p);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f36906t, this.f36905s);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f36903q = onCreateView;
        if (onCreateView == null) {
            this.f36903q = layoutInflater.inflate(R.layout.now_wufun_fragment_layout, viewGroup, false);
        }
        return this.f36903q;
    }

    @Override // com.join.mgps.activity.NowWufunFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f36906t);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f36903q = null;
        this.f34439c = null;
        this.f34440d = null;
        this.f34441e = null;
        this.f34442f = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34439c = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f34440d = (XListView2) aVar.internalFindViewById(R.id.xListView);
        this.f34441e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f34442f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new b());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new c());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f36902p.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f36904r.put(cls, t3);
    }
}
