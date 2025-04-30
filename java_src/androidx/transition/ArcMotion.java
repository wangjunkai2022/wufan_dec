package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class ArcMotion extends PathMotion {

    /* renamed from: g  reason: collision with root package name */
    private static final float f7535g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private static final float f7536h = 70.0f;

    /* renamed from: i  reason: collision with root package name */
    private static final float f7537i = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: a  reason: collision with root package name */
    private float f7538a;

    /* renamed from: b  reason: collision with root package name */
    private float f7539b;

    /* renamed from: c  reason: collision with root package name */
    private float f7540c;

    /* renamed from: d  reason: collision with root package name */
    private float f7541d;

    /* renamed from: e  reason: collision with root package name */
    private float f7542e;

    /* renamed from: f  reason: collision with root package name */
    private float f7543f;

    public ArcMotion() {
        this.f7538a = 0.0f;
        this.f7539b = 0.0f;
        this.f7540c = f7536h;
        this.f7541d = 0.0f;
        this.f7542e = 0.0f;
        this.f7543f = f7537i;
    }

    private static float a(float f4) {
        if (f4 >= 0.0f && f4 <= 90.0f) {
            return (float) Math.tan(Math.toRadians(f4 / 2.0f));
        }
        throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
    }

    public float getMaximumAngle() {
        return this.f7540c;
    }

    public float getMinimumHorizontalAngle() {
        return this.f7538a;
    }

    public float getMinimumVerticalAngle() {
        return this.f7539b;
    }

    @Override // androidx.transition.PathMotion
    public Path getPath(float f4, float f5, float f6, float f7) {
        float f8;
        float f9;
        float f10;
        Path path = new Path();
        path.moveTo(f4, f5);
        float f11 = f6 - f4;
        float f12 = f7 - f5;
        float f13 = (f11 * f11) + (f12 * f12);
        float f14 = (f4 + f6) / 2.0f;
        float f15 = (f5 + f7) / 2.0f;
        float f16 = 0.25f * f13;
        boolean z3 = f5 > f7;
        if (Math.abs(f11) < Math.abs(f12)) {
            float abs = Math.abs(f13 / (f12 * 2.0f));
            if (z3) {
                f9 = abs + f7;
                f8 = f6;
            } else {
                f9 = abs + f5;
                f8 = f4;
            }
            f10 = this.f7542e;
        } else {
            float f17 = f13 / (f11 * 2.0f);
            if (z3) {
                f9 = f5;
                f8 = f17 + f4;
            } else {
                f8 = f6 - f17;
                f9 = f7;
            }
            f10 = this.f7541d;
        }
        float f18 = f16 * f10 * f10;
        float f19 = f14 - f8;
        float f20 = f15 - f9;
        float f21 = (f19 * f19) + (f20 * f20);
        float f22 = this.f7543f;
        float f23 = f16 * f22 * f22;
        if (f21 >= f18) {
            f18 = f21 > f23 ? f23 : 0.0f;
        }
        if (f18 != 0.0f) {
            float sqrt = (float) Math.sqrt(f18 / f21);
            f8 = ((f8 - f14) * sqrt) + f14;
            f9 = f15 + (sqrt * (f9 - f15));
        }
        path.cubicTo((f4 + f8) / 2.0f, (f5 + f9) / 2.0f, (f8 + f6) / 2.0f, (f9 + f7) / 2.0f, f6, f7);
        return path;
    }

    public void setMaximumAngle(float f4) {
        this.f7540c = f4;
        this.f7543f = a(f4);
    }

    public void setMinimumHorizontalAngle(float f4) {
        this.f7538a = f4;
        this.f7541d = a(f4);
    }

    public void setMinimumVerticalAngle(float f4) {
        this.f7539b = f4;
        this.f7542e = a(f4);
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7538a = 0.0f;
        this.f7539b = 0.0f;
        this.f7540c = f7536h;
        this.f7541d = 0.0f;
        this.f7542e = 0.0f;
        this.f7543f = f7537i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7693j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, f7536h));
        obtainStyledAttributes.recycle();
    }
}
