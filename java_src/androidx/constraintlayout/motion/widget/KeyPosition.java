package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KeyPosition extends KeyPositionBase {
    public static final String DRAWPATH = "drawPath";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;

    /* renamed from: t  reason: collision with root package name */
    private static final String f2811t = "KeyPosition";

    /* renamed from: u  reason: collision with root package name */
    static final String f2812u = "KeyPosition";

    /* renamed from: v  reason: collision with root package name */
    static final int f2813v = 2;

    /* renamed from: h  reason: collision with root package name */
    String f2814h = null;

    /* renamed from: i  reason: collision with root package name */
    int f2815i = Key.UNSET;

    /* renamed from: j  reason: collision with root package name */
    int f2816j = 0;

    /* renamed from: k  reason: collision with root package name */
    float f2817k = Float.NaN;

    /* renamed from: l  reason: collision with root package name */
    float f2818l = Float.NaN;

    /* renamed from: m  reason: collision with root package name */
    float f2819m = Float.NaN;

    /* renamed from: n  reason: collision with root package name */
    float f2820n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    float f2821o = Float.NaN;

    /* renamed from: p  reason: collision with root package name */
    float f2822p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    int f2823q = 0;

    /* renamed from: r  reason: collision with root package name */
    private float f2824r = Float.NaN;

    /* renamed from: s  reason: collision with root package name */
    private float f2825s = Float.NaN;

    /* loaded from: classes.dex */
    private static class Loader {

        /* renamed from: a  reason: collision with root package name */
        private static final int f2826a = 1;

        /* renamed from: b  reason: collision with root package name */
        private static final int f2827b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final int f2828c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final int f2829d = 4;

        /* renamed from: e  reason: collision with root package name */
        private static final int f2830e = 5;

        /* renamed from: f  reason: collision with root package name */
        private static final int f2831f = 6;

        /* renamed from: g  reason: collision with root package name */
        private static final int f2832g = 7;

        /* renamed from: h  reason: collision with root package name */
        private static final int f2833h = 8;

        /* renamed from: i  reason: collision with root package name */
        private static final int f2834i = 9;

        /* renamed from: j  reason: collision with root package name */
        private static final int f2835j = 10;

        /* renamed from: k  reason: collision with root package name */
        private static final int f2836k = 11;

        /* renamed from: l  reason: collision with root package name */
        private static final int f2837l = 12;

        /* renamed from: m  reason: collision with root package name */
        private static SparseIntArray f2838m;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2838m = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            f2838m.append(R.styleable.KeyPosition_framePosition, 2);
            f2838m.append(R.styleable.KeyPosition_transitionEasing, 3);
            f2838m.append(R.styleable.KeyPosition_curveFit, 4);
            f2838m.append(R.styleable.KeyPosition_drawPath, 5);
            f2838m.append(R.styleable.KeyPosition_percentX, 6);
            f2838m.append(R.styleable.KeyPosition_percentY, 7);
            f2838m.append(R.styleable.KeyPosition_keyPositionType, 9);
            f2838m.append(R.styleable.KeyPosition_sizePercent, 8);
            f2838m.append(R.styleable.KeyPosition_percentWidth, 11);
            f2838m.append(R.styleable.KeyPosition_percentHeight, 12);
            f2838m.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(KeyPosition c4, TypedArray a4) {
            int indexCount = a4.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = a4.getIndex(i2);
                switch (f2838m.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a4.getResourceId(index, c4.f2720b);
                            c4.f2720b = resourceId;
                            if (resourceId == -1) {
                                c4.f2721c = a4.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a4.peekValue(index).type == 3) {
                            c4.f2721c = a4.getString(index);
                            break;
                        } else {
                            c4.f2720b = a4.getResourceId(index, c4.f2720b);
                            break;
                        }
                    case 2:
                        c4.f2719a = a4.getInt(index, c4.f2719a);
                        break;
                    case 3:
                        if (a4.peekValue(index).type == 3) {
                            c4.f2814h = a4.getString(index);
                            break;
                        } else {
                            c4.f2814h = Easing.NAMED_EASING[a4.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        c4.f2840f = a4.getInteger(index, c4.f2840f);
                        break;
                    case 5:
                        c4.f2816j = a4.getInt(index, c4.f2816j);
                        break;
                    case 6:
                        c4.f2819m = a4.getFloat(index, c4.f2819m);
                        break;
                    case 7:
                        c4.f2820n = a4.getFloat(index, c4.f2820n);
                        break;
                    case 8:
                        float f4 = a4.getFloat(index, c4.f2818l);
                        c4.f2817k = f4;
                        c4.f2818l = f4;
                        break;
                    case 9:
                        c4.f2823q = a4.getInt(index, c4.f2823q);
                        break;
                    case 10:
                        c4.f2815i = a4.getInt(index, c4.f2815i);
                        break;
                    case 11:
                        c4.f2817k = a4.getFloat(index, c4.f2817k);
                        break;
                    case 12:
                        c4.f2818l = a4.getFloat(index, c4.f2818l);
                        break;
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append("unused attribute 0x");
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(f2838m.get(index));
                        break;
                }
            }
            int i4 = c4.f2719a;
        }
    }

    public KeyPosition() {
        this.f2722d = 2;
    }

    private void h(float start_x, float start_y, float end_x, float end_y) {
        float f4 = end_x - start_x;
        float f5 = end_y - start_y;
        float f6 = Float.isNaN(this.f2819m) ? 0.0f : this.f2819m;
        float f7 = Float.isNaN(this.f2822p) ? 0.0f : this.f2822p;
        float f8 = Float.isNaN(this.f2820n) ? 0.0f : this.f2820n;
        this.f2824r = (int) (start_x + (f6 * f4) + ((Float.isNaN(this.f2821o) ? 0.0f : this.f2821o) * f5));
        this.f2825s = (int) (start_y + (f4 * f7) + (f5 * f8));
    }

    private void i(float start_x, float start_y, float end_x, float end_y) {
        float f4 = end_x - start_x;
        float f5 = end_y - start_y;
        float f6 = this.f2819m;
        float f7 = this.f2820n;
        this.f2824r = start_x + (f4 * f6) + ((-f5) * f7);
        this.f2825s = start_y + (f5 * f6) + (f4 * f7);
    }

    private void j(int layoutWidth, int layoutHeight) {
        float f4 = this.f2819m;
        float f5 = 0;
        this.f2824r = ((layoutWidth - 0) * f4) + f5;
        this.f2825s = ((layoutHeight - 0) * f4) + f5;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyPosition keyPosition = (KeyPosition) src;
        this.f2814h = keyPosition.f2814h;
        this.f2815i = keyPosition.f2815i;
        this.f2816j = keyPosition.f2816j;
        this.f2817k = keyPosition.f2817k;
        this.f2818l = Float.NaN;
        this.f2819m = keyPosition.f2819m;
        this.f2820n = keyPosition.f2820n;
        this.f2821o = keyPosition.f2821o;
        this.f2822p = keyPosition.f2822p;
        this.f2824r = keyPosition.f2824r;
        this.f2825s = keyPosition.f2825s;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    void e(int layoutWidth, int layoutHeight, float start_x, float start_y, float end_x, float end_y) {
        int i2 = this.f2823q;
        if (i2 == 1) {
            i(start_x, start_y, end_x, end_y);
        } else if (i2 != 2) {
            h(start_x, start_y, end_x, end_y);
        } else {
            j(layoutWidth, layoutHeight);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float f() {
        return this.f2824r;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    float g() {
        return this.f2825s;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public boolean intersects(int layoutWidth, int layoutHeight, RectF start, RectF end, float x3, float y3) {
        e(layoutWidth, layoutHeight, start.centerX(), start.centerY(), end.centerX(), end.centerY());
        return Math.abs(x3 - this.f2824r) < 20.0f && Math.abs(y3 - this.f2825s) < 20.0f;
    }

    void k(RectF start, RectF end, float x3, float y3, String[] attribute, float[] value) {
        float centerX = start.centerX();
        float centerY = start.centerY();
        float centerX2 = end.centerX() - centerX;
        float centerY2 = end.centerY() - centerY;
        if (attribute[0] != null) {
            if ("percentX".equals(attribute[0])) {
                value[0] = (x3 - centerX) / centerX2;
                value[1] = (y3 - centerY) / centerY2;
                return;
            }
            value[1] = (x3 - centerX) / centerX2;
            value[0] = (y3 - centerY) / centerY2;
            return;
        }
        attribute[0] = "percentX";
        value[0] = (x3 - centerX) / centerX2;
        attribute[1] = "percentY";
        value[1] = (y3 - centerY) / centerY2;
    }

    void l(RectF start, RectF end, float x3, float y3, String[] attribute, float[] value) {
        float centerX = start.centerX();
        float centerY = start.centerY();
        float centerX2 = end.centerX() - centerX;
        float centerY2 = end.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            value[0] = 0.0f;
            value[1] = 0.0f;
            return;
        }
        float f4 = centerX2 / hypot;
        float f5 = centerY2 / hypot;
        float f6 = y3 - centerY;
        float f7 = x3 - centerX;
        float f8 = ((f4 * f6) - (f7 * f5)) / hypot;
        float f9 = ((f4 * f7) + (f5 * f6)) / hypot;
        if (attribute[0] != null) {
            if ("percentX".equals(attribute[0])) {
                value[0] = f9;
                value[1] = f8;
                return;
            }
            return;
        }
        attribute[0] = "percentX";
        attribute[1] = "percentY";
        value[0] = f9;
        value[1] = f8;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.b(this, context.obtainStyledAttributes(attrs, R.styleable.KeyPosition));
    }

    void m(View view, RectF start, RectF end, float x3, float y3, String[] attribute, float[] value) {
        start.centerX();
        start.centerY();
        end.centerX();
        end.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        if (attribute[0] != null) {
            if ("percentX".equals(attribute[0])) {
                value[0] = x3 / width;
                value[1] = y3 / height;
                return;
            }
            value[1] = x3 / width;
            value[0] = y3 / height;
            return;
        }
        attribute[0] = "percentX";
        value[0] = x3 / width;
        attribute[1] = "percentY";
        value[1] = y3 / height;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public void positionAttributes(View view, RectF start, RectF end, float x3, float y3, String[] attribute, float[] value) {
        int i2 = this.f2823q;
        if (i2 == 1) {
            l(start, end, x3, y3, attribute, value);
        } else if (i2 != 2) {
            k(start, end, x3, y3, attribute, value);
        } else {
            m(view, start, end, x3, y3, attribute, value);
        }
    }

    public void setType(int type) {
        this.f2823q = type;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c4 = 65535;
        switch (tag.hashCode()) {
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1127236479:
                if (tag.equals("percentWidth")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1017587252:
                if (tag.equals("percentHeight")) {
                    c4 = 2;
                    break;
                }
                break;
            case -827014263:
                if (tag.equals("drawPath")) {
                    c4 = 3;
                    break;
                }
                break;
            case -200259324:
                if (tag.equals("sizePercent")) {
                    c4 = 4;
                    break;
                }
                break;
            case 428090547:
                if (tag.equals("percentX")) {
                    c4 = 5;
                    break;
                }
                break;
            case 428090548:
                if (tag.equals("percentY")) {
                    c4 = 6;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                this.f2814h = value.toString();
                return;
            case 1:
                this.f2817k = c(value);
                return;
            case 2:
                this.f2818l = c(value);
                return;
            case 3:
                this.f2816j = d(value);
                return;
            case 4:
                float c5 = c(value);
                this.f2817k = c5;
                this.f2818l = c5;
                return;
            case 5:
                this.f2819m = c(value);
                return;
            case 6:
                this.f2820n = c(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo3clone() {
        return new KeyPosition().copy(this);
    }
}
