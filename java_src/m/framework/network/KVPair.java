package m.framework.network;
/* loaded from: classes5.dex */
public class KVPair<T> {
    public final String name;
    public final T value;

    public KVPair(String str, T t3) {
        this.name = str;
        this.value = t3;
    }

    public String toString() {
        return String.valueOf(this.name) + " = " + this.value;
    }
}
