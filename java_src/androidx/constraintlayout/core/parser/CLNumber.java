package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLNumber extends CLElement {

    /* renamed from: h  reason: collision with root package name */
    float f2291h;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.f2291h = Float.NaN;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLNumber(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public float getFloat() {
        if (Float.isNaN(this.f2291h)) {
            this.f2291h = Float.parseFloat(content());
        }
        return this.f2291h;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int getInt() {
        if (Float.isNaN(this.f2291h)) {
            this.f2291h = Integer.parseInt(content());
        }
        return (int) this.f2291h;
    }

    public boolean isInt() {
        float f4 = getFloat();
        return ((float) ((int) f4)) == f4;
    }

    public void putValue(float f4) {
        this.f2291h = f4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        a(sb, i2);
        float f4 = getFloat();
        int i5 = (int) f4;
        if (i5 == f4) {
            sb.append(i5);
        } else {
            sb.append(f4);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        float f4 = getFloat();
        int i2 = (int) f4;
        if (i2 == f4) {
            return "" + i2;
        }
        return "" + f4;
    }

    public CLNumber(float f4) {
        super(null);
        this.f2291h = Float.NaN;
        this.f2291h = f4;
    }
}
