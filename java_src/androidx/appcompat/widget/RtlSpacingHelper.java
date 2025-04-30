package androidx.appcompat.widget;
/* loaded from: classes.dex */
class RtlSpacingHelper {
    public static final int UNDEFINED = Integer.MIN_VALUE;

    /* renamed from: a  reason: collision with root package name */
    private int f1289a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f1290b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f1291c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private int f1292d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private int f1293e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f1294f = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1295g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1296h = false;

    public int getEnd() {
        return this.f1295g ? this.f1289a : this.f1290b;
    }

    public int getLeft() {
        return this.f1289a;
    }

    public int getRight() {
        return this.f1290b;
    }

    public int getStart() {
        return this.f1295g ? this.f1290b : this.f1289a;
    }

    public void setAbsolute(int i2, int i4) {
        this.f1296h = false;
        if (i2 != Integer.MIN_VALUE) {
            this.f1293e = i2;
            this.f1289a = i2;
        }
        if (i4 != Integer.MIN_VALUE) {
            this.f1294f = i4;
            this.f1290b = i4;
        }
    }

    public void setDirection(boolean z3) {
        if (z3 == this.f1295g) {
            return;
        }
        this.f1295g = z3;
        if (!this.f1296h) {
            this.f1289a = this.f1293e;
            this.f1290b = this.f1294f;
        } else if (z3) {
            int i2 = this.f1292d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f1293e;
            }
            this.f1289a = i2;
            int i4 = this.f1291c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = this.f1294f;
            }
            this.f1290b = i4;
        } else {
            int i5 = this.f1291c;
            if (i5 == Integer.MIN_VALUE) {
                i5 = this.f1293e;
            }
            this.f1289a = i5;
            int i6 = this.f1292d;
            if (i6 == Integer.MIN_VALUE) {
                i6 = this.f1294f;
            }
            this.f1290b = i6;
        }
    }

    public void setRelative(int i2, int i4) {
        this.f1291c = i2;
        this.f1292d = i4;
        this.f1296h = true;
        if (this.f1295g) {
            if (i4 != Integer.MIN_VALUE) {
                this.f1289a = i4;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f1290b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1289a = i2;
        }
        if (i4 != Integer.MIN_VALUE) {
            this.f1290b = i4;
        }
    }
}
