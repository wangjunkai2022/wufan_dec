package external.org.apache.commons.lang3.mutable;
/* loaded from: classes3.dex */
public class MutableInt extends Number implements Comparable<MutableInt>, a<Number> {
    private static final long serialVersionUID = 512176391864L;

    /* renamed from: a  reason: collision with root package name */
    private int f65453a;

    public MutableInt() {
    }

    public void A() {
        this.f65453a--;
    }

    @Override // external.org.apache.commons.lang3.mutable.a
    /* renamed from: U */
    public Integer getValue() {
        return Integer.valueOf(this.f65453a);
    }

    public void Y() {
        this.f65453a++;
    }

    public void a0(int value) {
        this.f65453a = value;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.f65453a;
    }

    @Override // external.org.apache.commons.lang3.mutable.a
    /* renamed from: e0 */
    public void setValue(Number value) {
        this.f65453a = value.intValue();
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableInt) && this.f65453a == ((MutableInt) obj).intValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.f65453a;
    }

    public int hashCode() {
        return this.f65453a;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.f65453a;
    }

    public void k0(int operand) {
        this.f65453a -= operand;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.f65453a;
    }

    public void m(int operand) {
        this.f65453a += operand;
    }

    public void m0(Number operand) {
        this.f65453a -= operand.intValue();
    }

    public void s(Number operand) {
        this.f65453a += operand.intValue();
    }

    public String toString() {
        return String.valueOf(this.f65453a);
    }

    public Integer v0() {
        return Integer.valueOf(intValue());
    }

    @Override // java.lang.Comparable
    /* renamed from: x */
    public int compareTo(MutableInt other) {
        int i2 = other.f65453a;
        int i4 = this.f65453a;
        if (i4 < i2) {
            return -1;
        }
        return i4 == i2 ? 0 : 1;
    }

    public MutableInt(int value) {
        this.f65453a = value;
    }

    public MutableInt(Number value) {
        this.f65453a = value.intValue();
    }

    public MutableInt(String value) throws NumberFormatException {
        this.f65453a = Integer.parseInt(value);
    }
}
