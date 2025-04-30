package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.a;
import androidx.constraintlayout.core.motion.utils.e;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Set;
/* loaded from: classes.dex */
public class MotionWidget implements TypedValues {
    public static final int FILL_PARENT = -1;
    public static final int GONE_UNSET = Integer.MIN_VALUE;
    public static final int INVISIBLE = 0;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int MATCH_PARENT = -1;
    public static final int PARENT_ID = 0;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    public static final int UNSET = -1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 4;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f1950f = -1;

    /* renamed from: g  reason: collision with root package name */
    private static final int f1951g = -2;

    /* renamed from: h  reason: collision with root package name */
    private static final int f1952h = -3;

    /* renamed from: i  reason: collision with root package name */
    private static final int f1953i = -4;

    /* renamed from: a  reason: collision with root package name */
    WidgetFrame f1954a;

    /* renamed from: b  reason: collision with root package name */
    Motion f1955b;

    /* renamed from: c  reason: collision with root package name */
    PropertySet f1956c;

    /* renamed from: d  reason: collision with root package name */
    private float f1957d;

    /* renamed from: e  reason: collision with root package name */
    float f1958e;

    /* loaded from: classes.dex */
    public static class Motion {

        /* renamed from: a  reason: collision with root package name */
        private static final int f1959a = -2;

        /* renamed from: b  reason: collision with root package name */
        private static final int f1960b = -1;

        /* renamed from: c  reason: collision with root package name */
        private static final int f1961c = -3;
        public int mAnimateRelativeTo = -1;
        public int mAnimateCircleAngleTo = 0;
        public String mTransitionEasing = null;
        public int mPathMotionArc = -1;
        public int mDrawPath = 0;
        public float mMotionStagger = Float.NaN;
        public int mPolarRelativeTo = -1;
        public float mPathRotate = Float.NaN;
        public float mQuantizeMotionPhase = Float.NaN;
        public int mQuantizeMotionSteps = -1;
        public String mQuantizeInterpolatorString = null;
        public int mQuantizeInterpolatorType = -3;
        public int mQuantizeInterpolatorID = -1;
    }

    /* loaded from: classes.dex */
    public static class PropertySet {
        public int visibility = 4;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;
    }

    public MotionWidget() {
        this.f1954a = new WidgetFrame();
        this.f1955b = new Motion();
        this.f1956c = new PropertySet();
    }

    public MotionWidget findViewById(int i2) {
        return null;
    }

    public float getAlpha() {
        return this.f1956c.alpha;
    }

