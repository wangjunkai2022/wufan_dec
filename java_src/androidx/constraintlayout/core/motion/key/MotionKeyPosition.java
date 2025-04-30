package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.f;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes.dex */
public class MotionKeyPosition extends MotionKey {
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;

    /* renamed from: e  reason: collision with root package name */
    static final String f2011e = "KeyPosition";

    /* renamed from: f  reason: collision with root package name */
    protected static final float f2012f = 20.0f;

    /* renamed from: g  reason: collision with root package name */
    static final int f2013g = 2;

    /* renamed from: c  reason: collision with root package name */
    private float f2014c;

    /* renamed from: d  reason: collision with root package name */
    private float f2015d;
    public float mAltPercentX;
    public float mAltPercentY;
    public int mCurveFit;
    public int mDrawPath;
    public int mPathMotionArc;
    public float mPercentHeight;
    public float mPercentWidth;
    public float mPercentX;
    public float mPercentY;
    public int mPositionType;
    public String mTransitionEasing;

    public MotionKeyPosition() {
        int i2 = MotionKey.UNSET;
        this.mCurveFit = i2;
        this.mTransitionEasing = null;
        this.mPathMotionArc = i2;
        this.mDrawPath = 0;
        this.mPercentWidth = Float.NaN;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = Float.NaN;
        this.mPercentY = Float.NaN;
        this.mAltPercentX = Float.NaN;
        this.mAltPercentY = Float.NaN;
        this.mPositionType = 0;
        this.f2014c = Float.NaN;
        this.f2015d = Float.NaN;
        this.mType = 2;
    }

    private void e(float f4, float f5, float f6, float f7) {
        float f8 = f6 - f4;
        float f9 = f7 - f5;
        float f10 = Float.isNaN(this.mPercentX) ? 0.0f : this.mPercentX;
        float f11 = Float.isNaN(this.mAltPercentY) ? 0.0f : this.mAltPercentY;
        float f12 = Float.isNaN(this.mPercentY) ? 0.0f : this.mPercentY;
        this.f2014c = (int) (f4 + (f10 * f8) + ((Float.isNaN(this.mAltPercentX) ? 0.0f : this.mAltPercentX) * f9));
        this.f2015d = (int) (f5 + (f8 * f11) + (f9 * f12));
    }

    private void f(float f4, float f5, float f6, float f7) {
        float f8 = f6 - f4;
        float f9 = f7 - f5;
        float f10 = this.mPercentX;
        float f11 = this.mPercentY;
        this.f2014c = f4 + (f8 * f10) + ((-f9) * f11);
        this.f2015d = f5 + (f9 * f10) + (f8 * f11);
    }

    private void h(int i2, int i4) {
        float f4 = this.mPercentX;
        float f5 = 0;
        this.f2014c = ((i2 - 0) * f4) + f5;
        this.f2015d = ((i4 - 0) * f4) + f5;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
        this.mTransitionEasing = motionKeyPosition.mTransitionEasing;
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mPercentWidth = motionKeyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = motionKeyPosition.mPercentX;
        this.mPercentY = motionKeyPosition.mPercentY;
        this.mAltPercentX = motionKeyPosition.mAltPercentX;
        this.mAltPercentY = motionKeyPosition.mAltPercentY;
        this.f2014c = motionKeyPosition.f2014c;
        this.f2015d = motionKeyPosition.f2015d;
        return this;
    }

