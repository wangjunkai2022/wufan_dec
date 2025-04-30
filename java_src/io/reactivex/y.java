package io.reactivex;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.util.NotificationLite;
/* compiled from: Notification.java */
/* loaded from: classes5.dex */
public final class y<T> {

    /* renamed from: b  reason: collision with root package name */
    static final y<Object> f70408b = new y<>(null);

    /* renamed from: a  reason: collision with root package name */
    final Object f70409a;

    private y(Object obj) {
        this.f70409a = obj;
    }

    @NonNull
    public static <T> y<T> a() {
        return (y<T>) f70408b;
    }

    @NonNull
    public static <T> y<T> b(@NonNull Throwable th) {
        io.reactivex.internal.functions.a.g(th, "error is null");
        return new y<>(NotificationLite.error(th));
    }

    @NonNull
    public static <T> y<T> c(@NonNull T t3) {
        io.reactivex.internal.functions.a.g(t3, "value is null");
        return new y<>(t3);
    }

    @Nullable
    public Throwable d() {
        Object obj = this.f70409a;
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Nullable
    public T e() {
        Object obj = this.f70409a;
        if (obj == null || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) this.f70409a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof y) {
            return io.reactivex.internal.functions.a.c(this.f70409a, ((y) obj).f70409a);
        }
        return false;
    }

    public boolean f() {
        return this.f70409a == null;
    }

    public boolean g() {
        return NotificationLite.isError(this.f70409a);
    }

    public boolean h() {
        Object obj = this.f70409a;
        return (obj == null || NotificationLite.isError(obj)) ? false : true;
    }

    public int hashCode() {
        Object obj = this.f70409a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public String toString() {
        Object obj = this.f70409a;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (NotificationLite.isError(obj)) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + this.f70409a + "]";
    }
}