    public int getBottom() {
        return this.f1954a.bottom;
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.f1954a.getCustomAttribute(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.f1954a.getCustomAttributeNames();
    }

    public int getHeight() {
        WidgetFrame widgetFrame = this.f1954a;
        return widgetFrame.bottom - widgetFrame.top;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        int a4 = a.a(str);
        return a4 != -1 ? a4 : e.a(str);
    }

    public int getLeft() {
        return this.f1954a.left;
    }

    public String getName() {
        return this.f1954a.getId();
    }

    public MotionWidget getParent() {
        return null;
    }

    public float getPivotX() {
        return this.f1954a.pivotX;
    }

    public float getPivotY() {
        return this.f1954a.pivotY;
    }

    public int getRight() {
        return this.f1954a.right;
    }

    public float getRotationX() {
        return this.f1954a.rotationX;
    }

    public float getRotationY() {
        return this.f1954a.rotationY;
    }

    public float getRotationZ() {
        return this.f1954a.rotationZ;
    }

    public float getScaleX() {
        return this.f1954a.scaleX;
    }

    public float getScaleY() {
        return this.f1954a.scaleY;
    }

    public int getTop() {
        return this.f1954a.top;
    }

    public float getTranslationX() {
        return this.f1954a.translationX;
    }

    public float getTranslationY() {
        return this.f1954a.translationY;
    }

    public float getTranslationZ() {
        return this.f1954a.translationZ;
    }

    public float getValueAttributes(int i2) {
        switch (i2) {
            case 303:
                return this.f1954a.alpha;
            case 304:
                return this.f1954a.translationX;
            case 305:
                return this.f1954a.translationY;
            case 306:
                return this.f1954a.translationZ;
            case 307:
            default:
                return Float.NaN;
            case 308:
                return this.f1954a.rotationX;
            case 309:
                return this.f1954a.rotationY;
            case 310:
                return this.f1954a.rotationZ;
            case 311:
                return this.f1954a.scaleX;
            case 312:
                return this.f1954a.scaleY;
            case 313:
                return this.f1954a.pivotX;
            case 314:
                return this.f1954a.pivotY;
            case 315:
                return this.f1957d;
            case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                return this.f1958e;
        }
    }

    public int getVisibility() {
        return this.f1956c.visibility;
    }

    public WidgetFrame getWidgetFrame() {
        return this.f1954a;
    }

    public int getWidth() {
        WidgetFrame widgetFrame = this.f1954a;
        return widgetFrame.right - widgetFrame.left;
    }

    public int getX() {
        return this.f1954a.left;
    }

    public int getY() {
        return this.f1954a.top;
    }

    public void layout(int i2, int i4, int i5, int i6) {
        setBounds(i2, i4, i5, i6);
    }

    public void setBounds(int i2, int i4, int i5, int i6) {
        if (this.f1954a == null) {
            this.f1954a = new WidgetFrame((ConstraintWidget) null);
        }
        WidgetFrame widgetFrame = this.f1954a;
        widgetFrame.top = i4;
        widgetFrame.left = i2;
        widgetFrame.right = i5;
        widgetFrame.bottom = i6;
    }

    public void setCustomAttribute(String str, int i2, float f4) {
        this.f1954a.setCustomAttribute(str, i2, f4);
    }

    public void setInterpolatedValue(CustomAttribute customAttribute, float[] fArr) {
        this.f1954a.setCustomAttribute(customAttribute.f1855b, 901, fArr[0]);
    }

    public void setPivotX(float f4) {
        this.f1954a.pivotX = f4;
    }

    public void setPivotY(float f4) {
        this.f1954a.pivotY = f4;
    }

    public void setRotationX(float f4) {
        this.f1954a.rotationX = f4;
    }

    public void setRotationY(float f4) {
        this.f1954a.rotationY = f4;
    }

    public void setRotationZ(float f4) {
        this.f1954a.rotationZ = f4;
    }

    public void setScaleX(float f4) {
        this.f1954a.scaleX = f4;
    }

    public void setScaleY(float f4) {
        this.f1954a.scaleY = f4;
    }

    public void setTranslationX(float f4) {
        this.f1954a.translationX = f4;
    }

    public void setTranslationY(float f4) {
        this.f1954a.translationY = f4;
    }

    public void setTranslationZ(float f4) {
        this.f1954a.translationZ = f4;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, int i4) {
        return setValueAttributes(i2, i4);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, boolean z3) {
        return false;
    }

    public boolean setValueAttributes(int i2, float f4) {
        switch (i2) {
            case 303:
                this.f1954a.alpha = f4;
                return true;
            case 304:
                this.f1954a.translationX = f4;
                return true;
            case 305:
                this.f1954a.translationY = f4;
                return true;
            case 306:
                this.f1954a.translationZ = f4;
                return true;
            case 307:
            default:
                return false;
            case 308:
                this.f1954a.rotationX = f4;
                return true;
            case 309:
                this.f1954a.rotationY = f4;
                return true;
            case 310:
                this.f1954a.rotationZ = f4;
                return true;
            case 311:
                this.f1954a.scaleX = f4;
                return true;
            case 312:
                this.f1954a.scaleY = f4;
                return true;
            case 313:
                this.f1954a.pivotX = f4;
                return true;
            case 314:
                this.f1954a.pivotY = f4;
                return true;
            case 315:
                this.f1957d = f4;
                return true;
            case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                this.f1958e = f4;
                return true;
        }
    }

    public boolean setValueMotion(int i2, int i4) {
        switch (i2) {
            case TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO /* 605 */:
                this.f1955b.mAnimateRelativeTo = i4;
                return true;
            case TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO /* 606 */:
                this.f1955b.mAnimateCircleAngleTo = i4;
                return true;
            case TypedValues.MotionType.TYPE_PATHMOTION_ARC /* 607 */:
                this.f1955b.mPathMotionArc = i4;
                return true;
            case TypedValues.MotionType.TYPE_DRAW_PATH /* 608 */:
                this.f1955b.mDrawPath = i4;
                return true;
            case TypedValues.MotionType.TYPE_POLAR_RELATIVETO /* 609 */:
                this.f1955b.mPolarRelativeTo = i4;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS /* 610 */:
                this.f1955b.mQuantizeMotionSteps = i4;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE /* 611 */:
                this.f1955b.mQuantizeInterpolatorType = i4;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID /* 612 */:
                this.f1955b.mQuantizeInterpolatorID = i4;
                return true;
            default:
                return false;
        }
    }

    public void setVisibility(int i2) {
        this.f1956c.visibility = i2;
    }

    public String toString() {
        return this.f1954a.left + ", " + this.f1954a.top + ", " + this.f1954a.right + ", " + this.f1954a.bottom;
    }

    public void setCustomAttribute(String str, int i2, int i4) {
        this.f1954a.setCustomAttribute(str, i2, i4);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, float f4) {
        if (setValueAttributes(i2, f4)) {
            return true;
        }
        return setValueMotion(i2, f4);
    }

    public void setCustomAttribute(String str, int i2, boolean z3) {
        this.f1954a.setCustomAttribute(str, i2, z3);
    }

    public void setCustomAttribute(String str, int i2, String str2) {
        this.f1954a.setCustomAttribute(str, i2, str2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i2, String str) {
        return setValueMotion(i2, str);
    }

    public MotionWidget(WidgetFrame widgetFrame) {
        this.f1954a = new WidgetFrame();
        this.f1955b = new Motion();
        this.f1956c = new PropertySet();
        this.f1954a = widgetFrame;
    }

    public boolean setValueMotion(int i2, String str) {
        if (i2 == 603) {
            this.f1955b.mTransitionEasing = str;
            return true;
        } else if (i2 != 604) {
            return false;
        } else {
            this.f1955b.mQuantizeInterpolatorString = str;
            return true;
        }
    }

    public boolean setValueMotion(int i2, float f4) {
        switch (i2) {
            case 600:
                this.f1955b.mMotionStagger = f4;
                return true;
            case 601:
                this.f1955b.mPathRotate = f4;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE /* 602 */:
                this.f1955b.mQuantizeMotionPhase = f4;
                return true;
            default:
                return false;
        }
    }
}
