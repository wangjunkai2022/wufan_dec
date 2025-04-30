package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.k;
import java.util.ArrayList;
/* compiled from: CompositeDisposable.java */
/* loaded from: classes5.dex */
public final class a implements b, io.reactivex.internal.disposables.a {

    /* renamed from: a  reason: collision with root package name */
    k<b> f65796a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f65797b;

    public a() {
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean a(@NonNull b bVar) {
        if (delete(bVar)) {
            bVar.dispose();
            return true;
        }
        return false;
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean b(@NonNull b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "d is null");
        if (!this.f65797b) {
            synchronized (this) {
                if (!this.f65797b) {
                    k<b> kVar = this.f65796a;
                    if (kVar == null) {
                        kVar = new k<>();
                        this.f65796a = kVar;
                    }
                    kVar.a(bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    public boolean c(@NonNull b... bVarArr) {
        io.reactivex.internal.functions.a.g(bVarArr, "ds is null");
        if (!this.f65797b) {
            synchronized (this) {
                if (!this.f65797b) {
                    k<b> kVar = this.f65796a;
                    if (kVar == null) {
                        kVar = new k<>(bVarArr.length + 1);
                        this.f65796a = kVar;
                    }
                    for (b bVar : bVarArr) {
                        io.reactivex.internal.functions.a.g(bVar, "d is null");
                        kVar.a(bVar);
                    }
                    return true;
                }
            }
        }
        for (b bVar2 : bVarArr) {
            bVar2.dispose();
        }
        return false;
    }

    public void d() {
        if (this.f65797b) {
            return;
        }
        synchronized (this) {
            if (this.f65797b) {
                return;
            }
            k<b> kVar = this.f65796a;
            this.f65796a = null;
            e(kVar);
        }
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean delete(@NonNull b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "Disposable item is null");
        if (this.f65797b) {
            return false;
        }
        synchronized (this) {
            if (this.f65797b) {
                return false;
            }
            k<b> kVar = this.f65796a;
            if (kVar != null && kVar.e(bVar)) {
                return true;
            }
            return false;
        }
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        if (this.f65797b) {
            return;
        }
        synchronized (this) {
            if (this.f65797b) {
                return;
            }
            this.f65797b = true;
            k<b> kVar = this.f65796a;
            this.f65796a = null;
            e(kVar);
        }
    }

    void e(k<b> kVar) {
        Object[] b4;
        if (kVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : kVar.b()) {
            if (obj instanceof b) {
                try {
                    ((b) obj).dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw ExceptionHelper.e((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    public int f() {
        if (this.f65797b) {
            return 0;
        }
        synchronized (this) {
            if (this.f65797b) {
                return 0;
            }
            k<b> kVar = this.f65796a;
            return kVar != null ? kVar.g() : 0;
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f65797b;
    }

    public a(@NonNull b... bVarArr) {
        io.reactivex.internal.functions.a.g(bVarArr, "resources is null");
        this.f65796a = new k<>(bVarArr.length + 1);
        for (b bVar : bVarArr) {
            io.reactivex.internal.functions.a.g(bVar, "Disposable item is null");
            this.f65796a.a(bVar);
        }
    }

    public a(@NonNull Iterable<? extends b> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "resources is null");
        this.f65796a = new k<>();
        for (b bVar : iterable) {
            io.reactivex.internal.functions.a.g(bVar, "Disposable item is null");
            this.f65796a.a(bVar);
        }
    }
}
