package com.join.mgps.activity.arena;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: ArenaGameListFragmentMain_.java */
/* loaded from: classes3.dex */
public final class b extends com.join.mgps.activity.arena.a implements g3.a, i3.a, i3.b {

    /* renamed from: z  reason: collision with root package name */
    private View f36730z;

    /* renamed from: y  reason: collision with root package name */
    private final i3.c f36729y = new i3.c();
    private final Map<Class<?>, Object> A = new HashMap();

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.W();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* renamed from: com.join.mgps.activity.arena.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0158b extends a.c {
        C0158b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.Q();
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.relodingimag();
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.setNetwork();
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f36736a;

        f(List list) {
            this.f36736a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.a0(this.f36736a);
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultResMainBean f36738a;

        g(ResultResMainBean resultResMainBean) {
            this.f36738a = resultResMainBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.S(this.f36738a);
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.Z();
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.X();
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.super.hideLoading();
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    class k extends a.c {
        k(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b.super.U();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: ArenaGameListFragmentMain_.java */
    /* loaded from: classes3.dex */
    public static class l extends org.androidannotations.api.builder.d<l, com.join.mgps.activity.arena.a> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.arena.a build() {
            b bVar = new b();
            bVar.setArguments(this.args);
            return bVar;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f36718l = AccountUtil_.getInstance_(getActivity());
    }

    public static l j0() {
        return new l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void S(ResultResMainBean<NewArenaGameListBean> resultResMainBean) {
        org.androidannotations.api.b.e("", new g(resultResMainBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void U() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void V() {
        org.androidannotations.api.a.l(new C0158b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void W() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void X() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void Z() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void a0(List<GameInfoBean> list) {
        org.androidannotations.api.b.e("", new f(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.arena.a
    public void hideLoading() {
        org.androidannotations.api.b.e("", new j(), 200L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f36730z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f36729y);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f36730z = onCreateView;
        if (onCreateView == null) {
            this.f36730z = layoutInflater.inflate(R.layout.activity_arena_gamelist_fragment, viewGroup, false);
        }
        return this.f36730z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f36730z = null;
        this.f36709c = null;
        this.f36710d = null;
        this.f36713g = null;
        this.f36714h = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f36709c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f36710d = (XRecyclerView) aVar.internalFindViewById(R.id.listview);
        this.f36713g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f36714h = (RelativeLayout) aVar.internalFindViewById(R.id.layout_others_list);
        View internalFindViewById = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new d());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f36729y.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A.put(cls, t3);
    }
}