    void g(int i2, int i4, float f4, float f5, float f6, float f7) {
        int i5 = this.mPositionType;
        if (i5 == 1) {
            f(f4, f5, f6, f7);
        } else if (i5 != 2) {
            e(f4, f5, f6, f7);
        } else {
            h(i2, i4);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return f.a(str);
    }

    float i() {
        return this.f2014c;
    }

    public boolean intersects(int i2, int i4, FloatRect floatRect, FloatRect floatRect2, float f4, float f5) {
        g(i2, i4, floatRect.centerX(), floatRect.centerY(), floatRect2.centerX(), floatRect2.centerY());
        return Math.abs(f4 - this.f2014c) < f2012f && Math.abs(f5 - this.f2015d) < f2012f;
    }

    float j() {
        return this.f2015d;
    }

    void k(FloatRect floatRect, FloatRect floatRect2, float f4, float f5, String[] strArr, float[] fArr) {
        float centerX = floatRect.centerX();
        float centerY = floatRect.centerY();
        float centerX2 = floatRect2.centerX() - centerX;
        float centerY2 = floatRect2.centerY() - centerY;
        if (strArr[0] != null) {
            if ("percentX".equals(strArr[0])) {
                fArr[0] = (f4 - centerX) / centerX2;
                fArr[1] = (f5 - centerY) / centerY2;
                return;
            }
            fArr[1] = (f4 - centerX) / centerX2;
            fArr[0] = (f5 - centerY) / centerY2;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = (f4 - centerX) / centerX2;
        strArr[1] = "percentY";
        fArr[1] = (f5 - centerY) / centerY2;
    }

    void l(FloatRect floatRect, FloatRect floatRect2, float f4, float f5, String[] strArr, float[] fArr) {
        float centerX = floatRect.centerX();
        float centerY = floatRect.centerY();
        float centerX2 = floatRect2.centerX() - centerX;
        float centerY2 = floatRect2.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f6 = centerX2 / hypot;
        float f7 = centerY2 / hypot;
        float f8 = f5 - centerY;
        float f9 = f4 - centerX;
        float f10 = ((f6 * f8) - (f9 * f7)) / hypot;
        float f11 = ((f6 * f9) + (f7 * f8)) / hypot;
        if (strArr[0] != null) {
            if ("percentX".equals(strArr[0])) {
                fArr[0] = f11;
                fArr[1] = f10;
                return;
            }
            return;
        }
        strArr[0] = "percentX";
        strArr[1] = "percentY";
        fArr[0] = f11;
        fArr[1] = f10;
    }

    void m(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f4, float f5, String[] strArr, float[] fArr) {
        floatRect.centerX();
        floatRect.centerY();
        floatRect2.centerX();
        floatRect2.centerY();
        MotionWidget parent = motionWidget.getParent();
        int width = parent.getWidth();
        int height = parent.getHeight();
        if (strArr[0] != null) {
            if ("percentX".equals(strArr[0])) {
                fArr[0] = f4 / width;
                fArr[1] = f5 / height;
                return;
            }
            fArr[1] = f4 / width;
            fArr[0] = f5 / height;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = f4 / width;
        strArr[1] = "percentY";
        fArr[1] = f5 / height;
    }

    public void positionAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f4, float f5, String[] strArr, float[] fArr) {
        int i2 = this.mPositionType;
        if (i2 == 1) {
            l(floatRect, floatRect2, f4, f5, strArr, fArr);
        } else if (i2 != 2) {
            k(floatRect, floatRect2, f4, f5, strArr, fArr);
        } else {
            m(motionWidget, floatRect, floatRect2, f4, f5, strArr, fArr);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        if (i2 == 100) {
            this.mFramePosition = i4;
            return true;
        } else if (i2 == 508) {
            this.mCurveFit = i4;
            return true;
        } else if (i2 != 510) {
            return super.setValue(i2, i4);
        } else {
            this.mPositionType = i4;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo2clone() {
        return new MotionKeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        switch (i2) {
            case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                this.mPercentWidth = f4;
                return true;
            case TypedValues.PositionType.TYPE_PERCENT_HEIGHT /* 504 */:
                this.mPercentHeight = f4;
                return true;
            case TypedValues.PositionType.TYPE_SIZE_PERCENT /* 505 */:
                this.mPercentWidth = f4;
                this.mPercentHeight = f4;
                return true;
            case TypedValues.PositionType.TYPE_PERCENT_X /* 506 */:
                this.mPercentX = f4;
                return true;
            case TypedValues.PositionType.TYPE_PERCENT_Y /* 507 */:
                this.mPercentY = f4;
                return true;
            default:
                return super.setValue(i2, f4);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        if (i2 != 501) {
            return super.setValue(i2, str);
        }
        this.mTransitionEasing = str.toString();
        return true;
    }
}
