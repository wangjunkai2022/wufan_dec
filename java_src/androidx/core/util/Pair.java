package androidx.core.util;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f4, S s3) {
        this.first = f4;
        this.second = s3;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(A a4, B b4) {
        return new Pair<>(a4, b4);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
        }
        return false;
    }

    public int hashCode() {
        F f4 = this.first;
        int hashCode = f4 == null ? 0 : f4.hashCode();
        S s3 = this.second;
        return hashCode ^ (s3 != null ? s3.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "Pair{" + this.first + " " + this.second + "}";
    }
}
