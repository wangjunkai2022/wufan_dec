package io.reactivex.internal.disposables;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* compiled from: ListCompositeDisposable.java */
/* loaded from: classes5.dex */
public final class b implements io.reactivex.disposables.b, a {

    /* renamed from: a  reason: collision with root package name */
    List<io.reactivex.disposables.b> f65820a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f65821b;

    public b() {
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean a(io.reactivex.disposables.b bVar) {
        if (delete(bVar)) {
            bVar.dispose();
            return true;
        }
        return false;
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean b(io.reactivex.disposables.b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "d is null");
        if (!this.f65821b) {
            synchronized (this) {
                if (!this.f65821b) {
                    List list = this.f65820a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f65820a = list;
                    }
                    list.add(bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    public boolean c(io.reactivex.disposables.b... bVarArr) {
        io.reactivex.internal.functions.a.g(bVarArr, "ds is null");
        if (!this.f65821b) {
            synchronized (this) {
                if (!this.f65821b) {
                    List list = this.f65820a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f65820a = list;
                    }
                    for (io.reactivex.disposables.b bVar : bVarArr) {
                        io.reactivex.internal.functions.a.g(bVar, "d is null");
                        list.add(bVar);
                    }
                    return true;
                }
            }
        }
        for (io.reactivex.disposables.b bVar2 : bVarArr) {
            bVar2.dispose();
        }
        return false;
    }

    public void d() {
        if (this.f65821b) {
            return;
        }
        synchronized (this) {
            if (this.f65821b) {
                return;
            }
            List<io.reactivex.disposables.b> list = this.f65820a;
            this.f65820a = null;
            e(list);
        }
    }

    @Override // io.reactivex.internal.disposables.a
    public boolean delete(io.reactivex.disposables.b bVar) {
        io.reactivex.internal.functions.a.g(bVar, "Disposable item is null");
        if (this.f65821b) {
            return false;
        }
        synchronized (this) {
            if (this.f65821b) {
                return false;
            }
            List<io.reactivex.disposables.b> list = this.f65820a;
            if (list != null && list.remove(bVar)) {
                return true;
            }
            return false;
        }
    }

    @Override // io.reactivex.disposables.b
    public void dispose() {
        if (this.f65821b) {
            return;
        }
        synchronized (this) {
            if (this.f65821b) {
                return;
            }
            this.f65821b = true;
            List<io.reactivex.disposables.b> list = this.f65820a;
            this.f65820a = null;
            e(list);
        }
    }

    void e(List<io.reactivex.disposables.b> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = null;
        for (io.reactivex.disposables.b bVar : list) {
            try {
                bVar.dispose();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw ExceptionHelper.e((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    @Override // io.reactivex.disposables.b
    public boolean isDisposed() {
        return this.f65821b;
    }

    public b(io.reactivex.disposables.b... bVarArr) {
        io.reactivex.internal.functions.a.g(bVarArr, "resources is null");
        this.f65820a = new LinkedList();
        for (io.reactivex.disposables.b bVar : bVarArr) {
            io.reactivex.internal.functions.a.g(bVar, "Disposable item is null");
            this.f65820a.add(bVar);
        }
    }

    public b(Iterable<? extends io.reactivex.disposables.b> iterable) {
        io.reactivex.internal.functions.a.g(iterable, "resources is null");
        this.f65820a = new LinkedList();
        for (io.reactivex.disposables.b bVar : iterable) {
            io.reactivex.internal.functions.a.g(bVar, "Disposable item is null");
            this.f65820a.add(bVar);
        }
    }
}
