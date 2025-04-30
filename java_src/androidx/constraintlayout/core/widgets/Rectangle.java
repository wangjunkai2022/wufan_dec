package androidx.constraintlayout.core.widgets;
/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x  reason: collision with root package name */
    public int f2554x;

    /* renamed from: y  reason: collision with root package name */
    public int f2555y;

    void a(int i2, int i4) {
        this.f2554x -= i2;
        this.f2555y -= i4;
        this.width += i2 * 2;
        this.height += i4 * 2;
    }

    boolean b(Rectangle rectangle) {
        int i2;
        int i4;
        int i5 = this.f2554x;
        int i6 = rectangle.f2554x;
        return i5 >= i6 && i5 < i6 + rectangle.width && (i2 = this.f2555y) >= (i4 = rectangle.f2555y) && i2 < i4 + rectangle.height;
    }

    public boolean contains(int i2, int i4) {
        int i5;
        int i6 = this.f2554x;
        return i2 >= i6 && i2 < i6 + this.width && i4 >= (i5 = this.f2555y) && i4 < i5 + this.height;
    }

    public int getCenterX() {
        return (this.f2554x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f2555y + this.height) / 2;
    }

    public void setBounds(int i2, int i4, int i5, int i6) {
        this.f2554x = i2;
        this.f2555y = i4;
        this.width = i5;
        this.height = i6;
    }
}
