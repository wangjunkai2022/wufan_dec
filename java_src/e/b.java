package e;
/* compiled from: NumericWheelAdapter.java */
/* loaded from: classes2.dex */
public class b implements c {

    /* renamed from: c  reason: collision with root package name */
    public static final int f65146c = 9;

    /* renamed from: d  reason: collision with root package name */
    private static final int f65147d = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f65148a;

    /* renamed from: b  reason: collision with root package name */
    private int f65149b;

    public b() {
        this(0, 9);
    }

    @Override // e.c
    public int a() {
        return (this.f65149b - this.f65148a) + 1;
    }

    @Override // e.c
    public Object getItem(int i2) {
        if (i2 >= 0 && i2 < a()) {
            return Integer.valueOf(this.f65148a + i2);
        }
        return 0;
    }

    @Override // e.c
    public int indexOf(Object obj) {
        return ((Integer) obj).intValue() - this.f65148a;
    }

    public b(int i2, int i4) {
        this.f65148a = i2;
        this.f65149b = i4;
    }
}
