package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import io.reactivex.e0;
import io.reactivex.f0;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.List;
import w2.o;
/* compiled from: RxPermissions.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    static final String f59254b = "c";

    /* renamed from: c  reason: collision with root package name */
    static final Object f59255c = new Object();
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    f<com.tbruyelle.rxpermissions2.d> f59256a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxPermissions.java */
    /* loaded from: classes4.dex */
    public class a implements f<com.tbruyelle.rxpermissions2.d> {

        /* renamed from: a  reason: collision with root package name */
        private com.tbruyelle.rxpermissions2.d f59257a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FragmentManager f59258b;

        a(FragmentManager fragmentManager) {
            this.f59258b = fragmentManager;
        }

        @Override // com.tbruyelle.rxpermissions2.c.f
        /* renamed from: a */
        public synchronized com.tbruyelle.rxpermissions2.d get() {
            if (this.f59257a == null) {
                this.f59257a = c.this.i(this.f59258b);
            }
            return this.f59257a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: RxPermissions.java */
    /* loaded from: classes4.dex */
    public class b<T> implements f0<T, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f59260a;

        /* compiled from: RxPermissions.java */
        /* loaded from: classes4.dex */
        class a implements o<List<com.tbruyelle.rxpermissions2.b>, e0<Boolean>> {
            a() {
            }

            @Override // w2.o
            /* renamed from: a */
            public e0<Boolean> apply(List<com.tbruyelle.rxpermissions2.b> list) {
                if (list.isEmpty()) {
                    return z.b2();
                }
                for (com.tbruyelle.rxpermissions2.b bVar : list) {
                    if (!bVar.f59248b) {
                        return z.j3(Boolean.FALSE);
                    }
                }
                return z.j3(Boolean.TRUE);
            }
        }

        b(String[] strArr) {
            this.f59260a = strArr;
        }

        @Override // io.reactivex.f0
        public e0<Boolean> a(z<T> zVar) {
            return c.this.p(zVar, this.f59260a).z(this.f59260a.length).i2(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: RxPermissions.java */
    /* renamed from: com.tbruyelle.rxpermissions2.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0341c<T> implements f0<T, com.tbruyelle.rxpermissions2.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f59263a;

        C0341c(String[] strArr) {
            this.f59263a = strArr;
        }

        @Override // io.reactivex.f0
        public e0<com.tbruyelle.rxpermissions2.b> a(z<T> zVar) {
            return c.this.p(zVar, this.f59263a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: RxPermissions.java */
    /* loaded from: classes4.dex */
    public class d<T> implements f0<T, com.tbruyelle.rxpermissions2.b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f59265a;

        /* compiled from: RxPermissions.java */
        /* loaded from: classes4.dex */
        class a implements o<List<com.tbruyelle.rxpermissions2.b>, e0<com.tbruyelle.rxpermissions2.b>> {
            a() {
            }

            @Override // w2.o
            /* renamed from: a */
            public e0<com.tbruyelle.rxpermissions2.b> apply(List<com.tbruyelle.rxpermissions2.b> list) {
                if (list.isEmpty()) {
                    return z.b2();
                }
                return z.j3(new com.tbruyelle.rxpermissions2.b(list));
            }
        }

        d(String[] strArr) {
            this.f59265a = strArr;
        }

        @Override // io.reactivex.f0
        public e0<com.tbruyelle.rxpermissions2.b> a(z<T> zVar) {
            return c.this.p(zVar, this.f59265a).z(this.f59265a.length).i2(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxPermissions.java */
    /* loaded from: classes4.dex */
    public class e implements o<Object, z<com.tbruyelle.rxpermissions2.b>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f59268a;

        e(String[] strArr) {
            this.f59268a = strArr;
        }

        @Override // w2.o
        /* renamed from: a */
        public z<com.tbruyelle.rxpermissions2.b> apply(Object obj) {
            return c.this.t(this.f59268a);
        }
    }

    /* compiled from: RxPermissions.java */
    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface f<V> {
        V get();
    }

    public c(@NonNull FragmentActivity fragmentActivity) {
        this.f59256a = h(fragmentActivity.getSupportFragmentManager());
    }

    private com.tbruyelle.rxpermissions2.d g(@NonNull FragmentManager fragmentManager) {
        return (com.tbruyelle.rxpermissions2.d) fragmentManager.findFragmentByTag(f59254b);
    }

    @NonNull
    private f<com.tbruyelle.rxpermissions2.d> h(@NonNull FragmentManager fragmentManager) {
        return new a(fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.tbruyelle.rxpermissions2.d i(@NonNull FragmentManager fragmentManager) {
        com.tbruyelle.rxpermissions2.d g4 = g(fragmentManager);
        if (g4 == null) {
            com.tbruyelle.rxpermissions2.d dVar = new com.tbruyelle.rxpermissions2.d();
            fragmentManager.beginTransaction().add(dVar, f59254b).commitNow();
            return dVar;
        }
        return g4;
    }

    private z<?> n(z<?> zVar, z<?> zVar2) {
        if (zVar == null) {
            return z.j3(f59255c);
        }
        return z.B3(zVar, zVar2);
    }

    private z<?> o(String... strArr) {
        for (String str : strArr) {
            if (!this.f59256a.get().M(str)) {
                return z.b2();
            }
        }
        return z.j3(f59255c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public z<com.tbruyelle.rxpermissions2.b> p(z<?> zVar, String... strArr) {
        if (strArr != null && strArr.length != 0) {
            return n(zVar, o(strArr)).i2(new e(strArr));
        }
        throw new IllegalArgumentException("RxPermissions.request/requestEach requires at least one input permission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public z<com.tbruyelle.rxpermissions2.b> t(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            this.f59256a.get().Q("Requesting permission " + str);
            if (j(str)) {
                arrayList.add(z.j3(new com.tbruyelle.rxpermissions2.b(str, true, false)));
            } else if (l(str)) {
                arrayList.add(z.j3(new com.tbruyelle.rxpermissions2.b(str, false, false)));
            } else {
                PublishSubject<com.tbruyelle.rxpermissions2.b> N = this.f59256a.get().N(str);
                if (N == null) {
                    arrayList2.add(str);
                    N = PublishSubject.l8();
                    this.f59256a.get().T(str, N);
                }
                arrayList.add(N);
            }
        }
        if (!arrayList2.isEmpty()) {
            u((String[]) arrayList2.toArray(new String[arrayList2.size()]));
        }
        return z.r0(z.M2(arrayList));
    }

    @TargetApi(23)
    private boolean x(Activity activity, String... strArr) {
        for (String str : strArr) {
            if (!j(str) && !activity.shouldShowRequestPermissionRationale(str)) {
                return false;
            }
        }
        return true;
    }

    public <T> f0<T, Boolean> d(String... strArr) {
        return new b(strArr);
    }

    public <T> f0<T, com.tbruyelle.rxpermissions2.b> e(String... strArr) {
        return new C0341c(strArr);
    }

    public <T> f0<T, com.tbruyelle.rxpermissions2.b> f(String... strArr) {
        return new d(strArr);
    }

    public boolean j(String str) {
        return !k() || this.f59256a.get().O(str);
    }

    boolean k() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public boolean l(String str) {
        return k() && this.f59256a.get().P(str);
    }

    void m(String[] strArr, int[] iArr) {
        this.f59256a.get().R(strArr, iArr, new boolean[strArr.length]);
    }

    public z<Boolean> q(String... strArr) {
        return z.j3(f59255c).q0(d(strArr));
    }

    public z<com.tbruyelle.rxpermissions2.b> r(String... strArr) {
        return z.j3(f59255c).q0(e(strArr));
    }

    public z<com.tbruyelle.rxpermissions2.b> s(String... strArr) {
        return z.j3(f59255c).q0(f(strArr));
    }

    @TargetApi(23)
    void u(String[] strArr) {
        this.f59256a.get().Q("requestPermissionsFromFragment " + TextUtils.join(", ", strArr));
        this.f59256a.get().requestPermissions(strArr);
    }

    public void v(boolean z3) {
        this.f59256a.get().S(z3);
    }

    public z<Boolean> w(Activity activity, String... strArr) {
        if (!k()) {
            return z.j3(Boolean.FALSE);
        }
        return z.j3(Boolean.valueOf(x(activity, strArr)));
    }

    public c(@NonNull Fragment fragment) {
        this.f59256a = h(fragment.getChildFragmentManager());
    }
}
