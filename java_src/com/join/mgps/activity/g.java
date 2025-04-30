package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ClassifyListGameFragment_.java */
/* loaded from: classes3.dex */
public final class g extends com.join.mgps.activity.f implements g3.a, i3.a, i3.b {

    /* renamed from: y  reason: collision with root package name */
    private View f37060y;

    /* renamed from: x  reason: collision with root package name */
    private final i3.c f37059x = new i3.c();

    /* renamed from: z  reason: collision with root package name */
    private final Map<Class<?>, Object> f37061z = new HashMap();
    private final IntentFilter A = new IntentFilter();
    private final BroadcastReceiver B = new c();

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.super.X();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37063a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37064b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f37063a = str3;
            this.f37064b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g.super.S(this.f37063a, this.f37064b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f37066b = "gameData";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            g.this.a0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.relodingimag();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.Z();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.T();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* renamed from: com.join.mgps.activity.g$g  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0161g implements View.OnClickListener {
        View$OnClickListenerC0161g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.f0();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.this.setNetwork();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.super.showLoding();
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37074a;

        j(boolean z3) {
            this.f37074a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            g.super.k0(this.f37074a);
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37076a;

        k(List list) {
            this.f37076a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            g.super.showMain(this.f37076a);
        }
    }

    /* compiled from: ClassifyListGameFragment_.java */
    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.d<l, com.join.mgps.activity.f> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.f build() {
            g gVar = new g();
            gVar.setArguments(this.args);
            return gVar;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.A.addAction(f1.a.H);
        this.A.addAction(f1.a.F);
    }

    public static l w0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f
    public void S(String str, String str2) {
        org.androidannotations.api.a.l(new b("", 0L, "", str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f
    public void X() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f37061z.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f37060y;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f
    public void k0(boolean z3) {
        org.androidannotations.api.b.e("", new j(z3), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f37059x);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.B, this.A);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f37060y = onCreateView;
        if (onCreateView == null) {
            this.f37060y = layoutInflater.inflate(R.layout.classify_list_recy_layout, viewGroup, false);
        }
        return this.f37060y;
    }

    @Override // com.join.mgps.activity.f, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.B);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f37060y = null;
        this.f36977d = null;
        this.f36978e = null;
        this.f36979f = null;
        this.f36980g = null;
        this.f36981h = null;
        this.f36982i = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36977d = (XRecyclerView) aVar.internalFindViewById(R.id.classifyListView);
        this.f36978e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f36979f = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f36980g = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        this.f36981h = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f36982i = (ImageView) aVar.internalFindViewById(R.id.noneReloadImage);
        View internalFindViewById = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setAll);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f36981h;
        if (imageView != null) {
            imageView.setOnClickListener(new d());
        }
        ImageView imageView2 = this.f36982i;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new e());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new View$OnClickListenerC0161g());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new h());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f37059x.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f37061z.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f
    public void showMain(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new k(list), 0L);
    }
}
