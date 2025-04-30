package io.reactivex.internal.operators.mixed;

import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.g0;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.maybe.MaybeToObservable;
import io.reactivex.internal.operators.single.SingleToObservable;
import io.reactivex.o0;
import io.reactivex.w;
import java.util.concurrent.Callable;
import w2.o;
/* compiled from: ScalarXMapZHelper.java */
/* loaded from: classes5.dex */
final class a {
    private a() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> boolean a(Object obj, o<? super T, ? extends g> oVar, d dVar) {
        if (obj instanceof Callable) {
            try {
                Object obj2 = (Object) ((Callable) obj).call();
                g gVar = obj2 != 0 ? (g) io.reactivex.internal.functions.a.g(oVar.apply(obj2), "The mapper returned a null CompletableSource") : null;
                if (gVar == null) {
                    EmptyDisposable.complete(dVar);
                } else {
                    gVar.a(dVar);
                }
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, dVar);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> boolean b(Object obj, o<? super T, ? extends w<? extends R>> oVar, g0<? super R> g0Var) {
        if (obj instanceof Callable) {
            try {
                Object obj2 = (Object) ((Callable) obj).call();
                w wVar = obj2 != 0 ? (w) io.reactivex.internal.functions.a.g(oVar.apply(obj2), "The mapper returned a null MaybeSource") : null;
                if (wVar == null) {
                    EmptyDisposable.complete(g0Var);
                } else {
                    wVar.a(MaybeToObservable.f8(g0Var));
                }
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> boolean c(Object obj, o<? super T, ? extends o0<? extends R>> oVar, g0<? super R> g0Var) {
        if (obj instanceof Callable) {
            try {
                Object obj2 = (Object) ((Callable) obj).call();
                o0 o0Var = obj2 != 0 ? (o0) io.reactivex.internal.functions.a.g(oVar.apply(obj2), "The mapper returned a null SingleSource") : null;
                if (o0Var == null) {
                    EmptyDisposable.complete(g0Var);
                } else {
                    o0Var.a(SingleToObservable.f8(g0Var));
                }
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
                return true;
            }
        }
        return false;
    }
}
