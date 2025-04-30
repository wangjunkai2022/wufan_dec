package com.join.mgps.fragment.roomlist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import app.mgsim.arena.SimpleWrapperRoom;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: StandardEliteRoomFragment_.java */
/* loaded from: classes4.dex */
public final class d extends com.join.mgps.fragment.roomlist.c implements g3.a, i3.a, i3.b {

    /* renamed from: w0  reason: collision with root package name */
    private View f50133w0;

    /* renamed from: v0  reason: collision with root package name */
    private final i3.c f50132v0 = new i3.c();

    /* renamed from: x0  reason: collision with root package name */
    private final Map<Class<?>, Object> f50134x0 = new HashMap();

    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleRoom f50135a;

        a(SimpleRoom simpleRoom) {
            this.f50135a = simpleRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.I0(this.f50135a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f50137a;

        b(int i2) {
            this.f50137a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.C0(this.f50137a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f50139a;

        c(ArrayList arrayList) {
            this.f50139a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.W0(this.f50139a);
        }
    }

    /* compiled from: StandardEliteRoomFragment_.java */
    /* renamed from: com.join.mgps.fragment.roomlist.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class RunnableC0212d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f50141a;

        RunnableC0212d(ArrayList arrayList) {
            this.f50141a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.n0(this.f50141a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f50143a;

        e(ArrayList arrayList) {
            this.f50143a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.X0(this.f50143a);
        }
    }

    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.c0();
        }
    }

    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.d0();
        }
    }

    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50147a;

        h(String str) {
            this.f50147a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showToast(this.f50147a);
        }
    }

    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50149a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f50149a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.y0(this.f50149a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: StandardEliteRoomFragment_.java */
    /* loaded from: classes4.dex */
    public static class j extends org.androidannotations.api.builder.d<j, com.join.mgps.fragment.roomlist.c> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.fragment.roomlist.c build() {
            d dVar = new d();
            dVar.setArguments(this.args);
            return dVar;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f50084a = AccountUtil_.getInstance_(getActivity());
    }

    public static j k1() {
        return new j();
    }

    @Override // com.join.mgps.fragment.roomlist.c
    public void C0(int i2) {
        org.androidannotations.api.b.e("", new b(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void I0(SimpleRoom simpleRoom) {
        org.androidannotations.api.b.e("", new a(simpleRoom), 0L);
    }

    @Override // com.join.mgps.fragment.roomlist.c
    public void W0(ArrayList<SimpleRoom> arrayList) {
        org.androidannotations.api.b.e("", new c(arrayList), 0L);
    }

    @Override // com.join.mgps.fragment.roomlist.c
    public void X0(ArrayList<SimpleRoom> arrayList) {
        org.androidannotations.api.b.e("", new e(arrayList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void c0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void d0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f50134x0.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f50133w0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void n0(ArrayList<SimpleWrapperRoom> arrayList) {
        org.androidannotations.api.b.e("", new RunnableC0212d(arrayList), 0L);
    }

    @Override // com.join.mgps.fragment.roomlist.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f50132v0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f50133w0 = onCreateView;
        if (onCreateView == null) {
            this.f50133w0 = layoutInflater.inflate(R.layout.fragment_standardorelite_room, viewGroup, false);
        }
        return this.f50133w0;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50133w0 = null;
        this.f50089f = null;
        this.f50090g = null;
        this.f50091h = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50089f = (TextView) aVar.internalFindViewById(R.id.noData);
        this.f50090g = (XRecyclerView) aVar.internalFindViewById(R.id.mListView);
        this.f50091h = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f50132v0.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f50134x0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void y0(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }
}
