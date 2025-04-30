package io.reactivex.internal.util;

import io.reactivex.g0;
import java.io.Serializable;
/* loaded from: classes5.dex */
public enum NotificationLite {
    COMPLETE;

    /* loaded from: classes5.dex */
    static final class DisposableNotification implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.disposables.b f70085a;

        DisposableNotification(io.reactivex.disposables.b bVar) {
            this.f70085a = bVar;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.f70085a + "]";
        }
    }

    /* loaded from: classes5.dex */
    static final class ErrorNotification implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;

        /* renamed from: a  reason: collision with root package name */
        final Throwable f70086a;

        ErrorNotification(Throwable th) {
            this.f70086a = th;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ErrorNotification) {
                return io.reactivex.internal.functions.a.c(this.f70086a, ((ErrorNotification) obj).f70086a);
            }
            return false;
        }

        public int hashCode() {
            return this.f70086a.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.f70086a + "]";
        }
    }

    /* loaded from: classes5.dex */
    static final class SubscriptionNotification implements Serializable {
        private static final long serialVersionUID = -1322257508628817540L;

        /* renamed from: a  reason: collision with root package name */
        final l3.d f70087a;

        SubscriptionNotification(l3.d dVar) {
            this.f70087a = dVar;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.f70087a + "]";
        }
    }

    public static <T> boolean accept(Object obj, l3.c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            cVar.onError(((ErrorNotification) obj).f70086a);
            return true;
        } else {
            cVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, l3.c<? super T> cVar) {
        if (obj == COMPLETE) {
            cVar.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            cVar.onError(((ErrorNotification) obj).f70086a);
            return true;
        } else if (obj instanceof SubscriptionNotification) {
            cVar.onSubscribe(((SubscriptionNotification) obj).f70087a);
            return false;
        } else {
            cVar.onNext(obj);
            return false;
        }
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(io.reactivex.disposables.b bVar) {
        return new DisposableNotification(bVar);
    }

    public static Object error(Throwable th) {
        return new ErrorNotification(th);
    }

    public static io.reactivex.disposables.b getDisposable(Object obj) {
        return ((DisposableNotification) obj).f70085a;
    }

    public static Throwable getError(Object obj) {
        return ((ErrorNotification) obj).f70086a;
    }

    public static l3.d getSubscription(Object obj) {
        return ((SubscriptionNotification) obj).f70087a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof DisposableNotification;
    }

    public static boolean isError(Object obj) {
        return obj instanceof ErrorNotification;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof SubscriptionNotification;
    }

    public static <T> Object next(T t3) {
        return t3;
    }

    public static Object subscription(l3.d dVar) {
        return new SubscriptionNotification(dVar);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }

    public static <T> boolean accept(Object obj, g0<? super T> g0Var) {
        if (obj == COMPLETE) {
            g0Var.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            g0Var.onError(((ErrorNotification) obj).f70086a);
            return true;
        } else {
            g0Var.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, g0<? super T> g0Var) {
        if (obj == COMPLETE) {
            g0Var.onComplete();
            return true;
        } else if (obj instanceof ErrorNotification) {
            g0Var.onError(((ErrorNotification) obj).f70086a);
            return true;
        } else if (obj instanceof DisposableNotification) {
            g0Var.onSubscribe(((DisposableNotification) obj).f70085a);
            return false;
        } else {
            g0Var.onNext(obj);
            return false;
        }
    }
}
