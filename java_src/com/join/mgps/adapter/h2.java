package com.join.mgps.adapter;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.join.mgps.dto.GameTransferBean;
/* compiled from: GameTransferHistoryAdapter_.java */
/* loaded from: classes3.dex */
public final class h2 extends g2 {

    /* renamed from: f  reason: collision with root package name */
    private Context f41701f;

    /* renamed from: g  reason: collision with root package name */
    private Object f41702g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GameTransferHistoryAdapter_.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41703a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GameTransferBean f41704b;

        a(int i2, GameTransferBean gameTransferBean) {
            this.f41703a = i2;
            this.f41704b = gameTransferBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            h2.super.b(this.f41703a, this.f41704b);
        }
    }

    /* compiled from: GameTransferHistoryAdapter_.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41706a;

        b(int i2) {
            this.f41706a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h2.super.g(this.f41706a);
        }
    }

    /* compiled from: GameTransferHistoryAdapter_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f41708a;

        c(int i2) {
            this.f41708a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h2.super.f(this.f41708a);
        }
    }

    /* compiled from: GameTransferHistoryAdapter_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SparseArray f41710a;

        d(SparseArray sparseArray) {
            this.f41710a = sparseArray;
        }

        @Override // java.lang.Runnable
        public void run() {
            h2.super.a(this.f41710a);
        }
    }

    /* compiled from: GameTransferHistoryAdapter_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h2.super.clear();
        }
    }

    private h2(Context context) {
        this.f41701f = context;
        y();
    }

    public static h2 w(Context context) {
        return new h2(context);
    }

    public static h2 x(Context context, Object obj) {
        return new h2(context, obj);
    }

    private void y() {
        this.f41675d = this.f41701f;
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
    /* renamed from: v */
    public void b(int i2, GameTransferBean gameTransferBean) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.b(i2, gameTransferBean);
        } else {
            org.androidannotations.api.b.e("", new a(i2, gameTransferBean), 0L);
        }
    }

    public void z(Context context) {
        this.f41701f = context;
        y();
    }

    private h2(Context context, Object obj) {
        this.f41701f = context;
        this.f41702g = obj;
        y();
    }
}
