package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a  reason: collision with root package name */
    private Path f7671a;

    /* renamed from: b  reason: collision with root package name */
    private final Path f7672b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f7673c;

    public PatternPathMotion() {
        Path path = new Path();
        this.f7672b = path;
        this.f7673c = new Matrix();
        path.lineTo(1.0f, 0.0f);
        this.f7671a = path;
    }

    private static float a(float f4, float f5) {
        return (float) Math.sqrt((f4 * f4) + (f5 * f5));
    }

    @Override // androidx.transition.PathMotion
    public Path getPath(float f4, float f5, float f6, float f7) {
        float f8 = f6 - f4;
        float f9 = f7 - f5;
        float a4 = a(f8, f9);
        double atan2 = Math.atan2(f9, f8);
        this.f7673c.setScale(a4, a4);
        this.f7673c.postRotate((float) Math.toDegrees(atan2));
        this.f7673c.postTranslate(f4, f5);
        Path path = new Path();
        this.f7672b.transform(this.f7673c, path);
        return path;
    }

    public Path getPatternPath() {
        return this.f7671a;
    }

    public void setPatternPath(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f4 = fArr[0];
        float f5 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f6 = fArr[0];
        float f7 = fArr[1];
        if (f6 == f4 && f7 == f5) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        this.f7673c.setTranslate(-f6, -f7);
        float f8 = f4 - f6;
        float f9 = f5 - f7;
        float a4 = 1.0f / a(f8, f9);
        this.f7673c.postScale(a4, a4);
        this.f7673c.postRotate((float) Math.toDegrees(-Math.atan2(f9, f8)));
        path.transform(this.f7673c, this.f7672b);
        this.f7671a = path;
    }

    @SuppressLint({"RestrictedApi"})
    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        this.f7672b = new Path();
        this.f7673c = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7694k);
        try {
            String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (namedString != null) {
                setPatternPath(PathParser.createPathFromPathData(namedString));
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public PatternPathMotion(Path path) {
        this.f7672b = new Path();
        this.f7673c = new Matrix();
        setPatternPath(path);
    }
}
