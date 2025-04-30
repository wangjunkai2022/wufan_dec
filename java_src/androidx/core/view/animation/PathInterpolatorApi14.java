package androidx.core.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
/* loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {

    /* renamed from: c  reason: collision with root package name */
    private static final float f4998c = 0.002f;

    /* renamed from: a  reason: collision with root package name */
    private final float[] f4999a;

    /* renamed from: b  reason: collision with root package name */
    private final float[] f5000b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i2 = ((int) (length / 0.002f)) + 1;
        this.f4999a = new float[i2];
        this.f5000b = new float[i2];
        float[] fArr = new float[2];
        for (int i4 = 0; i4 < i2; i4++) {
            pathMeasure.getPosTan((i4 * length) / (i2 - 1), fArr, null);
            this.f4999a[i4] = fArr[0];
            this.f5000b[i4] = fArr[1];
        }
    }

    private static Path a(float f4, float f5, float f6, float f7) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f4, f5, f6, f7, 1.0f, 1.0f);
        return path;
    }

    private static Path b(float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f4, f5, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        if (f4 <= 0.0f) {
            return 0.0f;
        }
        if (f4 >= 1.0f) {
            return 1.0f;
        }
        int i2 = 0;
        int length = this.f4999a.length - 1;
        while (length - i2 > 1) {
            int i4 = (i2 + length) / 2;
            if (f4 < this.f4999a[i4]) {
                length = i4;
            } else {
                i2 = i4;
            }
        }
        float[] fArr = this.f4999a;
        float f5 = fArr[length] - fArr[i2];
        if (f5 == 0.0f) {
            return this.f5000b[i2];
        }
        float[] fArr2 = this.f5000b;
        float f6 = fArr2[i2];
        return f6 + (((f4 - fArr[i2]) / f5) * (fArr2[length] - f6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f4, float f5) {
        this(b(f4, f5));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathInterpolatorApi14(float f4, float f5, float f6, float f7) {
        this(a(f4, f5, f6, f7));
    }
}
