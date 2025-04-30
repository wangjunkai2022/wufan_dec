package external.org.apache.commons.lang3.builder;
/* compiled from: IDKey.java */
/* loaded from: classes3.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f65351a;

    /* renamed from: b  reason: collision with root package name */
    private final int f65352b;

    public e(Object _value) {
        this.f65352b = System.identityHashCode(_value);
        this.f65351a = _value;
    }

    public boolean equals(Object other) {
        if (other instanceof e) {
            e eVar = (e) other;
            return this.f65352b == eVar.f65352b && this.f65351a == eVar.f65351a;
        }
        return false;
    }

    public int hashCode() {
        return this.f65352b;
    }
}
