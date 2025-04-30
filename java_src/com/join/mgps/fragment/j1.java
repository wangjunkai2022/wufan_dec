package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendCardBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: FriendCardFragment_.java */
/* loaded from: classes4.dex */
public final class j1 extends i1 implements g3.a, i3.a, i3.b {

    /* renamed from: s  reason: collision with root package name */
    private View f48986s;

    /* renamed from: r  reason: collision with root package name */
    private final i3.c f48985r = new i3.c();

    /* renamed from: t  reason: collision with root package name */
    private final Map<Class<?>, Object> f48987t = new HashMap();

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48988a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48988a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j1.super.b0(this.f48988a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48990a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f48990a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j1.super.n0(this.f48990a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j1.this.a0();
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FriendCardBean f48993a;

        d(FriendCardBean friendCardBean) {
            this.f48993a = friendCardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.u0(this.f48993a);
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.q0();
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48996a;

        f(int i2) {
            this.f48996a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.Z(this.f48996a);
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48998a;

        g(int i2) {
            this.f48998a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.c0(this.f48998a);
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49000a;

        h(String str) {
            this.f49000a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.o0(this.f49000a);
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49002a;

        i(String str) {
            this.f49002a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j1.super.t0(this.f49002a);
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j1.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    class k extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49005a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49005a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j1.super.X(this.f49005a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FriendCardFragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, i1> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public i1 build() {
            j1 j1Var = new j1();
            j1Var.setArguments(this.args);
            return j1Var;
        }
    }

    public static l F0() {
        return new l();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void X(int i2) {
        org.androidannotations.api.a.l(new k("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void Z(int i2) {
        org.androidannotations.api.b.e("", new f(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void b0(int i2) {
        org.androidannotations.api.a.l(new a("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void c0(int i2) {
        org.androidannotations.api.b.e("", new g(i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48987t.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48986s;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void n0(String str) {
        org.androidannotations.api.a.l(new b("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void o0(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    @Override // com.join.mgps.fragment.i1, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48985r);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48986s = onCreateView;
        if (onCreateView == null) {
            this.f48986s = layoutInflater.inflate(R.layout.fragment_friend_card, viewGroup, false);
        }
        return this.f48986s;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48986s = null;
        this.f48848b = null;
        this.f48849c = null;
        this.f48850d = null;
        this.f48851e = null;
        this.f48852f = null;
        this.f48853g = null;
        this.f48854h = null;
        this.f48855i = null;
        this.f48856j = null;
        this.f48857k = null;
        this.f48858l = null;
        this.f48859m = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48848b = (SimpleDraweeView) aVar.internalFindViewById(R.id.avatar);
        this.f48849c = (TextView) aVar.internalFindViewById(R.id.name);
        this.f48850d = (TextView) aVar.internalFindViewById(R.id.desc);
        this.f48851e = (TextView) aVar.internalFindViewById(R.id.button);
        this.f48852f = (TextView) aVar.internalFindViewById(R.id.likeCount);
        this.f48853g = (TextView) aVar.internalFindViewById(R.id.state);
        this.f48854h = aVar.internalFindViewById(R.id.icLike);
        this.f48855i = aVar.internalFindViewById(R.id.icVip);
        this.f48856j = aVar.internalFindViewById(R.id.noRecord);
        this.f48857k = (GridView) aVar.internalFindViewById(R.id.gridView);
        this.f48858l = (Group) aVar.internalFindViewById(R.id.main);
        this.f48859m = aVar.internalFindViewById(R.id.netFailed);
        View internalFindViewById = aVar.internalFindViewById(R.id.close);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48985r.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void p0() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48987t.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void q0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void t0(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i1
    public void u0(FriendCardBean friendCardBean) {
        org.androidannotations.api.b.e("", new d(friendCardBean), 0L);
    }
}
