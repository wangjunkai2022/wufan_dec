package com.join.mgps.adapter;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.join.mgps.dto.GameTransferBean;
/* compiled from: GameTransferListAdapter_.java */
/* loaded from: classes3.dex */
public final class j2 extends i2 {

    /* renamed from: g  reason: collision with root package name */
    private Context f42293g;

    /* renamed from: h  reason: collision with root package name */
    private Object f42294h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameTransferListAdapter_.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42295a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameTransferBean f42296b;

        a(int i2, GameTransferBean gameTransferBean) {
            this.f42295a = i2;
            this.f42296b = gameTransferBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j2.super.b(this.f42295a, this.f42296b);
        }
    }

    /* compiled from: GameTransferListAdapter_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42298a;

        b(int i2) {
            this.f42298a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            j2.super.g(this.f42298a);
        }
    }

    /* compiled from: GameTransferListAdapter_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42300a;

        c(int i2) {
            this.f42300a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            j2.super.f(this.f42300a);
        }
    }

    /* compiled from: GameTransferListAdapter_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SparseArray f42302a;

        d(SparseArray sparseArray) {
            this.f42302a = sparseArray;
        }

        @Override // java.lang.Runnable
        public void run() {
            j2.super.a(this.f42302a);
        }
    }

    /* compiled from: GameTransferListAdapter_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j2.super.clear();
        }
    }

    private j2(Context context) {
        this.f42293g = context;
        z();
    }

    public static j2 x(Context context) {
        return new j2(context);
    }

    public static j2 y(Context context, Object obj) {
        return new j2(context, obj);
    }

    private void z() {
        this.f42254d = this.f42293g;
    }

    public void A(Context context) {
        this.f42293g = context;
        z();
    }

    @Override // com.join.mgps.adapter.a5
    public void a(SparseArray<GameTransferBean> sparseArray) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.a(sparseArray);
        } else {
            org.androidannotations.api.b.e("", new d(sparseArray), 0L);
        }
    }

    @Override // com.join.mgps.adapter.a5
    public void clear() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.clear();
        } else {
            org.androidannotations.api.b.e("", new e(), 0L);
        }
    }

    @Override // com.join.mgps.adapter.a5
    public void f(int i2) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.f(i2);
        } else {
            org.androidannotations.api.b.e("", new c(i2), 0L);
        }
    }

    @Override // com.join.mgps.adapter.a5
    public void g(int i2) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.g(i2);
        } else {
            org.androidannotations.api.b.e("", new b(i2), 0L);
        }
    }

    @Override // com.join.mgps.adapter.a5
    /* renamed from: w */
    public void b(int i2, GameTransferBean gameTransferBean) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.b(i2, gameTransferBean);
        } else {
            org.androidannotations.api.b.e("", new a(i2, gameTransferBean), 0L);
        }
    }

    private j2(Context context, Object obj) {
        this.f42293g = context;
        this.f42294h = obj;
        z();
    }
}
