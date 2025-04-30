package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;

    /* renamed from: c  reason: collision with root package name */
    private static final float f7899c = 0.002f;

    /* renamed from: a  reason: collision with root package name */
    private float[] f7900a;

    /* renamed from: b  reason: collision with root package name */
    private float[] f7901b;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private void a(float f4, float f5, float f6, float f7) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f4, f5, f6, f7, 1.0f, 1.0f);
        b(path);
    }

    private void b(Path path) {
        int i2 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f7900a = new float[min];
            this.f7901b = new float[min];
            float[] fArr = new float[2];
            for (int i4 = 0; i4 < min; i4++) {
                pathMeasure.getPosTan((i4 * length) / (min - 1), fArr, null);
                this.f7900a[i4] = fArr[0];
                this.f7901b[i4] = fArr[1];
            }
            if (Math.abs(this.f7900a[0]) <= 1.0E-5d && Math.abs(this.f7901b[0]) <= 1.0E-5d) {
                int i5 = min - 1;
                if (Math.abs(this.f7900a[i5] - 1.0f) <= 1.0E-5d && Math.abs(this.f7901b[i5] - 1.0f) <= 1.0E-5d) {
                    float f4 = 0.0f;
                    int i6 = 0;
                    while (i2 < min) {
                        float[] fArr2 = this.f7900a;
                        int i7 = i6 + 1;
                        float f5 = fArr2[i6];
                        if (f5 >= f4) {
                            fArr2[i2] = f5;
                            i2++;
                            f4 = f5;
                            i6 = i7;
                        } else {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f5);
                        }
                    }
                    if (pathMeasure.nextContour()) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("The Path must start at (0,0) and end at (1,1) start: ");
            sb.append(this.f7900a[0]);
            sb.append(",");
            sb.append(this.f7901b[0]);
            sb.append(" end:");
            int i8 = min - 1;
            sb.append(this.f7900a[i8]);
            sb.append(",");
            sb.append(this.f7901b[i8]);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length " + length);
    }

    private void c(float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f4, f5, 1.0f, 1.0f);
        b(path);
    }

    private void d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 4);
            Path createPathFromPathData = PathParser.createPathFromPathData(namedString);
            if (createPathFromPathData != null) {
                b(createPathFromPathData);
                return;
            }
            throw new InflateException("The path is null, which is created from " + namedString);
        } else if (TypedArrayUtils.hasAttribute(xmlPullParser, "controlX1")) {
            if (TypedArrayUtils.hasAttribute(xmlPullParser, "controlY1")) {
                float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
                float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
                boolean hasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "controlX2");
                if (hasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, "controlY2")) {
                    throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
                }
                if (!hasAttribute) {
                    c(namedFloat, namedFloat2);
                    return;
                } else {
                    a(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
                    return;
                }
            }
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        } else {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
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
        int length = this.f7900a.length - 1;
        while (length - i2 > 1) {
            int i4 = (i2 + length) / 2;
            if (f4 < this.f7900a[i4]) {
                length = i4;
            } else {
                i2 = i4;
            }
        }
        float[] fArr = this.f7900a;
        float f5 = fArr[length] - fArr[i2];
        if (f5 == 0.0f) {
            return this.f7901b[i2];
        }
        float[] fArr2 = this.f7901b;
        float f6 = fArr2[i2];
        return f6 + (((f4 - fArr[i2]) / f5) * (fArr2[length] - f6));
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        d(obtainAttributes, xmlPullParser);
        obtainAttributes.recycle();
    }
}
