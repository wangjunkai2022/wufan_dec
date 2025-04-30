package io.reactivex.schedulers;

import io.reactivex.annotations.NonNull;
import java.util.concurrent.TimeUnit;
/* compiled from: Timed.java */
/* loaded from: classes5.dex */
public final class d<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f70291a;

    /* renamed from: b  reason: collision with root package name */
    final long f70292b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f70293c;

    public d(@NonNull T t3, long j4, @NonNull TimeUnit timeUnit) {
        this.f70291a = t3;
        this.f70292b = j4;
        this.f70293c = (TimeUnit) io.reactivex.internal.functions.a.g(timeUnit, "unit is null");
    }

    public long a() {
        return this.f70292b;
    }

    public long b(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(this.f70292b, this.f70293c);
    }

    @NonNull
    public TimeUnit c() {
        return this.f70293c;
    }

    @NonNull
    public T d() {
        return this.f70291a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            return io.reactivex.internal.functions.a.c(this.f70291a, dVar.f70291a) && this.f70292b == dVar.f70292b && io.reactivex.internal.functions.a.c(this.f70293c, dVar.f70293c);
        }
        return false;
    }

    public int hashCode() {
        T t3 = this.f70291a;
        int hashCode = t3 != null ? t3.hashCode() : 0;
        long j4 = this.f70292b;
        return (((hashCode * 31) + ((int) (j4 ^ (j4 >>> 31)))) * 31) + this.f70293c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f70292b + ", unit=" + this.f70293c + ", value=" + this.f70291a + "]";
    }
}
