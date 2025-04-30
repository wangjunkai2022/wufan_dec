package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import m.a;
import net.lingala.zip4j.util.e;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class ConstraintSet {
    private static final int A = 12;
    private static final int A0 = 64;
    private static final int B = 13;
    private static final int B0 = 65;
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    private static final int C = 14;
    private static final int C0 = 66;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int CIRCLE_REFERENCE = 8;
    private static final int D = 15;
    private static final int D0 = 67;
    private static final int E = 16;
    private static final int E0 = 68;
    public static final int END = 7;
    private static final int F = 17;
    private static final int F0 = 69;
    private static final int G = 18;
    private static final int G0 = 70;
    public static final int GONE = 8;
    private static final int H = 19;
    private static final int H0 = 71;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_GUIDELINE = 0;
    private static final int I = 20;
    private static final int I0 = 72;
    public static final int INVISIBLE = 4;
    private static final int J = 21;
    private static final int J0 = 73;
    private static final int K = 22;
    private static final int K0 = 74;
    private static final int L = 23;
    private static final int L0 = 75;
    public static final int LEFT = 1;
    private static final int M = 24;
    private static final int M0 = 76;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    private static final int N = 25;
    private static final int N0 = 77;
    private static final int O = 26;
    private static final int O0 = 78;
    private static final int P = 27;
    private static final int P0 = 79;
    public static final int PARENT_ID = 0;
    private static final int Q = 28;
    private static final int Q0 = 80;
    private static final int R = 29;
    private static final int R0 = 81;
    public static final int RIGHT = 2;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    private static final int S = 30;
    private static final int S0 = 82;
    public static final int START = 6;
    private static final int T = 31;
    private static final int T0 = 83;
    public static final int TOP = 3;
    private static final int U = 32;
    private static final int U0 = 84;
    public static final int UNSET = -1;
    private static final int V = 33;
    private static final int V0 = 85;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_GUIDELINE = 1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 0;
    private static final int W = 34;
    private static final int W0 = 86;
    public static final int WRAP_CONTENT = -2;
    private static final int X = 35;
    private static final int X0 = 87;
    private static final int Y = 36;
    private static final int Y0 = 88;
    private static final int Z = 37;
    private static final int Z0 = 89;

    /* renamed from: a0  reason: collision with root package name */
    private static final int f3451a0 = 38;

    /* renamed from: a1  reason: collision with root package name */
    private static final int f3452a1 = 90;

    /* renamed from: b0  reason: collision with root package name */
    private static final int f3453b0 = 39;

    /* renamed from: b1  reason: collision with root package name */
    private static final int f3454b1 = 91;

    /* renamed from: c0  reason: collision with root package name */
    private static final int f3455c0 = 40;

    /* renamed from: c1  reason: collision with root package name */
    private static final int f3456c1 = 92;

    /* renamed from: d0  reason: collision with root package name */
    private static final int f3457d0 = 41;

    /* renamed from: d1  reason: collision with root package name */
    private static final int f3458d1 = 93;

    /* renamed from: e  reason: collision with root package name */
    private static final String f3459e = "ConstraintSet";

    /* renamed from: e0  reason: collision with root package name */
    private static final int f3460e0 = 42;

    /* renamed from: e1  reason: collision with root package name */
    private static final int f3461e1 = 94;

    /* renamed from: f  reason: collision with root package name */
    private static final String f3462f = "XML parser error must be within a Constraint ";

    /* renamed from: f0  reason: collision with root package name */
    private static final int f3463f0 = 43;

    /* renamed from: f1  reason: collision with root package name */
    private static final int f3464f1 = 95;

    /* renamed from: g  reason: collision with root package name */
    private static final int f3465g = -1;

    /* renamed from: g0  reason: collision with root package name */
    private static final int f3466g0 = 44;

    /* renamed from: g1  reason: collision with root package name */
    private static final int f3467g1 = 96;

    /* renamed from: h  reason: collision with root package name */
    private static final int f3468h = -2;

    /* renamed from: h0  reason: collision with root package name */
    private static final int f3469h0 = 45;

    /* renamed from: h1  reason: collision with root package name */
    private static final int f3470h1 = 97;

    /* renamed from: i  reason: collision with root package name */
    private static final int f3471i = -3;

    /* renamed from: i0  reason: collision with root package name */
    private static final int f3472i0 = 46;

    /* renamed from: i1  reason: collision with root package name */
    private static final int f3473i1 = 98;

    /* renamed from: j  reason: collision with root package name */
    private static final int f3474j = -4;

    /* renamed from: j0  reason: collision with root package name */
    private static final int f3475j0 = 47;

    /* renamed from: j1  reason: collision with root package name */
    private static final int f3476j1 = 99;

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f3477k = false;

    /* renamed from: k0  reason: collision with root package name */
    private static final int f3478k0 = 48;

    /* renamed from: k1  reason: collision with root package name */
    private static final String f3479k1 = "weight";

    /* renamed from: l0  reason: collision with root package name */
    private static final int f3481l0 = 49;

    /* renamed from: l1  reason: collision with root package name */
    private static final String f3482l1 = "ratio";

    /* renamed from: m  reason: collision with root package name */
    private static final int f3483m = 1;

    /* renamed from: m0  reason: collision with root package name */
    private static final int f3484m0 = 50;

    /* renamed from: m1  reason: collision with root package name */
    private static final String f3485m1 = "parent";

    /* renamed from: n0  reason: collision with root package name */
    private static final int f3487n0 = 51;

    /* renamed from: o0  reason: collision with root package name */
    private static final int f3489o0 = 52;

    /* renamed from: p  reason: collision with root package name */
    private static final int f3490p = 1;

    /* renamed from: p0  reason: collision with root package name */
    private static final int f3491p0 = 53;

    /* renamed from: q  reason: collision with root package name */
    private static final int f3492q = 2;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f3493q0 = 54;

    /* renamed from: r  reason: collision with root package name */
    private static final int f3494r = 3;

    /* renamed from: r0  reason: collision with root package name */
    private static final int f3495r0 = 55;

    /* renamed from: s  reason: collision with root package name */
    private static final int f3496s = 4;

    /* renamed from: s0  reason: collision with root package name */
    private static final int f3497s0 = 56;

    /* renamed from: t  reason: collision with root package name */
    private static final int f3498t = 5;

    /* renamed from: t0  reason: collision with root package name */
    private static final int f3499t0 = 57;

    /* renamed from: u  reason: collision with root package name */
    private static final int f3500u = 6;

    /* renamed from: u0  reason: collision with root package name */
    private static final int f3501u0 = 58;

    /* renamed from: v  reason: collision with root package name */
    private static final int f3502v = 7;

    /* renamed from: v0  reason: collision with root package name */
    private static final int f3503v0 = 59;

    /* renamed from: w  reason: collision with root package name */
    private static final int f3504w = 8;

    /* renamed from: w0  reason: collision with root package name */
    private static final int f3505w0 = 60;

    /* renamed from: x  reason: collision with root package name */
    private static final int f3506x = 9;

    /* renamed from: x0  reason: collision with root package name */
    private static final int f3507x0 = 61;

    /* renamed from: y  reason: collision with root package name */
    private static final int f3508y = 10;

    /* renamed from: y0  reason: collision with root package name */
    private static final int f3509y0 = 62;

    /* renamed from: z  reason: collision with root package name */
    private static final int f3510z = 11;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f3511z0 = 63;

    /* renamed from: a  reason: collision with root package name */
    private boolean f3512a;
    public String mIdString;

    /* renamed from: l  reason: collision with root package name */
    private static final int[] f3480l = {0, 4, 8};

    /* renamed from: n  reason: collision with root package name */
    private static SparseIntArray f3486n = new SparseIntArray();

    /* renamed from: o  reason: collision with root package name */
    private static SparseIntArray f3488o = new SparseIntArray();
    public String derivedState = "";
    public int mRotate = 0;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, ConstraintAttribute> f3513b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private boolean f3514c = true;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<Integer, Constraint> f3515d = new HashMap<>();

    /* loaded from: classes.dex */
    public static class Constraint {

        /* renamed from: a  reason: collision with root package name */
        int f3516a;

        /* renamed from: b  reason: collision with root package name */
        String f3517b;

        /* renamed from: c  reason: collision with root package name */
        Delta f3518c;
        public final PropertySet propertySet = new PropertySet();
        public final Motion motion = new Motion();
        public final Layout layout = new Layout();
        public final Transform transform = new Transform();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static class Delta {

            /* renamed from: m  reason: collision with root package name */
            private static final int f3519m = 4;

            /* renamed from: n  reason: collision with root package name */
            private static final int f3520n = 10;

            /* renamed from: o  reason: collision with root package name */
            private static final int f3521o = 10;

            /* renamed from: p  reason: collision with root package name */
            private static final int f3522p = 5;

            /* renamed from: a  reason: collision with root package name */
            int[] f3523a = new int[10];

            /* renamed from: b  reason: collision with root package name */
            int[] f3524b = new int[10];

            /* renamed from: c  reason: collision with root package name */
            int f3525c = 0;

            /* renamed from: d  reason: collision with root package name */
            int[] f3526d = new int[10];

            /* renamed from: e  reason: collision with root package name */
            float[] f3527e = new float[10];

            /* renamed from: f  reason: collision with root package name */
            int f3528f = 0;

            /* renamed from: g  reason: collision with root package name */
            int[] f3529g = new int[5];

            /* renamed from: h  reason: collision with root package name */
            String[] f3530h = new String[5];

            /* renamed from: i  reason: collision with root package name */
            int f3531i = 0;

            /* renamed from: j  reason: collision with root package name */
            int[] f3532j = new int[4];

            /* renamed from: k  reason: collision with root package name */
            boolean[] f3533k = new boolean[4];

            /* renamed from: l  reason: collision with root package name */
            int f3534l = 0;

            Delta() {
            }

            void a(int type, float value) {
                int i2 = this.f3528f;
                int[] iArr = this.f3526d;
                if (i2 >= iArr.length) {
                    this.f3526d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f3527e;
                    this.f3527e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f3526d;
                int i4 = this.f3528f;
                iArr2[i4] = type;
                float[] fArr2 = this.f3527e;
                this.f3528f = i4 + 1;
                fArr2[i4] = value;
            }

            void b(int type, int value) {
                int i2 = this.f3525c;
                int[] iArr = this.f3523a;
                if (i2 >= iArr.length) {
                    this.f3523a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f3524b;
                    this.f3524b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f3523a;
                int i4 = this.f3525c;
                iArr3[i4] = type;
                int[] iArr4 = this.f3524b;
                this.f3525c = i4 + 1;
                iArr4[i4] = value;
            }

            void c(int type, String value) {
                int i2 = this.f3531i;
                int[] iArr = this.f3529g;
                if (i2 >= iArr.length) {
                    this.f3529g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f3530h;
                    this.f3530h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f3529g;
                int i4 = this.f3531i;
                iArr2[i4] = type;
                String[] strArr2 = this.f3530h;
                this.f3531i = i4 + 1;
                strArr2[i4] = value;
            }

            void d(int type, boolean value) {
                int i2 = this.f3534l;
                int[] iArr = this.f3532j;
                if (i2 >= iArr.length) {
                    this.f3532j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f3533k;
                    this.f3533k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f3532j;
                int i4 = this.f3534l;
                iArr2[i4] = type;
                boolean[] zArr2 = this.f3533k;
                this.f3534l = i4 + 1;
                zArr2[i4] = value;
            }

            void e(Constraint c4) {
                for (int i2 = 0; i2 < this.f3525c; i2++) {
                    ConstraintSet.w(c4, this.f3523a[i2], this.f3524b[i2]);
                }
                for (int i4 = 0; i4 < this.f3528f; i4++) {
                    ConstraintSet.v(c4, this.f3526d[i4], this.f3527e[i4]);
                }
                for (int i5 = 0; i5 < this.f3531i; i5++) {
                    ConstraintSet.x(c4, this.f3529g[i5], this.f3530h[i5]);
                }
                for (int i6 = 0; i6 < this.f3534l; i6++) {
                    ConstraintSet.y(c4, this.f3532j[i6], this.f3533k[i6]);
                }
            }

            @SuppressLint({"LogConditional"})
            void f(String tag) {
                for (int i2 = 0; i2 < this.f3525c; i2++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.f3523a[i2]);
                    sb.append(" = ");
                    sb.append(this.f3524b[i2]);
                }
                for (int i4 = 0; i4 < this.f3528f; i4++) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f3526d[i4]);
                    sb2.append(" = ");
                    sb2.append(this.f3527e[i4]);
                }
                for (int i5 = 0; i5 < this.f3531i; i5++) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(this.f3529g[i5]);
                    sb3.append(" = ");
                    sb3.append(this.f3530h[i5]);
                }
                for (int i6 = 0; i6 < this.f3534l; i6++) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(this.f3532j[i6]);
                    sb4.append(" = ");
                    sb4.append(this.f3533k[i6]);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(int viewId, ConstraintLayout.LayoutParams param) {
            this.f3516a = viewId;
            Layout layout = this.layout;
            layout.leftToLeft = param.leftToLeft;
            layout.leftToRight = param.leftToRight;
            layout.rightToLeft = param.rightToLeft;
            layout.rightToRight = param.rightToRight;
            layout.topToTop = param.topToTop;
            layout.topToBottom = param.topToBottom;
            layout.bottomToTop = param.bottomToTop;
            layout.bottomToBottom = param.bottomToBottom;
            layout.baselineToBaseline = param.baselineToBaseline;
            layout.baselineToTop = param.baselineToTop;
            layout.baselineToBottom = param.baselineToBottom;
            layout.startToEnd = param.startToEnd;
            layout.startToStart = param.startToStart;
            layout.endToStart = param.endToStart;
            layout.endToEnd = param.endToEnd;
            layout.horizontalBias = param.horizontalBias;
            layout.verticalBias = param.verticalBias;
            layout.dimensionRatio = param.dimensionRatio;
            layout.circleConstraint = param.circleConstraint;
            layout.circleRadius = param.circleRadius;
            layout.circleAngle = param.circleAngle;
            layout.editorAbsoluteX = param.editorAbsoluteX;
            layout.editorAbsoluteY = param.editorAbsoluteY;
            layout.orientation = param.orientation;
            layout.guidePercent = param.guidePercent;
            layout.guideBegin = param.guideBegin;
            layout.guideEnd = param.guideEnd;
            layout.mWidth = ((ViewGroup.MarginLayoutParams) param).width;
            layout.mHeight = ((ViewGroup.MarginLayoutParams) param).height;
            layout.leftMargin = ((ViewGroup.MarginLayoutParams) param).leftMargin;
            layout.rightMargin = ((ViewGroup.MarginLayoutParams) param).rightMargin;
            layout.topMargin = ((ViewGroup.MarginLayoutParams) param).topMargin;
            layout.bottomMargin = ((ViewGroup.MarginLayoutParams) param).bottomMargin;
            layout.baselineMargin = param.baselineMargin;
            layout.verticalWeight = param.verticalWeight;
            layout.horizontalWeight = param.horizontalWeight;
            layout.verticalChainStyle = param.verticalChainStyle;
            layout.horizontalChainStyle = param.horizontalChainStyle;
            layout.constrainedWidth = param.constrainedWidth;
            layout.constrainedHeight = param.constrainedHeight;
            layout.widthDefault = param.matchConstraintDefaultWidth;
            layout.heightDefault = param.matchConstraintDefaultHeight;
            layout.widthMax = param.matchConstraintMaxWidth;
            layout.heightMax = param.matchConstraintMaxHeight;
            layout.widthMin = param.matchConstraintMinWidth;
            layout.heightMin = param.matchConstraintMinHeight;
            layout.widthPercent = param.matchConstraintPercentWidth;
            layout.heightPercent = param.matchConstraintPercentHeight;
            layout.mConstraintTag = param.constraintTag;
            layout.goneTopMargin = param.goneTopMargin;
            layout.goneBottomMargin = param.goneBottomMargin;
            layout.goneLeftMargin = param.goneLeftMargin;
            layout.goneRightMargin = param.goneRightMargin;
            layout.goneStartMargin = param.goneStartMargin;
            layout.goneEndMargin = param.goneEndMargin;
            layout.goneBaselineMargin = param.goneBaselineMargin;
            layout.mWrapBehavior = param.wrapBehaviorInParent;
            if (Build.VERSION.SDK_INT >= 17) {
                layout.endMargin = param.getMarginEnd();
                this.layout.startMargin = param.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i(int viewId, Constraints.LayoutParams param) {
            h(viewId, param);
            this.propertySet.alpha = param.alpha;
            Transform transform = this.transform;
            transform.rotation = param.rotation;
            transform.rotationX = param.rotationX;
            transform.rotationY = param.rotationY;
            transform.scaleX = param.scaleX;
            transform.scaleY = param.scaleY;
            transform.transformPivotX = param.transformPivotX;
            transform.transformPivotY = param.transformPivotY;
            transform.translationX = param.translationX;
            transform.translationY = param.translationY;
            transform.translationZ = param.translationZ;
            transform.elevation = param.elevation;
            transform.applyElevation = param.applyElevation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(ConstraintHelper helper, int viewId, Constraints.LayoutParams param) {
            i(viewId, param);
            if (helper instanceof Barrier) {
                Layout layout = this.layout;
                layout.mHelperType = 1;
                Barrier barrier = (Barrier) helper;
                layout.mBarrierDirection = barrier.getType();
                this.layout.mReferenceIds = barrier.getReferencedIds();
                this.layout.mBarrierMargin = barrier.getMargin();
            }
        }

        private ConstraintAttribute k(String attributeName, ConstraintAttribute.AttributeType attributeType) {
            if (this.mCustomConstraints.containsKey(attributeName)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(attributeName);
                if (constraintAttribute.getType() == attributeType) {
                    return constraintAttribute;
                }
                throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
            }
            ConstraintAttribute constraintAttribute2 = new ConstraintAttribute(attributeName, attributeType);
            this.mCustomConstraints.put(attributeName, constraintAttribute2);
            return constraintAttribute2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(String attributeName, int value) {
            k(attributeName, ConstraintAttribute.AttributeType.COLOR_TYPE).setColorValue(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(String attributeName, float value) {
            k(attributeName, ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String attributeName, int value) {
            k(attributeName, ConstraintAttribute.AttributeType.INT_TYPE).setIntValue(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(String attributeName, String value) {
            k(attributeName, ConstraintAttribute.AttributeType.STRING_TYPE).setStringValue(value);
        }

        public void applyDelta(Constraint c4) {
            Delta delta = this.f3518c;
            if (delta != null) {
                delta.e(c4);
            }
        }

        public void applyTo(ConstraintLayout.LayoutParams param) {
            Layout layout = this.layout;
            param.leftToLeft = layout.leftToLeft;
            param.leftToRight = layout.leftToRight;
            param.rightToLeft = layout.rightToLeft;
            param.rightToRight = layout.rightToRight;
            param.topToTop = layout.topToTop;
            param.topToBottom = layout.topToBottom;
            param.bottomToTop = layout.bottomToTop;
            param.bottomToBottom = layout.bottomToBottom;
            param.baselineToBaseline = layout.baselineToBaseline;
            param.baselineToTop = layout.baselineToTop;
            param.baselineToBottom = layout.baselineToBottom;
            param.startToEnd = layout.startToEnd;
            param.startToStart = layout.startToStart;
            param.endToStart = layout.endToStart;
            param.endToEnd = layout.endToEnd;
            ((ViewGroup.MarginLayoutParams) param).leftMargin = layout.leftMargin;
            ((ViewGroup.MarginLayoutParams) param).rightMargin = layout.rightMargin;
            ((ViewGroup.MarginLayoutParams) param).topMargin = layout.topMargin;
            ((ViewGroup.MarginLayoutParams) param).bottomMargin = layout.bottomMargin;
            param.goneStartMargin = layout.goneStartMargin;
            param.goneEndMargin = layout.goneEndMargin;
            param.goneTopMargin = layout.goneTopMargin;
            param.goneBottomMargin = layout.goneBottomMargin;
            param.horizontalBias = layout.horizontalBias;
            param.verticalBias = layout.verticalBias;
            param.circleConstraint = layout.circleConstraint;
            param.circleRadius = layout.circleRadius;
            param.circleAngle = layout.circleAngle;
            param.dimensionRatio = layout.dimensionRatio;
            param.editorAbsoluteX = layout.editorAbsoluteX;
            param.editorAbsoluteY = layout.editorAbsoluteY;
            param.verticalWeight = layout.verticalWeight;
            param.horizontalWeight = layout.horizontalWeight;
            param.verticalChainStyle = layout.verticalChainStyle;
            param.horizontalChainStyle = layout.horizontalChainStyle;
            param.constrainedWidth = layout.constrainedWidth;
            param.constrainedHeight = layout.constrainedHeight;
            param.matchConstraintDefaultWidth = layout.widthDefault;
            param.matchConstraintDefaultHeight = layout.heightDefault;
            param.matchConstraintMaxWidth = layout.widthMax;
            param.matchConstraintMaxHeight = layout.heightMax;
            param.matchConstraintMinWidth = layout.widthMin;
            param.matchConstraintMinHeight = layout.heightMin;
            param.matchConstraintPercentWidth = layout.widthPercent;
            param.matchConstraintPercentHeight = layout.heightPercent;
            param.orientation = layout.orientation;
            param.guidePercent = layout.guidePercent;
            param.guideBegin = layout.guideBegin;
            param.guideEnd = layout.guideEnd;
            ((ViewGroup.MarginLayoutParams) param).width = layout.mWidth;
            ((ViewGroup.MarginLayoutParams) param).height = layout.mHeight;
            String str = layout.mConstraintTag;
            if (str != null) {
                param.constraintTag = str;
            }
            param.wrapBehaviorInParent = layout.mWrapBehavior;
            if (Build.VERSION.SDK_INT >= 17) {
                param.setMarginStart(layout.startMargin);
                param.setMarginEnd(this.layout.endMargin);
            }
            param.validate();
        }

        public void printDelta(String tag) {
            Delta delta = this.f3518c;
            if (delta != null) {
                delta.f(tag);
            }
        }

        /* renamed from: clone */
        public Constraint m4clone() {
            Constraint constraint = new Constraint();
            constraint.layout.copyFrom(this.layout);
            constraint.motion.copyFrom(this.motion);
            constraint.propertySet.copyFrom(this.propertySet);
            constraint.transform.copyFrom(this.transform);
            constraint.f3516a = this.f3516a;
            constraint.f3518c = this.f3518c;
            return constraint;
        }
    }

    /* loaded from: classes.dex */
    public static class Layout {
        private static final int A = 26;
        private static final int B = 27;
        private static final int C = 28;
        private static final int D = 29;
        private static final int E = 30;
        private static final int F = 31;
        private static final int G = 32;
        private static final int H = 33;
        private static final int I = 34;
        private static final int J = 35;
        private static final int K = 36;
        private static final int L = 37;
        private static final int M = 38;
        private static final int N = 39;
        private static final int O = 40;
        private static final int P = 41;
        private static final int Q = 42;
        private static final int R = 61;
        private static final int S = 62;
        private static final int T = 63;
        private static final int U = 69;
        public static final int UNSET = -1;
        public static final int UNSET_GONE_MARGIN = Integer.MIN_VALUE;
        private static final int V = 70;
        private static final int W = 71;
        private static final int X = 72;
        private static final int Y = 73;
        private static final int Z = 74;

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f3535a = null;

        /* renamed from: a0  reason: collision with root package name */
        private static final int f3536a0 = 75;

        /* renamed from: b  reason: collision with root package name */
        private static final int f3537b = 1;

        /* renamed from: b0  reason: collision with root package name */
        private static final int f3538b0 = 76;

        /* renamed from: c  reason: collision with root package name */
        private static final int f3539c = 2;

        /* renamed from: c0  reason: collision with root package name */
        private static final int f3540c0 = 77;

        /* renamed from: d  reason: collision with root package name */
        private static final int f3541d = 3;

        /* renamed from: d0  reason: collision with root package name */
        private static final int f3542d0 = 78;

        /* renamed from: e  reason: collision with root package name */
        private static final int f3543e = 4;

        /* renamed from: e0  reason: collision with root package name */
        private static final int f3544e0 = 79;

        /* renamed from: f  reason: collision with root package name */
        private static final int f3545f = 5;

        /* renamed from: f0  reason: collision with root package name */
        private static final int f3546f0 = 80;

        /* renamed from: g  reason: collision with root package name */
        private static final int f3547g = 6;

        /* renamed from: g0  reason: collision with root package name */
        private static final int f3548g0 = 81;

        /* renamed from: h  reason: collision with root package name */
        private static final int f3549h = 7;

        /* renamed from: h0  reason: collision with root package name */
        private static final int f3550h0 = 82;

        /* renamed from: i  reason: collision with root package name */
        private static final int f3551i = 8;

        /* renamed from: i0  reason: collision with root package name */
        private static final int f3552i0 = 83;

        /* renamed from: j  reason: collision with root package name */
        private static final int f3553j = 9;

        /* renamed from: j0  reason: collision with root package name */
        private static final int f3554j0 = 84;

        /* renamed from: k  reason: collision with root package name */
        private static final int f3555k = 10;

        /* renamed from: k0  reason: collision with root package name */
        private static final int f3556k0 = 85;

        /* renamed from: l  reason: collision with root package name */
        private static final int f3557l = 11;

        /* renamed from: l0  reason: collision with root package name */
        private static final int f3558l0 = 86;

        /* renamed from: m  reason: collision with root package name */
        private static final int f3559m = 12;

        /* renamed from: m0  reason: collision with root package name */
        private static final int f3560m0 = 87;

        /* renamed from: n  reason: collision with root package name */
        private static final int f3561n = 13;

        /* renamed from: n0  reason: collision with root package name */
        private static final int f3562n0 = 88;

        /* renamed from: o  reason: collision with root package name */
        private static final int f3563o = 14;

        /* renamed from: o0  reason: collision with root package name */
        private static final int f3564o0 = 89;

        /* renamed from: p  reason: collision with root package name */
        private static final int f3565p = 15;

        /* renamed from: p0  reason: collision with root package name */
        private static final int f3566p0 = 90;

        /* renamed from: q  reason: collision with root package name */
        private static final int f3567q = 16;

        /* renamed from: q0  reason: collision with root package name */
        private static final int f3568q0 = 91;

        /* renamed from: r  reason: collision with root package name */
        private static final int f3569r = 17;

        /* renamed from: s  reason: collision with root package name */
        private static final int f3570s = 18;

        /* renamed from: t  reason: collision with root package name */
        private static final int f3571t = 19;

        /* renamed from: u  reason: collision with root package name */
        private static final int f3572u = 20;

        /* renamed from: v  reason: collision with root package name */
        private static final int f3573v = 21;

        /* renamed from: w  reason: collision with root package name */
        private static final int f3574w = 22;

        /* renamed from: x  reason: collision with root package name */
        private static final int f3575x = 23;

        /* renamed from: y  reason: collision with root package name */
        private static final int f3576y = 24;

        /* renamed from: z  reason: collision with root package name */
        private static final int f3577z = 25;
        public String mConstraintTag;
        public int mHeight;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        public int mWidth;
        public boolean mIsGuideline = false;
        public boolean mApply = false;
        public boolean mOverride = false;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public boolean guidelineUseRtl = true;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int topToTop = -1;
        public int topToBottom = -1;
        public int bottomToTop = -1;
        public int bottomToBottom = -1;
        public int baselineToBaseline = -1;
        public int baselineToTop = -1;
        public int baselineToBottom = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int endToStart = -1;
        public int endToEnd = -1;
        public float horizontalBias = 0.5f;
        public float verticalBias = 0.5f;
        public String dimensionRatio = null;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public float circleAngle = 0.0f;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int orientation = -1;
        public int leftMargin = 0;
        public int rightMargin = 0;
        public int topMargin = 0;
        public int bottomMargin = 0;
        public int endMargin = 0;
        public int startMargin = 0;
        public int baselineMargin = 0;
        public int goneLeftMargin = Integer.MIN_VALUE;
        public int goneTopMargin = Integer.MIN_VALUE;
        public int goneRightMargin = Integer.MIN_VALUE;
        public int goneBottomMargin = Integer.MIN_VALUE;
        public int goneEndMargin = Integer.MIN_VALUE;
        public int goneStartMargin = Integer.MIN_VALUE;
        public int goneBaselineMargin = Integer.MIN_VALUE;
        public float verticalWeight = -1.0f;
        public float horizontalWeight = -1.0f;
        public int horizontalChainStyle = 0;
        public int verticalChainStyle = 0;
        public int widthDefault = 0;
        public int heightDefault = 0;
        public int widthMax = 0;
        public int heightMax = 0;
        public int widthMin = 0;
        public int heightMin = 0;
        public float widthPercent = 1.0f;
        public float heightPercent = 1.0f;
        public int mBarrierDirection = -1;
        public int mBarrierMargin = 0;
        public int mHelperType = -1;
        public boolean constrainedWidth = false;
        public boolean constrainedHeight = false;
        public boolean mBarrierAllowsGoneWidgets = true;
        public int mWrapBehavior = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3535a = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f3535a.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f3535a.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f3535a.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            f3535a.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            f3535a.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f3535a.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f3535a.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f3535a.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f3535a.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            f3535a.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            f3535a.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            f3535a.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            f3535a.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            f3535a.append(R.styleable.Layout_guidelineUseRtl, 90);
            f3535a.append(R.styleable.Layout_android_orientation, 26);
            f3535a.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            f3535a.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            f3535a.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f3535a.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f3535a.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            f3535a.append(R.styleable.Layout_layout_goneMarginTop, 16);
            f3535a.append(R.styleable.Layout_layout_goneMarginRight, 14);
            f3535a.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            f3535a.append(R.styleable.Layout_layout_goneMarginStart, 15);
            f3535a.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            f3535a.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            f3535a.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            f3535a.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f3535a.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f3535a.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            f3535a.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            f3535a.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            f3535a.append(R.styleable.Layout_layout_constraintLeft_creator, 91);
            f3535a.append(R.styleable.Layout_layout_constraintTop_creator, 91);
            f3535a.append(R.styleable.Layout_layout_constraintRight_creator, 91);
            f3535a.append(R.styleable.Layout_layout_constraintBottom_creator, 91);
            f3535a.append(R.styleable.Layout_layout_constraintBaseline_creator, 91);
            f3535a.append(R.styleable.Layout_android_layout_marginLeft, 23);
            f3535a.append(R.styleable.Layout_android_layout_marginRight, 27);
            f3535a.append(R.styleable.Layout_android_layout_marginStart, 30);
            f3535a.append(R.styleable.Layout_android_layout_marginEnd, 8);
            f3535a.append(R.styleable.Layout_android_layout_marginTop, 33);
            f3535a.append(R.styleable.Layout_android_layout_marginBottom, 2);
            f3535a.append(R.styleable.Layout_android_layout_width, 22);
            f3535a.append(R.styleable.Layout_android_layout_height, 21);
            f3535a.append(R.styleable.Layout_layout_constraintWidth, 41);
            f3535a.append(R.styleable.Layout_layout_constraintHeight, 42);
            f3535a.append(R.styleable.Layout_layout_constrainedWidth, 41);
            f3535a.append(R.styleable.Layout_layout_constrainedHeight, 42);
            f3535a.append(R.styleable.Layout_layout_wrapBehaviorInParent, 76);
            f3535a.append(R.styleable.Layout_layout_constraintCircle, 61);
            f3535a.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            f3535a.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            f3535a.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            f3535a.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            f3535a.append(R.styleable.Layout_chainUseRtl, 71);
            f3535a.append(R.styleable.Layout_barrierDirection, 72);
            f3535a.append(R.styleable.Layout_barrierMargin, 73);
            f3535a.append(R.styleable.Layout_constraint_referenced_ids, 74);
            f3535a.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        void a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Layout);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i4 = f3535a.get(index);
                switch (i4) {
                    case 1:
                        this.baselineToBaseline = ConstraintSet.p(obtainStyledAttributes, index, this.baselineToBaseline);
                        break;
                    case 2:
                        this.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                        break;
                    case 3:
                        this.bottomToBottom = ConstraintSet.p(obtainStyledAttributes, index, this.bottomToBottom);
                        break;
                    case 4:
                        this.bottomToTop = ConstraintSet.p(obtainStyledAttributes, index, this.bottomToTop);
                        break;
                    case 5:
                        this.dimensionRatio = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                        break;
                    case 7:
                        this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                        break;
                    case 8:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.endMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.endToEnd = ConstraintSet.p(obtainStyledAttributes, index, this.endToEnd);
                        break;
                    case 10:
                        this.endToStart = ConstraintSet.p(obtainStyledAttributes, index, this.endToStart);
                        break;
                    case 11:
                        this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 12:
                        this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 13:
                        this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 14:
                        this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 15:
                        this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 16:
                        this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 17:
                        this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 18:
                        this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 19:
                        this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 20:
                        this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 21:
                        this.mHeight = obtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                        break;
                    case 22:
                        this.mWidth = obtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                        break;
                    case 23:
                        this.leftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                        break;
                    case 24:
                        this.leftToLeft = ConstraintSet.p(obtainStyledAttributes, index, this.leftToLeft);
                        break;
                    case 25:
                        this.leftToRight = ConstraintSet.p(obtainStyledAttributes, index, this.leftToRight);
                        break;
                    case 26:
                        this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 27:
                        this.rightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                        break;
                    case 28:
                        this.rightToLeft = ConstraintSet.p(obtainStyledAttributes, index, this.rightToLeft);
                        break;
                    case 29:
                        this.rightToRight = ConstraintSet.p(obtainStyledAttributes, index, this.rightToRight);
                        break;
                    case 30:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.startMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                            break;
                        } else {
                            break;
                        }
                    case 31:
                        this.startToEnd = ConstraintSet.p(obtainStyledAttributes, index, this.startToEnd);
                        break;
                    case 32:
                        this.startToStart = ConstraintSet.p(obtainStyledAttributes, index, this.startToStart);
                        break;
                    case 33:
                        this.topMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                        break;
                    case 34:
                        this.topToBottom = ConstraintSet.p(obtainStyledAttributes, index, this.topToBottom);
                        break;
                    case 35:
                        this.topToTop = ConstraintSet.p(obtainStyledAttributes, index, this.topToTop);
                        break;
                    case 36:
                        this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 37:
                        this.horizontalWeight = obtainStyledAttributes.getFloat(index, this.horizontalWeight);
                        break;
                    case 38:
                        this.verticalWeight = obtainStyledAttributes.getFloat(index, this.verticalWeight);
                        break;
                    case 39:
                        this.horizontalChainStyle = obtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                        break;
                    case 40:
                        this.verticalChainStyle = obtainStyledAttributes.getInt(index, this.verticalChainStyle);
                        break;
                    case 41:
                        ConstraintSet.q(this, obtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        ConstraintSet.q(this, obtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i4) {
                            case 61:
                                this.circleConstraint = ConstraintSet.p(obtainStyledAttributes, index, this.circleConstraint);
                                continue;
                            case 62:
                                this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                                continue;
                            case 63:
                                this.circleAngle = obtainStyledAttributes.getFloat(index, this.circleAngle);
                                continue;
                            default:
                                switch (i4) {
                                    case 69:
                                        this.widthPercent = obtainStyledAttributes.getFloat(index, 1.0f);
                                        continue;
                                    case 70:
                                        this.heightPercent = obtainStyledAttributes.getFloat(index, 1.0f);
                                        continue;
                                    case 71:
                                        continue;
                                    case 72:
                                        this.mBarrierDirection = obtainStyledAttributes.getInt(index, this.mBarrierDirection);
                                        continue;
                                    case 73:
                                        this.mBarrierMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                                        continue;
                                    case 74:
                                        this.mReferenceIdString = obtainStyledAttributes.getString(index);
                                        continue;
                                    case 75:
                                        this.mBarrierAllowsGoneWidgets = obtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                                        continue;
                                    case 76:
                                        this.mWrapBehavior = obtainStyledAttributes.getInt(index, this.mWrapBehavior);
                                        continue;
                                    case 77:
                                        this.baselineToTop = ConstraintSet.p(obtainStyledAttributes, index, this.baselineToTop);
                                        continue;
                                    case 78:
                                        this.baselineToBottom = ConstraintSet.p(obtainStyledAttributes, index, this.baselineToBottom);
                                        continue;
                                    case 79:
                                        this.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                        continue;
                                    case 80:
                                        this.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                        continue;
                                    case 81:
                                        this.widthDefault = obtainStyledAttributes.getInt(index, this.widthDefault);
                                        continue;
                                    case 82:
                                        this.heightDefault = obtainStyledAttributes.getInt(index, this.heightDefault);
                                        continue;
                                    case 83:
                                        this.heightMax = obtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                                        continue;
                                    case 84:
                                        this.widthMax = obtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                                        continue;
                                    case 85:
                                        this.heightMin = obtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                                        continue;
                                    case 86:
                                        this.widthMin = obtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                                        continue;
                                    case 87:
                                        this.constrainedWidth = obtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                                        continue;
                                    case 88:
                                        this.constrainedHeight = obtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                                        continue;
                                    case 89:
                                        this.mConstraintTag = obtainStyledAttributes.getString(index);
                                        continue;
                                    case 90:
                                        this.guidelineUseRtl = obtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        continue;
                                    case 91:
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("unused attribute 0x");
                                        sb.append(Integer.toHexString(index));
                                        sb.append("   ");
                                        sb.append(f3535a.get(index));
                                        continue;
                                    default:
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("Unknown attribute 0x");
                                        sb2.append(Integer.toHexString(index));
                                        sb2.append("   ");
                                        sb2.append(f3535a.get(index));
                                        continue;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(Layout src) {
            this.mIsGuideline = src.mIsGuideline;
            this.mWidth = src.mWidth;
            this.mApply = src.mApply;
            this.mHeight = src.mHeight;
            this.guideBegin = src.guideBegin;
            this.guideEnd = src.guideEnd;
            this.guidePercent = src.guidePercent;
            this.guidelineUseRtl = src.guidelineUseRtl;
            this.leftToLeft = src.leftToLeft;
            this.leftToRight = src.leftToRight;
            this.rightToLeft = src.rightToLeft;
            this.rightToRight = src.rightToRight;
            this.topToTop = src.topToTop;
            this.topToBottom = src.topToBottom;
            this.bottomToTop = src.bottomToTop;
            this.bottomToBottom = src.bottomToBottom;
            this.baselineToBaseline = src.baselineToBaseline;
            this.baselineToTop = src.baselineToTop;
            this.baselineToBottom = src.baselineToBottom;
            this.startToEnd = src.startToEnd;
            this.startToStart = src.startToStart;
            this.endToStart = src.endToStart;
            this.endToEnd = src.endToEnd;
            this.horizontalBias = src.horizontalBias;
            this.verticalBias = src.verticalBias;
            this.dimensionRatio = src.dimensionRatio;
            this.circleConstraint = src.circleConstraint;
            this.circleRadius = src.circleRadius;
            this.circleAngle = src.circleAngle;
            this.editorAbsoluteX = src.editorAbsoluteX;
            this.editorAbsoluteY = src.editorAbsoluteY;
            this.orientation = src.orientation;
            this.leftMargin = src.leftMargin;
            this.rightMargin = src.rightMargin;
            this.topMargin = src.topMargin;
            this.bottomMargin = src.bottomMargin;
            this.endMargin = src.endMargin;
            this.startMargin = src.startMargin;
            this.baselineMargin = src.baselineMargin;
            this.goneLeftMargin = src.goneLeftMargin;
            this.goneTopMargin = src.goneTopMargin;
            this.goneRightMargin = src.goneRightMargin;
            this.goneBottomMargin = src.goneBottomMargin;
            this.goneEndMargin = src.goneEndMargin;
            this.goneStartMargin = src.goneStartMargin;
            this.goneBaselineMargin = src.goneBaselineMargin;
            this.verticalWeight = src.verticalWeight;
            this.horizontalWeight = src.horizontalWeight;
            this.horizontalChainStyle = src.horizontalChainStyle;
            this.verticalChainStyle = src.verticalChainStyle;
            this.widthDefault = src.widthDefault;
            this.heightDefault = src.heightDefault;
            this.widthMax = src.widthMax;
            this.heightMax = src.heightMax;
            this.widthMin = src.widthMin;
            this.heightMin = src.heightMin;
            this.widthPercent = src.widthPercent;
            this.heightPercent = src.heightPercent;
            this.mBarrierDirection = src.mBarrierDirection;
            this.mBarrierMargin = src.mBarrierMargin;
            this.mHelperType = src.mHelperType;
            this.mConstraintTag = src.mConstraintTag;
            int[] iArr = src.mReferenceIds;
            if (iArr != null && src.mReferenceIdString == null) {
                this.mReferenceIds = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.mReferenceIds = null;
            }
            this.mReferenceIdString = src.mReferenceIdString;
            this.constrainedWidth = src.constrainedWidth;
            this.constrainedHeight = src.constrainedHeight;
            this.mBarrierAllowsGoneWidgets = src.mBarrierAllowsGoneWidgets;
            this.mWrapBehavior = src.mWrapBehavior;
        }

        public void dump(MotionScene scene, StringBuilder stringBuilder) {
            Field[] declaredFields = getClass().getDeclaredFields();
            stringBuilder.append("\n");
            for (Field field : declaredFields) {
                String name = field.getName();
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        Object obj = field.get(this);
                        Class<?> type = field.getType();
                        if (type == Integer.TYPE) {
                            Integer num = (Integer) obj;
                            if (num.intValue() != -1) {
                                Object lookUpConstraintName = scene.lookUpConstraintName(num.intValue());
                                stringBuilder.append("    ");
                                stringBuilder.append(name);
                                stringBuilder.append(" = \"");
                                stringBuilder.append(lookUpConstraintName == null ? num : lookUpConstraintName);
                                stringBuilder.append("\"\n");
                            }
                        } else if (type == Float.TYPE) {
                            Float f4 = (Float) obj;
                            if (f4.floatValue() != -1.0f) {
                                stringBuilder.append("    ");
                                stringBuilder.append(name);
                                stringBuilder.append(" = \"");
                                stringBuilder.append(f4);
                                stringBuilder.append("\"\n");
                            }
                        }
                    } catch (IllegalAccessException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Motion {

        /* renamed from: a  reason: collision with root package name */
        private static final int f3578a = -2;

        /* renamed from: b  reason: collision with root package name */
        private static final int f3579b = -1;

        /* renamed from: c  reason: collision with root package name */
        private static final int f3580c = -3;

        /* renamed from: d  reason: collision with root package name */
        private static SparseIntArray f3581d = null;

        /* renamed from: e  reason: collision with root package name */
        private static final int f3582e = 1;

        /* renamed from: f  reason: collision with root package name */
        private static final int f3583f = 2;

        /* renamed from: g  reason: collision with root package name */
        private static final int f3584g = 3;

        /* renamed from: h  reason: collision with root package name */
        private static final int f3585h = 4;

        /* renamed from: i  reason: collision with root package name */
        private static final int f3586i = 5;

        /* renamed from: j  reason: collision with root package name */
        private static final int f3587j = 6;

        /* renamed from: k  reason: collision with root package name */
        private static final int f3588k = 7;

        /* renamed from: l  reason: collision with root package name */
        private static final int f3589l = 8;

        /* renamed from: m  reason: collision with root package name */
        private static final int f3590m = 9;

        /* renamed from: n  reason: collision with root package name */
        private static final int f3591n = 10;
        public boolean mApply = false;
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

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3581d = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            f3581d.append(R.styleable.Motion_pathMotionArc, 2);
            f3581d.append(R.styleable.Motion_transitionEasing, 3);
            f3581d.append(R.styleable.Motion_drawPath, 4);
            f3581d.append(R.styleable.Motion_animateRelativeTo, 5);
            f3581d.append(R.styleable.Motion_animateCircleAngleTo, 6);
            f3581d.append(R.styleable.Motion_motionStagger, 7);
            f3581d.append(R.styleable.Motion_quantizeMotionSteps, 8);
            f3581d.append(R.styleable.Motion_quantizeMotionPhase, 9);
            f3581d.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        void a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Motion);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                switch (f3581d.get(index)) {
                    case 1:
                        this.mPathRotate = obtainStyledAttributes.getFloat(index, this.mPathRotate);
                        break;
                    case 2:
                        this.mPathMotionArc = obtainStyledAttributes.getInt(index, this.mPathMotionArc);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.mTransitionEasing = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.mTransitionEasing = Easing.NAMED_EASING[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.mDrawPath = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.mAnimateRelativeTo = ConstraintSet.p(obtainStyledAttributes, index, this.mAnimateRelativeTo);
                        break;
                    case 6:
                        this.mAnimateCircleAngleTo = obtainStyledAttributes.getInteger(index, this.mAnimateCircleAngleTo);
                        break;
                    case 7:
                        this.mMotionStagger = obtainStyledAttributes.getFloat(index, this.mMotionStagger);
                        break;
                    case 8:
                        this.mQuantizeMotionSteps = obtainStyledAttributes.getInteger(index, this.mQuantizeMotionSteps);
                        break;
                    case 9:
                        this.mQuantizeMotionPhase = obtainStyledAttributes.getFloat(index, this.mQuantizeMotionPhase);
                        break;
                    case 10:
                        int i4 = obtainStyledAttributes.peekValue(index).type;
                        if (i4 == 1) {
                            int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                            this.mQuantizeInterpolatorID = resourceId;
                            if (resourceId != -1) {
                                this.mQuantizeInterpolatorType = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (i4 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            this.mQuantizeInterpolatorString = string;
                            if (string.indexOf(e.F0) > 0) {
                                this.mQuantizeInterpolatorID = obtainStyledAttributes.getResourceId(index, -1);
                                this.mQuantizeInterpolatorType = -2;
                                break;
                            } else {
                                this.mQuantizeInterpolatorType = -1;
                                break;
                            }
                        } else {
                            this.mQuantizeInterpolatorType = obtainStyledAttributes.getInteger(index, this.mQuantizeInterpolatorID);
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(Motion src) {
            this.mApply = src.mApply;
            this.mAnimateRelativeTo = src.mAnimateRelativeTo;
            this.mTransitionEasing = src.mTransitionEasing;
            this.mPathMotionArc = src.mPathMotionArc;
            this.mDrawPath = src.mDrawPath;
            this.mPathRotate = src.mPathRotate;
            this.mMotionStagger = src.mMotionStagger;
            this.mPolarRelativeTo = src.mPolarRelativeTo;
        }
    }

    /* loaded from: classes.dex */
    public static class PropertySet {
        public boolean mApply = false;
        public int visibility = 0;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;

        void a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.PropertySet);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.alpha = obtainStyledAttributes.getFloat(index, this.alpha);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    this.visibility = obtainStyledAttributes.getInt(index, this.visibility);
                    this.visibility = ConstraintSet.f3480l[this.visibility];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.mVisibilityMode = obtainStyledAttributes.getInt(index, this.mVisibilityMode);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.mProgress = obtainStyledAttributes.getFloat(index, this.mProgress);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(PropertySet src) {
            this.mApply = src.mApply;
            this.visibility = src.visibility;
            this.alpha = src.alpha;
            this.mProgress = src.mProgress;
            this.mVisibilityMode = src.mVisibilityMode;
        }
    }

    /* loaded from: classes.dex */
    public static class Transform {

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f3592a = null;

        /* renamed from: b  reason: collision with root package name */
        private static final int f3593b = 1;

        /* renamed from: c  reason: collision with root package name */
        private static final int f3594c = 2;

        /* renamed from: d  reason: collision with root package name */
        private static final int f3595d = 3;

        /* renamed from: e  reason: collision with root package name */
        private static final int f3596e = 4;

        /* renamed from: f  reason: collision with root package name */
        private static final int f3597f = 5;

        /* renamed from: g  reason: collision with root package name */
        private static final int f3598g = 6;

        /* renamed from: h  reason: collision with root package name */
        private static final int f3599h = 7;

        /* renamed from: i  reason: collision with root package name */
        private static final int f3600i = 8;

        /* renamed from: j  reason: collision with root package name */
        private static final int f3601j = 9;

        /* renamed from: k  reason: collision with root package name */
        private static final int f3602k = 10;

        /* renamed from: l  reason: collision with root package name */
        private static final int f3603l = 11;

        /* renamed from: m  reason: collision with root package name */
        private static final int f3604m = 12;
        public boolean mApply = false;
        public float rotation = 0.0f;
        public float rotationX = 0.0f;
        public float rotationY = 0.0f;
        public float scaleX = 1.0f;
        public float scaleY = 1.0f;
        public float transformPivotX = Float.NaN;
        public float transformPivotY = Float.NaN;
        public int transformPivotTarget = -1;
        public float translationX = 0.0f;
        public float translationY = 0.0f;
        public float translationZ = 0.0f;
        public boolean applyElevation = false;
        public float elevation = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3592a = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            f3592a.append(R.styleable.Transform_android_rotationX, 2);
            f3592a.append(R.styleable.Transform_android_rotationY, 3);
            f3592a.append(R.styleable.Transform_android_scaleX, 4);
            f3592a.append(R.styleable.Transform_android_scaleY, 5);
            f3592a.append(R.styleable.Transform_android_transformPivotX, 6);
            f3592a.append(R.styleable.Transform_android_transformPivotY, 7);
            f3592a.append(R.styleable.Transform_android_translationX, 8);
            f3592a.append(R.styleable.Transform_android_translationY, 9);
            f3592a.append(R.styleable.Transform_android_translationZ, 10);
            f3592a.append(R.styleable.Transform_android_elevation, 11);
            f3592a.append(R.styleable.Transform_transformPivotTarget, 12);
        }

        void a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Transform);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                switch (f3592a.get(index)) {
                    case 1:
                        this.rotation = obtainStyledAttributes.getFloat(index, this.rotation);
                        break;
                    case 2:
                        this.rotationX = obtainStyledAttributes.getFloat(index, this.rotationX);
                        break;
                    case 3:
                        this.rotationY = obtainStyledAttributes.getFloat(index, this.rotationY);
                        break;
                    case 4:
                        this.scaleX = obtainStyledAttributes.getFloat(index, this.scaleX);
                        break;
                    case 5:
                        this.scaleY = obtainStyledAttributes.getFloat(index, this.scaleY);
                        break;
                    case 6:
                        this.transformPivotX = obtainStyledAttributes.getDimension(index, this.transformPivotX);
                        break;
                    case 7:
                        this.transformPivotY = obtainStyledAttributes.getDimension(index, this.transformPivotY);
                        break;
                    case 8:
                        this.translationX = obtainStyledAttributes.getDimension(index, this.translationX);
                        break;
                    case 9:
                        this.translationY = obtainStyledAttributes.getDimension(index, this.translationY);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.translationZ = obtainStyledAttributes.getDimension(index, this.translationZ);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.applyElevation = true;
                            this.elevation = obtainStyledAttributes.getDimension(index, this.elevation);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.transformPivotTarget = ConstraintSet.p(obtainStyledAttributes, index, this.transformPivotTarget);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(Transform src) {
            this.mApply = src.mApply;
            this.rotation = src.rotation;
            this.rotationX = src.rotationX;
            this.rotationY = src.rotationY;
            this.scaleX = src.scaleX;
            this.scaleY = src.scaleY;
            this.transformPivotX = src.transformPivotX;
            this.transformPivotY = src.transformPivotY;
            this.transformPivotTarget = src.transformPivotTarget;
            this.translationX = src.translationX;
            this.translationY = src.translationY;
            this.translationZ = src.translationZ;
            this.applyElevation = src.applyElevation;
            this.elevation = src.elevation;
        }
    }

    /* loaded from: classes.dex */
    class WriteJsonEngine {

        /* renamed from: o  reason: collision with root package name */
        private static final String f3605o = "       ";

        /* renamed from: a  reason: collision with root package name */
        Writer f3606a;

        /* renamed from: b  reason: collision with root package name */
        ConstraintLayout f3607b;

        /* renamed from: c  reason: collision with root package name */
        Context f3608c;

        /* renamed from: d  reason: collision with root package name */
        int f3609d;

        /* renamed from: e  reason: collision with root package name */
        int f3610e = 0;

        /* renamed from: f  reason: collision with root package name */
        final String f3611f = "'left'";

        /* renamed from: g  reason: collision with root package name */
        final String f3612g = "'right'";

        /* renamed from: h  reason: collision with root package name */
        final String f3613h = "'baseline'";

        /* renamed from: i  reason: collision with root package name */
        final String f3614i = "'bottom'";

        /* renamed from: j  reason: collision with root package name */
        final String f3615j = "'top'";

        /* renamed from: k  reason: collision with root package name */
        final String f3616k = "'start'";

        /* renamed from: l  reason: collision with root package name */
        final String f3617l = "'end'";

        /* renamed from: m  reason: collision with root package name */
        HashMap<Integer, String> f3618m = new HashMap<>();

        WriteJsonEngine(Writer writer, ConstraintLayout layout, int flags) throws IOException {
            this.f3606a = writer;
            this.f3607b = layout;
            this.f3608c = layout.getContext();
            this.f3609d = flags;
        }

        private void e(String dimString, int dim, int dimDefault, float dimPercent, int dimMin, int dimMax, boolean constrainedDim) throws IOException {
            if (dim != 0) {
                if (dim == -2) {
                    Writer writer = this.f3606a;
                    writer.write(f3605o + dimString + ": 'wrap'\n");
                } else if (dim == -1) {
                    Writer writer2 = this.f3606a;
                    writer2.write(f3605o + dimString + ": 'parent'\n");
                } else {
                    Writer writer3 = this.f3606a;
                    writer3.write(f3605o + dimString + ": " + dim + ",\n");
                }
            } else if (dimMax == -1 && dimMin == -1) {
                if (dimDefault == 1) {
                    Writer writer4 = this.f3606a;
                    writer4.write(f3605o + dimString + ": '???????????',\n");
                } else if (dimDefault != 2) {
                } else {
                    Writer writer5 = this.f3606a;
                    writer5.write(f3605o + dimString + ": '" + dimPercent + "%',\n");
                }
            } else if (dimDefault == 0) {
                Writer writer6 = this.f3606a;
                writer6.write(f3605o + dimString + ": {'spread' ," + dimMin + ", " + dimMax + "}\n");
            } else if (dimDefault == 1) {
                Writer writer7 = this.f3606a;
                writer7.write(f3605o + dimString + ": {'wrap' ," + dimMin + ", " + dimMax + "}\n");
            } else if (dimDefault != 2) {
            } else {
                Writer writer8 = this.f3606a;
                writer8.write(f3605o + dimString + ": {'" + dimPercent + "'% ," + dimMin + ", " + dimMax + "}\n");
            }
        }

        private void f(int orientation, int guideBegin, int guideEnd, float guidePercent) {
        }

        String a(int id) {
            if (this.f3618m.containsKey(Integer.valueOf(id))) {
                return "'" + this.f3618m.get(Integer.valueOf(id)) + "'";
            } else if (id == 0) {
                return "'parent'";
            } else {
                String b4 = b(id);
                this.f3618m.put(Integer.valueOf(id), b4);
                return "'" + b4 + "'";
            }
        }

        String b(int id) {
            try {
                if (id != -1) {
                    return this.f3608c.getResources().getResourceEntryName(id);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("unknown");
                int i2 = this.f3610e + 1;
                this.f3610e = i2;
                sb.append(i2);
                return sb.toString();
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unknown");
                int i4 = this.f3610e + 1;
                this.f3610e = i4;
                sb2.append(i4);
                return sb2.toString();
            }
        }

        void c(int circleConstraint, float circleAngle, int circleRadius) throws IOException {
            if (circleConstraint == -1) {
                return;
            }
            this.f3606a.write("       circle");
            this.f3606a.write(":[");
            this.f3606a.write(a(circleConstraint));
            Writer writer = this.f3606a;
            writer.write(", " + circleAngle);
            Writer writer2 = this.f3606a;
            writer2.write(circleRadius + "]");
        }

        void d(String my, int leftToLeft, String other, int margin, int goneMargin) throws IOException {
            if (leftToLeft == -1) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + my);
            this.f3606a.write(":[");
            this.f3606a.write(a(leftToLeft));
            this.f3606a.write(" , ");
            this.f3606a.write(other);
            if (margin != 0) {
                Writer writer2 = this.f3606a;
                writer2.write(" , " + margin);
            }
            this.f3606a.write("],\n");
        }

        void g() throws IOException {
            this.f3606a.write("\n'ConstraintSet':{\n");
            for (Integer num : ConstraintSet.this.f3515d.keySet()) {
                String a4 = a(num.intValue());
                Writer writer = this.f3606a;
                writer.write(a4 + ":{\n");
                Layout layout = ((Constraint) ConstraintSet.this.f3515d.get(num)).layout;
                e("height", layout.mHeight, layout.heightDefault, layout.heightPercent, layout.heightMin, layout.heightMax, layout.constrainedHeight);
                e("width", layout.mWidth, layout.widthDefault, layout.widthPercent, layout.widthMin, layout.widthMax, layout.constrainedWidth);
                d("'left'", layout.leftToLeft, "'left'", layout.leftMargin, layout.goneLeftMargin);
                d("'left'", layout.leftToRight, "'right'", layout.leftMargin, layout.goneLeftMargin);
                d("'right'", layout.rightToLeft, "'left'", layout.rightMargin, layout.goneRightMargin);
                d("'right'", layout.rightToRight, "'right'", layout.rightMargin, layout.goneRightMargin);
                d("'baseline'", layout.baselineToBaseline, "'baseline'", -1, layout.goneBaselineMargin);
                d("'baseline'", layout.baselineToTop, "'top'", -1, layout.goneBaselineMargin);
                d("'baseline'", layout.baselineToBottom, "'bottom'", -1, layout.goneBaselineMargin);
                d("'top'", layout.topToBottom, "'bottom'", layout.topMargin, layout.goneTopMargin);
                d("'top'", layout.topToTop, "'top'", layout.topMargin, layout.goneTopMargin);
                d("'bottom'", layout.bottomToBottom, "'bottom'", layout.bottomMargin, layout.goneBottomMargin);
                d("'bottom'", layout.bottomToTop, "'top'", layout.bottomMargin, layout.goneBottomMargin);
                d("'start'", layout.startToStart, "'start'", layout.startMargin, layout.goneStartMargin);
                d("'start'", layout.startToEnd, "'end'", layout.startMargin, layout.goneStartMargin);
                d("'end'", layout.endToStart, "'start'", layout.endMargin, layout.goneEndMargin);
                d("'end'", layout.endToEnd, "'end'", layout.endMargin, layout.goneEndMargin);
                i("'horizontalBias'", layout.horizontalBias, 0.5f);
                i("'verticalBias'", layout.verticalBias, 0.5f);
                c(layout.circleConstraint, layout.circleAngle, layout.circleRadius);
                f(layout.orientation, layout.guideBegin, layout.guideEnd, layout.guidePercent);
                k("'dimensionRatio'", layout.dimensionRatio);
                j("'barrierMargin'", layout.mBarrierMargin);
                j("'type'", layout.mHelperType);
                k("'ReferenceId'", layout.mReferenceIdString);
                m("'mBarrierAllowsGoneWidgets'", layout.mBarrierAllowsGoneWidgets, true);
                j("'WrapBehavior'", layout.mWrapBehavior);
                h("'verticalWeight'", layout.verticalWeight);
                h("'horizontalWeight'", layout.horizontalWeight);
                j("'horizontalChainStyle'", layout.horizontalChainStyle);
                j("'verticalChainStyle'", layout.verticalChainStyle);
                j("'barrierDirection'", layout.mBarrierDirection);
                int[] iArr = layout.mReferenceIds;
                if (iArr != null) {
                    n("'ReferenceIds'", iArr);
                }
                this.f3606a.write("}\n");
            }
            this.f3606a.write("}\n");
        }

        void h(String name, float value) throws IOException {
            if (value == -1.0f) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + name);
            Writer writer2 = this.f3606a;
            writer2.write(": " + value);
            this.f3606a.write(",\n");
        }

        void i(String name, float value, float def) throws IOException {
            if (value == def) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + name);
            Writer writer2 = this.f3606a;
            writer2.write(": " + value);
            this.f3606a.write(",\n");
        }

        void j(String name, int value) throws IOException {
            if (value == 0 || value == -1) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + name);
            this.f3606a.write(":");
            Writer writer2 = this.f3606a;
            writer2.write(", " + value);
            this.f3606a.write("\n");
        }

        void k(String name, String value) throws IOException {
            if (value == null) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + name);
            this.f3606a.write(":");
            Writer writer2 = this.f3606a;
            writer2.write(", " + value);
            this.f3606a.write("\n");
        }

        void l(String name, boolean value) throws IOException {
            if (value) {
                Writer writer = this.f3606a;
                writer.write(f3605o + name);
                Writer writer2 = this.f3606a;
                writer2.write(": " + value);
                this.f3606a.write(",\n");
            }
        }

        void m(String name, boolean value, boolean def) throws IOException {
            if (value == def) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + name);
            Writer writer2 = this.f3606a;
            writer2.write(": " + value);
            this.f3606a.write(",\n");
        }

        void n(String name, int[] value) throws IOException {
            if (value == null) {
                return;
            }
            Writer writer = this.f3606a;
            writer.write(f3605o + name);
            this.f3606a.write(": ");
            int i2 = 0;
            while (i2 < value.length) {
                Writer writer2 = this.f3606a;
                StringBuilder sb = new StringBuilder();
                sb.append(i2 == 0 ? "[" : ", ");
                sb.append(a(value[i2]));
                writer2.write(sb.toString());
                i2++;
            }
            this.f3606a.write("],\n");
        }
    }

    /* loaded from: classes.dex */
    class WriteXmlEngine {

        /* renamed from: o  reason: collision with root package name */
        private static final String f3620o = "\n       ";

        /* renamed from: a  reason: collision with root package name */
        Writer f3621a;

        /* renamed from: b  reason: collision with root package name */
        ConstraintLayout f3622b;

        /* renamed from: c  reason: collision with root package name */
        Context f3623c;

        /* renamed from: d  reason: collision with root package name */
        int f3624d;

        /* renamed from: e  reason: collision with root package name */
        int f3625e = 0;

        /* renamed from: f  reason: collision with root package name */
        final String f3626f = "'left'";

        /* renamed from: g  reason: collision with root package name */
        final String f3627g = "'right'";

        /* renamed from: h  reason: collision with root package name */
        final String f3628h = "'baseline'";

        /* renamed from: i  reason: collision with root package name */
        final String f3629i = "'bottom'";

        /* renamed from: j  reason: collision with root package name */
        final String f3630j = "'top'";

        /* renamed from: k  reason: collision with root package name */
        final String f3631k = "'start'";

        /* renamed from: l  reason: collision with root package name */
        final String f3632l = "'end'";

        /* renamed from: m  reason: collision with root package name */
        HashMap<Integer, String> f3633m = new HashMap<>();

        WriteXmlEngine(Writer writer, ConstraintLayout layout, int flags) throws IOException {
            this.f3621a = writer;
            this.f3622b = layout;
            this.f3623c = layout.getContext();
            this.f3624d = flags;
        }

        private void c(String dimString, int dim, int def) throws IOException {
            if (dim != def) {
                if (dim == -2) {
                    Writer writer = this.f3621a;
                    writer.write(f3620o + dimString + "=\"wrap_content\"");
                } else if (dim == -1) {
                    Writer writer2 = this.f3621a;
                    writer2.write(f3620o + dimString + "=\"match_parent\"");
                } else {
                    Writer writer3 = this.f3621a;
                    writer3.write(f3620o + dimString + "=\"" + dim + "dp\"");
                }
            }
        }

        private void d(String dimString, boolean val, boolean def) throws IOException {
            if (val != def) {
                Writer writer = this.f3621a;
                writer.write(f3620o + dimString + "=\"" + val + "dp\"");
            }
        }

        private void g(String dimString, int dim, int def) throws IOException {
            if (dim != def) {
                Writer writer = this.f3621a;
                writer.write(f3620o + dimString + "=\"" + dim + "dp\"");
            }
        }

        private void h(String dimString, int val, String[] types, int def) throws IOException {
            if (val != def) {
                Writer writer = this.f3621a;
                writer.write(f3620o + dimString + "=\"" + types[val] + a.f72569g);
            }
        }

        String a(int id) {
            if (this.f3633m.containsKey(Integer.valueOf(id))) {
                return "@+id/" + this.f3633m.get(Integer.valueOf(id)) + "";
            } else if (id == 0) {
                return ConstraintSet.f3485m1;
            } else {
                String b4 = b(id);
                this.f3633m.put(Integer.valueOf(id), b4);
                return "@+id/" + b4 + "";
            }
        }

        String b(int id) {
            try {
                if (id != -1) {
                    return this.f3623c.getResources().getResourceEntryName(id);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("unknown");
                int i2 = this.f3625e + 1;
                this.f3625e = i2;
                sb.append(i2);
                return sb.toString();
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unknown");
                int i4 = this.f3625e + 1;
                this.f3625e = i4;
                sb2.append(i4);
                return sb2.toString();
            }
        }

        void e(int circleConstraint, float circleAngle, int circleRadius) throws IOException {
            if (circleConstraint == -1) {
                return;
            }
            this.f3621a.write("circle");
            this.f3621a.write(":[");
            this.f3621a.write(a(circleConstraint));
            Writer writer = this.f3621a;
            writer.write(", " + circleAngle);
            Writer writer2 = this.f3621a;
            writer2.write(circleRadius + "]");
        }

        void f(String my, int leftToLeft, String other, int margin, int goneMargin) throws IOException {
            if (leftToLeft == -1) {
                return;
            }
            Writer writer = this.f3621a;
            writer.write(f3620o + my);
            this.f3621a.write(":[");
            this.f3621a.write(a(leftToLeft));
            this.f3621a.write(" , ");
            this.f3621a.write(other);
            if (margin != 0) {
                Writer writer2 = this.f3621a;
                writer2.write(" , " + margin);
            }
            this.f3621a.write("],\n");
        }

        void i() throws IOException {
            this.f3621a.write("\n<ConstraintSet>\n");
            for (Integer num : ConstraintSet.this.f3515d.keySet()) {
                String a4 = a(num.intValue());
                this.f3621a.write("  <Constraint");
                Writer writer = this.f3621a;
                writer.write("\n       android:id=\"" + a4 + a.f72569g);
                Layout layout = ((Constraint) ConstraintSet.this.f3515d.get(num)).layout;
                c("android:layout_width", layout.mWidth, -5);
                c("android:layout_height", layout.mHeight, -5);
                j("app:layout_constraintGuide_begin", (float) layout.guideBegin, -1.0f);
                j("app:layout_constraintGuide_end", layout.guideEnd, -1.0f);
                j("app:layout_constraintGuide_percent", layout.guidePercent, -1.0f);
                j("app:layout_constraintHorizontal_bias", layout.horizontalBias, 0.5f);
                j("app:layout_constraintVertical_bias", layout.verticalBias, 0.5f);
                m("app:layout_constraintDimensionRatio", layout.dimensionRatio, null);
                o("app:layout_constraintCircle", layout.circleConstraint);
                j("app:layout_constraintCircleRadius", layout.circleRadius, 0.0f);
                j("app:layout_constraintCircleAngle", layout.circleAngle, 0.0f);
                j("android:orientation", layout.orientation, -1.0f);
                j("app:layout_constraintVertical_weight", layout.verticalWeight, -1.0f);
                j("app:layout_constraintHorizontal_weight", layout.horizontalWeight, -1.0f);
                j("app:layout_constraintHorizontal_chainStyle", layout.horizontalChainStyle, 0.0f);
                j("app:layout_constraintVertical_chainStyle", layout.verticalChainStyle, 0.0f);
                j("app:barrierDirection", layout.mBarrierDirection, -1.0f);
                j("app:barrierMargin", layout.mBarrierMargin, 0.0f);
                g("app:layout_marginLeft", layout.leftMargin, 0);
                g("app:layout_goneMarginLeft", layout.goneLeftMargin, Integer.MIN_VALUE);
                g("app:layout_marginRight", layout.rightMargin, 0);
                g("app:layout_goneMarginRight", layout.goneRightMargin, Integer.MIN_VALUE);
                g("app:layout_marginStart", layout.startMargin, 0);
                g("app:layout_goneMarginStart", layout.goneStartMargin, Integer.MIN_VALUE);
                g("app:layout_marginEnd", layout.endMargin, 0);
                g("app:layout_goneMarginEnd", layout.goneEndMargin, Integer.MIN_VALUE);
                g("app:layout_marginTop", layout.topMargin, 0);
                g("app:layout_goneMarginTop", layout.goneTopMargin, Integer.MIN_VALUE);
                g("app:layout_marginBottom", layout.bottomMargin, 0);
                g("app:layout_goneMarginBottom", layout.goneBottomMargin, Integer.MIN_VALUE);
                g("app:goneBaselineMargin", layout.goneBaselineMargin, Integer.MIN_VALUE);
                g("app:baselineMargin", layout.baselineMargin, 0);
                d("app:layout_constrainedWidth", layout.constrainedWidth, false);
                d("app:layout_constrainedHeight", layout.constrainedHeight, false);
                d("app:barrierAllowsGoneWidgets", layout.mBarrierAllowsGoneWidgets, true);
                j("app:layout_wrapBehaviorInParent", layout.mWrapBehavior, 0.0f);
                o("app:baselineToBaseline", layout.baselineToBaseline);
                o("app:baselineToBottom", layout.baselineToBottom);
                o("app:baselineToTop", layout.baselineToTop);
                o("app:layout_constraintBottom_toBottomOf", layout.bottomToBottom);
                o("app:layout_constraintBottom_toTopOf", layout.bottomToTop);
                o("app:layout_constraintEnd_toEndOf", layout.endToEnd);
                o("app:layout_constraintEnd_toStartOf", layout.endToStart);
                o("app:layout_constraintLeft_toLeftOf", layout.leftToLeft);
                o("app:layout_constraintLeft_toRightOf", layout.leftToRight);
                o("app:layout_constraintRight_toLeftOf", layout.rightToLeft);
                o("app:layout_constraintRight_toRightOf", layout.rightToRight);
                o("app:layout_constraintStart_toEndOf", layout.startToEnd);
                o("app:layout_constraintStart_toStartOf", layout.startToStart);
                o("app:layout_constraintTop_toBottomOf", layout.topToBottom);
                o("app:layout_constraintTop_toTopOf", layout.topToTop);
                String[] strArr = {"spread", "wrap", "percent"};
                h("app:layout_constraintHeight_default", layout.heightDefault, strArr, 0);
                j("app:layout_constraintHeight_percent", layout.heightPercent, 1.0f);
                g("app:layout_constraintHeight_min", layout.heightMin, 0);
                g("app:layout_constraintHeight_max", layout.heightMax, 0);
                d("android:layout_constrainedHeight", layout.constrainedHeight, false);
                h("app:layout_constraintWidth_default", layout.widthDefault, strArr, 0);
                j("app:layout_constraintWidth_percent", layout.widthPercent, 1.0f);
                g("app:layout_constraintWidth_min", layout.widthMin, 0);
                g("app:layout_constraintWidth_max", layout.widthMax, 0);
                d("android:layout_constrainedWidth", layout.constrainedWidth, false);
                j("app:layout_constraintVertical_weight", layout.verticalWeight, -1.0f);
                j("app:layout_constraintHorizontal_weight", layout.horizontalWeight, -1.0f);
                k("app:layout_constraintHorizontal_chainStyle", layout.horizontalChainStyle);
                k("app:layout_constraintVertical_chainStyle", layout.verticalChainStyle);
                h("app:barrierDirection", layout.mBarrierDirection, new String[]{"left", "right", "top", "bottom", "start", "end"}, -1);
                m("app:layout_constraintTag", layout.mConstraintTag, null);
                int[] iArr = layout.mReferenceIds;
                if (iArr != null) {
                    n("'ReferenceIds'", iArr);
                }
                this.f3621a.write(" />\n");
            }
            this.f3621a.write("</ConstraintSet>\n");
        }

        void j(String name, float value, float def) throws IOException {
            if (value == def) {
                return;
            }
            Writer writer = this.f3621a;
            writer.write(f3620o + name);
            Writer writer2 = this.f3621a;
            writer2.write("=\"" + value + a.f72569g);
        }

        void k(String name, int value) throws IOException {
            if (value == 0 || value == -1) {
                return;
            }
            Writer writer = this.f3621a;
            writer.write(f3620o + name + "=\"" + value + "\"\n");
        }

        void l(String name, String value) throws IOException {
            if (value == null) {
                return;
            }
            this.f3621a.write(name);
            this.f3621a.write(":");
            Writer writer = this.f3621a;
            writer.write(", " + value);
            this.f3621a.write("\n");
        }

        void m(String name, String value, String def) throws IOException {
            if (value == null || value.equals(def)) {
                return;
            }
            Writer writer = this.f3621a;
            writer.write(f3620o + name);
            Writer writer2 = this.f3621a;
            writer2.write("=\"" + value + a.f72569g);
        }

        void n(String name, int[] value) throws IOException {
            if (value == null) {
                return;
            }
            Writer writer = this.f3621a;
            writer.write(f3620o + name);
            this.f3621a.write(":");
            int i2 = 0;
            while (i2 < value.length) {
                Writer writer2 = this.f3621a;
                StringBuilder sb = new StringBuilder();
                sb.append(i2 == 0 ? "[" : ", ");
                sb.append(a(value[i2]));
                writer2.write(sb.toString());
                i2++;
            }
            this.f3621a.write("],\n");
        }

        void o(String str, int leftToLeft) throws IOException {
            if (leftToLeft == -1) {
                return;
            }
            Writer writer = this.f3621a;
            writer.write(f3620o + str);
            Writer writer2 = this.f3621a;
            writer2.write("=\"" + a(leftToLeft) + a.f72569g);
        }
    }

    static {
        f3486n.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f3486n.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f3486n.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f3486n.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f3486n.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f3486n.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f3486n.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f3486n.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f3486n.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f3486n.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f3486n.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f3486n.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        f3486n.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        f3486n.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        f3486n.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        f3486n.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        f3486n.append(R.styleable.Constraint_guidelineUseRtl, 99);
        f3486n.append(R.styleable.Constraint_android_orientation, 27);
        f3486n.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f3486n.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f3486n.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f3486n.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f3486n.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        f3486n.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        f3486n.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        f3486n.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        f3486n.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        f3486n.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        f3486n.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        f3486n.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f3486n.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f3486n.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f3486n.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f3486n.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        f3486n.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        f3486n.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        f3486n.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        f3486n.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        f3486n.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        f3486n.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        f3486n.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        f3486n.append(R.styleable.Constraint_android_layout_marginRight, 28);
        f3486n.append(R.styleable.Constraint_android_layout_marginStart, 31);
        f3486n.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        f3486n.append(R.styleable.Constraint_android_layout_marginTop, 34);
        f3486n.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        f3486n.append(R.styleable.Constraint_android_layout_width, 23);
        f3486n.append(R.styleable.Constraint_android_layout_height, 21);
        f3486n.append(R.styleable.Constraint_layout_constraintWidth, 95);
        f3486n.append(R.styleable.Constraint_layout_constraintHeight, 96);
        f3486n.append(R.styleable.Constraint_android_visibility, 22);
        f3486n.append(R.styleable.Constraint_android_alpha, 43);
        f3486n.append(R.styleable.Constraint_android_elevation, 44);
        f3486n.append(R.styleable.Constraint_android_rotationX, 45);
        f3486n.append(R.styleable.Constraint_android_rotationY, 46);
        f3486n.append(R.styleable.Constraint_android_rotation, 60);
        f3486n.append(R.styleable.Constraint_android_scaleX, 47);
        f3486n.append(R.styleable.Constraint_android_scaleY, 48);
        f3486n.append(R.styleable.Constraint_android_transformPivotX, 49);
        f3486n.append(R.styleable.Constraint_android_transformPivotY, 50);
        f3486n.append(R.styleable.Constraint_android_translationX, 51);
        f3486n.append(R.styleable.Constraint_android_translationY, 52);
        f3486n.append(R.styleable.Constraint_android_translationZ, 53);
        f3486n.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        f3486n.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        f3486n.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        f3486n.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        f3486n.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        f3486n.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        f3486n.append(R.styleable.Constraint_layout_constraintCircle, 61);
        f3486n.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        f3486n.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        f3486n.append(R.styleable.Constraint_animateRelativeTo, 64);
        f3486n.append(R.styleable.Constraint_transitionEasing, 65);
        f3486n.append(R.styleable.Constraint_drawPath, 66);
        f3486n.append(R.styleable.Constraint_transitionPathRotate, 67);
        f3486n.append(R.styleable.Constraint_motionStagger, 79);
        f3486n.append(R.styleable.Constraint_android_id, 38);
        f3486n.append(R.styleable.Constraint_motionProgress, 68);
        f3486n.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        f3486n.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        f3486n.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f3486n.append(R.styleable.Constraint_chainUseRtl, 71);
        f3486n.append(R.styleable.Constraint_barrierDirection, 72);
        f3486n.append(R.styleable.Constraint_barrierMargin, 73);
        f3486n.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        f3486n.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f3486n.append(R.styleable.Constraint_pathMotionArc, 76);
        f3486n.append(R.styleable.Constraint_layout_constraintTag, 77);
        f3486n.append(R.styleable.Constraint_visibilityMode, 78);
        f3486n.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        f3486n.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        f3486n.append(R.styleable.Constraint_polarRelativeTo, 82);
        f3486n.append(R.styleable.Constraint_transformPivotTarget, 83);
        f3486n.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        f3486n.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        f3486n.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        SparseIntArray sparseIntArray = f3488o;
        int i2 = R.styleable.ConstraintOverride_layout_editor_absoluteY;
        sparseIntArray.append(i2, 6);
        f3488o.append(i2, 7);
        f3488o.append(R.styleable.ConstraintOverride_android_orientation, 27);
        f3488o.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f3488o.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f3488o.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f3488o.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f3488o.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f3488o.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        f3488o.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        f3488o.append(R.styleable.ConstraintOverride_android_visibility, 22);
        f3488o.append(R.styleable.ConstraintOverride_android_alpha, 43);
        f3488o.append(R.styleable.ConstraintOverride_android_elevation, 44);
        f3488o.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        f3488o.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        f3488o.append(R.styleable.ConstraintOverride_android_rotation, 60);
        f3488o.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        f3488o.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        f3488o.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        f3488o.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        f3488o.append(R.styleable.ConstraintOverride_android_translationX, 51);
        f3488o.append(R.styleable.ConstraintOverride_android_translationY, 52);
        f3488o.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f3488o.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        f3488o.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        f3488o.append(R.styleable.ConstraintOverride_drawPath, 66);
        f3488o.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        f3488o.append(R.styleable.ConstraintOverride_motionStagger, 79);
        f3488o.append(R.styleable.ConstraintOverride_android_id, 38);
        f3488o.append(R.styleable.ConstraintOverride_motionTarget, 98);
        f3488o.append(R.styleable.ConstraintOverride_motionProgress, 68);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f3488o.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        f3488o.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        f3488o.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        f3488o.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f3488o.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f3488o.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        f3488o.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        f3488o.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        f3488o.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f3488o.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f3488o.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        f3488o.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        f3488o.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f3488o.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f3488o.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f3488o.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    private static String[] A(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z3 = false;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            if (charArray[i4] == ',' && !z3) {
                arrayList.add(new String(charArray, i2, i4 - i2));
                i2 = i4 + 1;
            } else if (charArray[i4] == '\"') {
                z3 = !z3;
            }
        }
        arrayList.add(new String(charArray, i2, charArray.length - i2));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static Constraint buildDelta(Context context, XmlPullParser parser) {
        AttributeSet asAttributeSet = Xml.asAttributeSet(parser);
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, R.styleable.ConstraintOverride);
        u(context, constraint, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return constraint;
    }

    private void h(ConstraintAttribute.AttributeType attributeType, String... attributeName) {
        for (int i2 = 0; i2 < attributeName.length; i2++) {
            if (this.f3513b.containsKey(attributeName[i2])) {
                ConstraintAttribute constraintAttribute = this.f3513b.get(attributeName[i2]);
                if (constraintAttribute != null && constraintAttribute.getType() != attributeType) {
                    throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
                }
            } else {
                this.f3513b.put(attributeName[i2], new ConstraintAttribute(attributeName[i2], attributeType));
            }
        }
    }

    private int[] j(View view, String referenceIdString) {
        int i2;
        Object designInformation;
        String[] split = referenceIdString.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i4 = 0;
        int i5 = 0;
        while (i4 < split.length) {
            String trim = split[i4].trim();
            try {
                i2 = R.id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 == 0) {
                i2 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i2 == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, trim)) != null && (designInformation instanceof Integer)) {
                i2 = ((Integer) designInformation).intValue();
            }
            iArr[i5] = i2;
            i4++;
            i5++;
        }
        return i5 != split.length ? Arrays.copyOf(iArr, i5) : iArr;
    }

    private void k(int leftId, int leftSide, int rightId, int rightSide, int[] chainIds, float[] weights, int style, int left, int right) {
        if (chainIds.length >= 2) {
            if (weights != null && weights.length != chainIds.length) {
                throw new IllegalArgumentException("must have 2 or more widgets in a chain");
            }
            if (weights != null) {
                m(chainIds[0]).layout.horizontalWeight = weights[0];
            }
            m(chainIds[0]).layout.horizontalChainStyle = style;
            connect(chainIds[0], left, leftId, leftSide, -1);
            for (int i2 = 1; i2 < chainIds.length; i2++) {
                int i4 = chainIds[i2];
                int i5 = i2 - 1;
                connect(chainIds[i2], left, chainIds[i5], right, -1);
                connect(chainIds[i5], right, chainIds[i2], left, -1);
                if (weights != null) {
                    m(chainIds[i2]).layout.horizontalWeight = weights[i2];
                }
            }
            connect(chainIds[chainIds.length - 1], right, rightId, rightSide, -1);
            return;
        }
        throw new IllegalArgumentException("must have 2 or more widgets in a chain");
    }

    private Constraint l(Context context, AttributeSet attrs, boolean override) {
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, override ? R.styleable.ConstraintOverride : R.styleable.Constraint);
        t(context, constraint, obtainStyledAttributes, override);
        obtainStyledAttributes.recycle();
        return constraint;
    }

    private Constraint m(int id) {
        if (!this.f3515d.containsKey(Integer.valueOf(id))) {
            this.f3515d.put(Integer.valueOf(id), new Constraint());
        }
        return this.f3515d.get(Integer.valueOf(id));
    }

    static String n(int v3) {
        Field[] declaredFields;
        for (Field field : ConstraintSet.class.getDeclaredFields()) {
            if (field.getName().contains("_") && field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                try {
                    if (field.getInt(null) == v3) {
                        return field.getName();
                    }
                    continue;
                } catch (IllegalAccessException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return "UNKNOWN";
    }

    static String o(Context context, int resourceId, XmlPullParser pullParser) {
        return ".(" + Debug.getName(context, resourceId) + ".xml:" + pullParser.getLineNumber() + ") \"" + pullParser.getName() + a.f72569g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(TypedArray a4, int index, int def) {
        int resourceId = a4.getResourceId(index, def);
        return resourceId == -1 ? a4.getInt(index, -1) : resourceId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void q(Object data, TypedArray a4, int attr, int orientation) {
        if (data == null) {
            return;
        }
        int i2 = a4.peekValue(attr).type;
        if (i2 != 3) {
            int i4 = -2;
            boolean z3 = false;
            if (i2 != 5) {
                int i5 = a4.getInt(attr, 0);
                if (i5 != -4) {
                    i4 = (i5 == -3 || !(i5 == -2 || i5 == -1)) ? 0 : i5;
                } else {
                    z3 = true;
                }
            } else {
                i4 = a4.getDimensionPixelSize(attr, 0);
            }
            if (data instanceof ConstraintLayout.LayoutParams) {
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) data;
                if (orientation == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = i4;
                    layoutParams.constrainedWidth = z3;
                    return;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).height = i4;
                layoutParams.constrainedHeight = z3;
                return;
            } else if (data instanceof Layout) {
                Layout layout = (Layout) data;
                if (orientation == 0) {
                    layout.mWidth = i4;
                    layout.constrainedWidth = z3;
                    return;
                }
                layout.mHeight = i4;
                layout.constrainedHeight = z3;
                return;
            } else if (data instanceof Constraint.Delta) {
                Constraint.Delta delta = (Constraint.Delta) data;
                if (orientation == 0) {
                    delta.b(23, i4);
                    delta.d(80, z3);
                    return;
                }
                delta.b(21, i4);
                delta.d(81, z3);
                return;
            } else {
                return;
            }
        }
        r(data, a4.getString(attr), orientation);
    }

    static void r(Object data, String value, int orientation) {
        if (value == null) {
            return;
        }
        int indexOf = value.indexOf(61);
        int length = value.length();
        if (indexOf <= 0 || indexOf >= length - 1) {
            return;
        }
        String substring = value.substring(0, indexOf);
        String substring2 = value.substring(indexOf + 1);
        if (substring2.length() > 0) {
            String trim = substring.trim();
            String trim2 = substring2.trim();
            if (f3482l1.equalsIgnoreCase(trim)) {
                if (data instanceof ConstraintLayout.LayoutParams) {
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) data;
                    if (orientation == 0) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = 0;
                    }
                    s(layoutParams, trim2);
                    return;
                } else if (data instanceof Layout) {
                    ((Layout) data).dimensionRatio = trim2;
                    return;
                } else if (data instanceof Constraint.Delta) {
                    ((Constraint.Delta) data).c(5, trim2);
                    return;
                } else {
                    return;
                }
            }
            try {
                if (f3479k1.equalsIgnoreCase(trim)) {
                    float parseFloat = Float.parseFloat(trim2);
                    if (data instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) data;
                        if (orientation == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams2).width = 0;
                            layoutParams2.horizontalWeight = parseFloat;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams2).height = 0;
                            layoutParams2.verticalWeight = parseFloat;
                        }
                    } else if (data instanceof Layout) {
                        Layout layout = (Layout) data;
                        if (orientation == 0) {
                            layout.mWidth = 0;
                            layout.horizontalWeight = parseFloat;
                        } else {
                            layout.mHeight = 0;
                            layout.verticalWeight = parseFloat;
                        }
                    } else if (data instanceof Constraint.Delta) {
                        Constraint.Delta delta = (Constraint.Delta) data;
                        if (orientation == 0) {
                            delta.b(23, 0);
                            delta.a(39, parseFloat);
                        } else {
                            delta.b(21, 0);
                            delta.a(40, parseFloat);
                        }
                    }
                } else if (!f3485m1.equalsIgnoreCase(trim)) {
                } else {
                    float max = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(trim2)));
                    if (data instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) data;
                        if (orientation == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).width = 0;
                            layoutParams3.matchConstraintPercentWidth = max;
                            layoutParams3.matchConstraintDefaultWidth = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).height = 0;
                            layoutParams3.matchConstraintPercentHeight = max;
                            layoutParams3.matchConstraintDefaultHeight = 2;
                        }
                    } else if (data instanceof Layout) {
                        Layout layout2 = (Layout) data;
                        if (orientation == 0) {
                            layout2.mWidth = 0;
                            layout2.widthPercent = max;
                            layout2.widthDefault = 2;
                        } else {
                            layout2.mHeight = 0;
                            layout2.heightPercent = max;
                            layout2.heightDefault = 2;
                        }
                    } else if (data instanceof Constraint.Delta) {
                        Constraint.Delta delta2 = (Constraint.Delta) data;
                        if (orientation == 0) {
                            delta2.b(23, 0);
                            delta2.b(54, 2);
                        } else {
                            delta2.b(21, 0);
                            delta2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void s(ConstraintLayout.LayoutParams params, String value) {
        float f4 = Float.NaN;
        int i2 = -1;
        if (value != null) {
            int length = value.length();
            int indexOf = value.indexOf(44);
            int i4 = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = value.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i2 = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    i2 = 1;
                }
                i4 = indexOf + 1;
            }
            int indexOf2 = value.indexOf(58);
            try {
                if (indexOf2 >= 0 && indexOf2 < length - 1) {
                    String substring2 = value.substring(i4, indexOf2);
                    String substring3 = value.substring(indexOf2 + 1);
                    if (substring2.length() > 0 && substring3.length() > 0) {
                        float parseFloat = Float.parseFloat(substring2);
                        float parseFloat2 = Float.parseFloat(substring3);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i2 == 1) {
                                f4 = Math.abs(parseFloat2 / parseFloat);
                            } else {
                                f4 = Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                } else {
                    String substring4 = value.substring(i4);
                    if (substring4.length() > 0) {
                        f4 = Float.parseFloat(substring4);
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        params.dimensionRatio = value;
        params.f3402c = f4;
        params.f3403d = i2;
    }

    private void t(Context ctx, Constraint c4, TypedArray a4, boolean override) {
        if (override) {
            u(ctx, c4, a4);
            return;
        }
        int indexCount = a4.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = a4.getIndex(i2);
            if (index != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index && R.styleable.Constraint_android_layout_marginEnd != index) {
                c4.motion.mApply = true;
                c4.layout.mApply = true;
                c4.propertySet.mApply = true;
                c4.transform.mApply = true;
            }
            switch (f3486n.get(index)) {
                case 1:
                    Layout layout = c4.layout;
                    layout.baselineToBaseline = p(a4, index, layout.baselineToBaseline);
                    break;
                case 2:
                    Layout layout2 = c4.layout;
                    layout2.bottomMargin = a4.getDimensionPixelSize(index, layout2.bottomMargin);
                    break;
                case 3:
                    Layout layout3 = c4.layout;
                    layout3.bottomToBottom = p(a4, index, layout3.bottomToBottom);
                    break;
                case 4:
                    Layout layout4 = c4.layout;
                    layout4.bottomToTop = p(a4, index, layout4.bottomToTop);
                    break;
                case 5:
                    c4.layout.dimensionRatio = a4.getString(index);
                    break;
                case 6:
                    Layout layout5 = c4.layout;
                    layout5.editorAbsoluteX = a4.getDimensionPixelOffset(index, layout5.editorAbsoluteX);
                    break;
                case 7:
                    Layout layout6 = c4.layout;
                    layout6.editorAbsoluteY = a4.getDimensionPixelOffset(index, layout6.editorAbsoluteY);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        Layout layout7 = c4.layout;
                        layout7.endMargin = a4.getDimensionPixelSize(index, layout7.endMargin);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    Layout layout8 = c4.layout;
                    layout8.endToEnd = p(a4, index, layout8.endToEnd);
                    break;
                case 10:
                    Layout layout9 = c4.layout;
                    layout9.endToStart = p(a4, index, layout9.endToStart);
                    break;
                case 11:
                    Layout layout10 = c4.layout;
                    layout10.goneBottomMargin = a4.getDimensionPixelSize(index, layout10.goneBottomMargin);
                    break;
                case 12:
                    Layout layout11 = c4.layout;
                    layout11.goneEndMargin = a4.getDimensionPixelSize(index, layout11.goneEndMargin);
                    break;
                case 13:
                    Layout layout12 = c4.layout;
                    layout12.goneLeftMargin = a4.getDimensionPixelSize(index, layout12.goneLeftMargin);
                    break;
                case 14:
                    Layout layout13 = c4.layout;
                    layout13.goneRightMargin = a4.getDimensionPixelSize(index, layout13.goneRightMargin);
                    break;
                case 15:
                    Layout layout14 = c4.layout;
                    layout14.goneStartMargin = a4.getDimensionPixelSize(index, layout14.goneStartMargin);
                    break;
                case 16:
                    Layout layout15 = c4.layout;
                    layout15.goneTopMargin = a4.getDimensionPixelSize(index, layout15.goneTopMargin);
                    break;
                case 17:
                    Layout layout16 = c4.layout;
                    layout16.guideBegin = a4.getDimensionPixelOffset(index, layout16.guideBegin);
                    break;
                case 18:
                    Layout layout17 = c4.layout;
                    layout17.guideEnd = a4.getDimensionPixelOffset(index, layout17.guideEnd);
                    break;
                case 19:
                    Layout layout18 = c4.layout;
                    layout18.guidePercent = a4.getFloat(index, layout18.guidePercent);
                    break;
                case 20:
                    Layout layout19 = c4.layout;
                    layout19.horizontalBias = a4.getFloat(index, layout19.horizontalBias);
                    break;
                case 21:
                    Layout layout20 = c4.layout;
                    layout20.mHeight = a4.getLayoutDimension(index, layout20.mHeight);
                    break;
                case 22:
                    PropertySet propertySet = c4.propertySet;
                    propertySet.visibility = a4.getInt(index, propertySet.visibility);
                    PropertySet propertySet2 = c4.propertySet;
                    propertySet2.visibility = f3480l[propertySet2.visibility];
                    break;
                case 23:
                    Layout layout21 = c4.layout;
                    layout21.mWidth = a4.getLayoutDimension(index, layout21.mWidth);
                    break;
                case 24:
                    Layout layout22 = c4.layout;
                    layout22.leftMargin = a4.getDimensionPixelSize(index, layout22.leftMargin);
                    break;
                case 25:
                    Layout layout23 = c4.layout;
                    layout23.leftToLeft = p(a4, index, layout23.leftToLeft);
                    break;
                case 26:
                    Layout layout24 = c4.layout;
                    layout24.leftToRight = p(a4, index, layout24.leftToRight);
                    break;
                case 27:
                    Layout layout25 = c4.layout;
                    layout25.orientation = a4.getInt(index, layout25.orientation);
                    break;
                case 28:
                    Layout layout26 = c4.layout;
                    layout26.rightMargin = a4.getDimensionPixelSize(index, layout26.rightMargin);
                    break;
                case 29:
                    Layout layout27 = c4.layout;
                    layout27.rightToLeft = p(a4, index, layout27.rightToLeft);
                    break;
                case 30:
                    Layout layout28 = c4.layout;
                    layout28.rightToRight = p(a4, index, layout28.rightToRight);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        Layout layout29 = c4.layout;
                        layout29.startMargin = a4.getDimensionPixelSize(index, layout29.startMargin);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    Layout layout30 = c4.layout;
                    layout30.startToEnd = p(a4, index, layout30.startToEnd);
                    break;
                case 33:
                    Layout layout31 = c4.layout;
                    layout31.startToStart = p(a4, index, layout31.startToStart);
                    break;
                case 34:
                    Layout layout32 = c4.layout;
                    layout32.topMargin = a4.getDimensionPixelSize(index, layout32.topMargin);
                    break;
                case 35:
                    Layout layout33 = c4.layout;
                    layout33.topToBottom = p(a4, index, layout33.topToBottom);
                    break;
                case 36:
                    Layout layout34 = c4.layout;
                    layout34.topToTop = p(a4, index, layout34.topToTop);
                    break;
                case 37:
                    Layout layout35 = c4.layout;
                    layout35.verticalBias = a4.getFloat(index, layout35.verticalBias);
                    break;
                case 38:
                    c4.f3516a = a4.getResourceId(index, c4.f3516a);
                    break;
                case 39:
                    Layout layout36 = c4.layout;
                    layout36.horizontalWeight = a4.getFloat(index, layout36.horizontalWeight);
                    break;
                case 40:
                    Layout layout37 = c4.layout;
                    layout37.verticalWeight = a4.getFloat(index, layout37.verticalWeight);
                    break;
                case 41:
                    Layout layout38 = c4.layout;
                    layout38.horizontalChainStyle = a4.getInt(index, layout38.horizontalChainStyle);
                    break;
                case 42:
                    Layout layout39 = c4.layout;
                    layout39.verticalChainStyle = a4.getInt(index, layout39.verticalChainStyle);
                    break;
                case 43:
                    PropertySet propertySet3 = c4.propertySet;
                    propertySet3.alpha = a4.getFloat(index, propertySet3.alpha);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        Transform transform = c4.transform;
                        transform.applyElevation = true;
                        transform.elevation = a4.getDimension(index, transform.elevation);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    Transform transform2 = c4.transform;
                    transform2.rotationX = a4.getFloat(index, transform2.rotationX);
                    break;
                case 46:
                    Transform transform3 = c4.transform;
                    transform3.rotationY = a4.getFloat(index, transform3.rotationY);
                    break;
                case 47:
                    Transform transform4 = c4.transform;
                    transform4.scaleX = a4.getFloat(index, transform4.scaleX);
                    break;
                case 48:
                    Transform transform5 = c4.transform;
                    transform5.scaleY = a4.getFloat(index, transform5.scaleY);
                    break;
                case 49:
                    Transform transform6 = c4.transform;
                    transform6.transformPivotX = a4.getDimension(index, transform6.transformPivotX);
                    break;
                case 50:
                    Transform transform7 = c4.transform;
                    transform7.transformPivotY = a4.getDimension(index, transform7.transformPivotY);
                    break;
                case 51:
                    Transform transform8 = c4.transform;
                    transform8.translationX = a4.getDimension(index, transform8.translationX);
                    break;
                case 52:
                    Transform transform9 = c4.transform;
                    transform9.translationY = a4.getDimension(index, transform9.translationY);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        Transform transform10 = c4.transform;
                        transform10.translationZ = a4.getDimension(index, transform10.translationZ);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    Layout layout40 = c4.layout;
                    layout40.widthDefault = a4.getInt(index, layout40.widthDefault);
                    break;
                case 55:
                    Layout layout41 = c4.layout;
                    layout41.heightDefault = a4.getInt(index, layout41.heightDefault);
                    break;
                case 56:
                    Layout layout42 = c4.layout;
                    layout42.widthMax = a4.getDimensionPixelSize(index, layout42.widthMax);
                    break;
                case 57:
                    Layout layout43 = c4.layout;
                    layout43.heightMax = a4.getDimensionPixelSize(index, layout43.heightMax);
                    break;
                case 58:
                    Layout layout44 = c4.layout;
                    layout44.widthMin = a4.getDimensionPixelSize(index, layout44.widthMin);
                    break;
                case 59:
                    Layout layout45 = c4.layout;
                    layout45.heightMin = a4.getDimensionPixelSize(index, layout45.heightMin);
                    break;
                case 60:
                    Transform transform11 = c4.transform;
                    transform11.rotation = a4.getFloat(index, transform11.rotation);
                    break;
                case 61:
                    Layout layout46 = c4.layout;
                    layout46.circleConstraint = p(a4, index, layout46.circleConstraint);
                    break;
                case 62:
                    Layout layout47 = c4.layout;
                    layout47.circleRadius = a4.getDimensionPixelSize(index, layout47.circleRadius);
                    break;
                case 63:
                    Layout layout48 = c4.layout;
                    layout48.circleAngle = a4.getFloat(index, layout48.circleAngle);
                    break;
                case 64:
                    Motion motion = c4.motion;
                    motion.mAnimateRelativeTo = p(a4, index, motion.mAnimateRelativeTo);
                    break;
                case 65:
                    if (a4.peekValue(index).type == 3) {
                        c4.motion.mTransitionEasing = a4.getString(index);
                        break;
                    } else {
                        c4.motion.mTransitionEasing = Easing.NAMED_EASING[a4.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    c4.motion.mDrawPath = a4.getInt(index, 0);
                    break;
                case 67:
                    Motion motion2 = c4.motion;
                    motion2.mPathRotate = a4.getFloat(index, motion2.mPathRotate);
                    break;
                case 68:
                    PropertySet propertySet4 = c4.propertySet;
                    propertySet4.mProgress = a4.getFloat(index, propertySet4.mProgress);
                    break;
                case 69:
                    c4.layout.widthPercent = a4.getFloat(index, 1.0f);
                    break;
                case 70:
                    c4.layout.heightPercent = a4.getFloat(index, 1.0f);
                    break;
                case 71:
                    break;
                case 72:
                    Layout layout49 = c4.layout;
                    layout49.mBarrierDirection = a4.getInt(index, layout49.mBarrierDirection);
                    break;
                case 73:
                    Layout layout50 = c4.layout;
                    layout50.mBarrierMargin = a4.getDimensionPixelSize(index, layout50.mBarrierMargin);
                    break;
                case 74:
                    c4.layout.mReferenceIdString = a4.getString(index);
                    break;
                case 75:
                    Layout layout51 = c4.layout;
                    layout51.mBarrierAllowsGoneWidgets = a4.getBoolean(index, layout51.mBarrierAllowsGoneWidgets);
                    break;
                case 76:
                    Motion motion3 = c4.motion;
                    motion3.mPathMotionArc = a4.getInt(index, motion3.mPathMotionArc);
                    break;
                case 77:
                    c4.layout.mConstraintTag = a4.getString(index);
                    break;
                case 78:
                    PropertySet propertySet5 = c4.propertySet;
                    propertySet5.mVisibilityMode = a4.getInt(index, propertySet5.mVisibilityMode);
                    break;
                case 79:
                    Motion motion4 = c4.motion;
                    motion4.mMotionStagger = a4.getFloat(index, motion4.mMotionStagger);
                    break;
                case 80:
                    Layout layout52 = c4.layout;
                    layout52.constrainedWidth = a4.getBoolean(index, layout52.constrainedWidth);
                    break;
                case 81:
                    Layout layout53 = c4.layout;
                    layout53.constrainedHeight = a4.getBoolean(index, layout53.constrainedHeight);
                    break;
                case 82:
                    Motion motion5 = c4.motion;
                    motion5.mAnimateCircleAngleTo = a4.getInteger(index, motion5.mAnimateCircleAngleTo);
                    break;
                case 83:
                    Transform transform12 = c4.transform;
                    transform12.transformPivotTarget = p(a4, index, transform12.transformPivotTarget);
                    break;
                case 84:
                    Motion motion6 = c4.motion;
                    motion6.mQuantizeMotionSteps = a4.getInteger(index, motion6.mQuantizeMotionSteps);
                    break;
                case 85:
                    Motion motion7 = c4.motion;
                    motion7.mQuantizeMotionPhase = a4.getFloat(index, motion7.mQuantizeMotionPhase);
                    break;
                case 86:
                    int i4 = a4.peekValue(index).type;
                    if (i4 == 1) {
                        c4.motion.mQuantizeInterpolatorID = a4.getResourceId(index, -1);
                        Motion motion8 = c4.motion;
                        if (motion8.mQuantizeInterpolatorID != -1) {
                            motion8.mQuantizeInterpolatorType = -2;
                            break;
                        } else {
                            break;
                        }
                    } else if (i4 == 3) {
                        c4.motion.mQuantizeInterpolatorString = a4.getString(index);
                        if (c4.motion.mQuantizeInterpolatorString.indexOf(e.F0) > 0) {
                            c4.motion.mQuantizeInterpolatorID = a4.getResourceId(index, -1);
                            c4.motion.mQuantizeInterpolatorType = -2;
                            break;
                        } else {
                            c4.motion.mQuantizeInterpolatorType = -1;
                            break;
                        }
                    } else {
                        Motion motion9 = c4.motion;
                        motion9.mQuantizeInterpolatorType = a4.getInteger(index, motion9.mQuantizeInterpolatorID);
                        break;
                    }
                case 87:
                    StringBuilder sb = new StringBuilder();
                    sb.append("unused attribute 0x");
                    sb.append(Integer.toHexString(index));
                    sb.append("   ");
                    sb.append(f3486n.get(index));
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unknown attribute 0x");
                    sb2.append(Integer.toHexString(index));
                    sb2.append("   ");
                    sb2.append(f3486n.get(index));
                    break;
                case 91:
                    Layout layout54 = c4.layout;
                    layout54.baselineToTop = p(a4, index, layout54.baselineToTop);
                    break;
                case 92:
                    Layout layout55 = c4.layout;
                    layout55.baselineToBottom = p(a4, index, layout55.baselineToBottom);
                    break;
                case 93:
                    Layout layout56 = c4.layout;
                    layout56.baselineMargin = a4.getDimensionPixelSize(index, layout56.baselineMargin);
                    break;
                case 94:
                    Layout layout57 = c4.layout;
                    layout57.goneBaselineMargin = a4.getDimensionPixelSize(index, layout57.goneBaselineMargin);
                    break;
                case 95:
                    q(c4.layout, a4, index, 0);
                    break;
                case 96:
                    q(c4.layout, a4, index, 1);
                    break;
                case 97:
                    Layout layout58 = c4.layout;
                    layout58.mWrapBehavior = a4.getInt(index, layout58.mWrapBehavior);
                    break;
            }
        }
        Layout layout59 = c4.layout;
        if (layout59.mReferenceIdString != null) {
            layout59.mReferenceIds = null;
        }
    }

    private static void u(Context ctx, Constraint c4, TypedArray a4) {
        int indexCount = a4.getIndexCount();
        Constraint.Delta delta = new Constraint.Delta();
        c4.f3518c = delta;
        c4.motion.mApply = false;
        c4.layout.mApply = false;
        c4.propertySet.mApply = false;
        c4.transform.mApply = false;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = a4.getIndex(i2);
            switch (f3488o.get(index)) {
                case 2:
                    delta.b(2, a4.getDimensionPixelSize(index, c4.layout.bottomMargin));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unknown attribute 0x");
                    sb.append(Integer.toHexString(index));
                    sb.append("   ");
                    sb.append(f3486n.get(index));
                    break;
                case 5:
                    delta.c(5, a4.getString(index));
                    break;
                case 6:
                    delta.b(6, a4.getDimensionPixelOffset(index, c4.layout.editorAbsoluteX));
                    break;
                case 7:
                    delta.b(7, a4.getDimensionPixelOffset(index, c4.layout.editorAbsoluteY));
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        delta.b(8, a4.getDimensionPixelSize(index, c4.layout.endMargin));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    delta.b(11, a4.getDimensionPixelSize(index, c4.layout.goneBottomMargin));
                    break;
                case 12:
                    delta.b(12, a4.getDimensionPixelSize(index, c4.layout.goneEndMargin));
                    break;
                case 13:
                    delta.b(13, a4.getDimensionPixelSize(index, c4.layout.goneLeftMargin));
                    break;
                case 14:
                    delta.b(14, a4.getDimensionPixelSize(index, c4.layout.goneRightMargin));
                    break;
                case 15:
                    delta.b(15, a4.getDimensionPixelSize(index, c4.layout.goneStartMargin));
                    break;
                case 16:
                    delta.b(16, a4.getDimensionPixelSize(index, c4.layout.goneTopMargin));
                    break;
                case 17:
                    delta.b(17, a4.getDimensionPixelOffset(index, c4.layout.guideBegin));
                    break;
                case 18:
                    delta.b(18, a4.getDimensionPixelOffset(index, c4.layout.guideEnd));
                    break;
                case 19:
                    delta.a(19, a4.getFloat(index, c4.layout.guidePercent));
                    break;
                case 20:
                    delta.a(20, a4.getFloat(index, c4.layout.horizontalBias));
                    break;
                case 21:
                    delta.b(21, a4.getLayoutDimension(index, c4.layout.mHeight));
                    break;
                case 22:
                    delta.b(22, f3480l[a4.getInt(index, c4.propertySet.visibility)]);
                    break;
                case 23:
                    delta.b(23, a4.getLayoutDimension(index, c4.layout.mWidth));
                    break;
                case 24:
                    delta.b(24, a4.getDimensionPixelSize(index, c4.layout.leftMargin));
                    break;
                case 27:
                    delta.b(27, a4.getInt(index, c4.layout.orientation));
                    break;
                case 28:
                    delta.b(28, a4.getDimensionPixelSize(index, c4.layout.rightMargin));
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        delta.b(31, a4.getDimensionPixelSize(index, c4.layout.startMargin));
                        break;
                    } else {
                        break;
                    }
                case 34:
                    delta.b(34, a4.getDimensionPixelSize(index, c4.layout.topMargin));
                    break;
                case 37:
                    delta.a(37, a4.getFloat(index, c4.layout.verticalBias));
                    break;
                case 38:
                    int resourceId = a4.getResourceId(index, c4.f3516a);
                    c4.f3516a = resourceId;
                    delta.b(38, resourceId);
                    break;
                case 39:
                    delta.a(39, a4.getFloat(index, c4.layout.horizontalWeight));
                    break;
                case 40:
                    delta.a(40, a4.getFloat(index, c4.layout.verticalWeight));
                    break;
                case 41:
                    delta.b(41, a4.getInt(index, c4.layout.horizontalChainStyle));
                    break;
                case 42:
                    delta.b(42, a4.getInt(index, c4.layout.verticalChainStyle));
                    break;
                case 43:
                    delta.a(43, a4.getFloat(index, c4.propertySet.alpha));
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        delta.d(44, true);
                        delta.a(44, a4.getDimension(index, c4.transform.elevation));
                        break;
                    } else {
                        break;
                    }
                case 45:
                    delta.a(45, a4.getFloat(index, c4.transform.rotationX));
                    break;
                case 46:
                    delta.a(46, a4.getFloat(index, c4.transform.rotationY));
                    break;
                case 47:
                    delta.a(47, a4.getFloat(index, c4.transform.scaleX));
                    break;
                case 48:
                    delta.a(48, a4.getFloat(index, c4.transform.scaleY));
                    break;
                case 49:
                    delta.a(49, a4.getDimension(index, c4.transform.transformPivotX));
                    break;
                case 50:
                    delta.a(50, a4.getDimension(index, c4.transform.transformPivotY));
                    break;
                case 51:
                    delta.a(51, a4.getDimension(index, c4.transform.translationX));
                    break;
                case 52:
                    delta.a(52, a4.getDimension(index, c4.transform.translationY));
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        delta.a(53, a4.getDimension(index, c4.transform.translationZ));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    delta.b(54, a4.getInt(index, c4.layout.widthDefault));
                    break;
                case 55:
                    delta.b(55, a4.getInt(index, c4.layout.heightDefault));
                    break;
                case 56:
                    delta.b(56, a4.getDimensionPixelSize(index, c4.layout.widthMax));
                    break;
                case 57:
                    delta.b(57, a4.getDimensionPixelSize(index, c4.layout.heightMax));
                    break;
                case 58:
                    delta.b(58, a4.getDimensionPixelSize(index, c4.layout.widthMin));
                    break;
                case 59:
                    delta.b(59, a4.getDimensionPixelSize(index, c4.layout.heightMin));
                    break;
                case 60:
                    delta.a(60, a4.getFloat(index, c4.transform.rotation));
                    break;
                case 62:
                    delta.b(62, a4.getDimensionPixelSize(index, c4.layout.circleRadius));
                    break;
                case 63:
                    delta.a(63, a4.getFloat(index, c4.layout.circleAngle));
                    break;
                case 64:
                    delta.b(64, p(a4, index, c4.motion.mAnimateRelativeTo));
                    break;
                case 65:
                    if (a4.peekValue(index).type == 3) {
                        delta.c(65, a4.getString(index));
                        break;
                    } else {
                        delta.c(65, Easing.NAMED_EASING[a4.getInteger(index, 0)]);
                        break;
                    }
                case 66:
                    delta.b(66, a4.getInt(index, 0));
                    break;
                case 67:
                    delta.a(67, a4.getFloat(index, c4.motion.mPathRotate));
                    break;
                case 68:
                    delta.a(68, a4.getFloat(index, c4.propertySet.mProgress));
                    break;
                case 69:
                    delta.a(69, a4.getFloat(index, 1.0f));
                    break;
                case 70:
                    delta.a(70, a4.getFloat(index, 1.0f));
                    break;
                case 71:
                    break;
                case 72:
                    delta.b(72, a4.getInt(index, c4.layout.mBarrierDirection));
                    break;
                case 73:
                    delta.b(73, a4.getDimensionPixelSize(index, c4.layout.mBarrierMargin));
                    break;
                case 74:
                    delta.c(74, a4.getString(index));
                    break;
                case 75:
                    delta.d(75, a4.getBoolean(index, c4.layout.mBarrierAllowsGoneWidgets));
                    break;
                case 76:
                    delta.b(76, a4.getInt(index, c4.motion.mPathMotionArc));
                    break;
                case 77:
                    delta.c(77, a4.getString(index));
                    break;
                case 78:
                    delta.b(78, a4.getInt(index, c4.propertySet.mVisibilityMode));
                    break;
                case 79:
                    delta.a(79, a4.getFloat(index, c4.motion.mMotionStagger));
                    break;
                case 80:
                    delta.d(80, a4.getBoolean(index, c4.layout.constrainedWidth));
                    break;
                case 81:
                    delta.d(81, a4.getBoolean(index, c4.layout.constrainedHeight));
                    break;
                case 82:
                    delta.b(82, a4.getInteger(index, c4.motion.mAnimateCircleAngleTo));
                    break;
                case 83:
                    delta.b(83, p(a4, index, c4.transform.transformPivotTarget));
                    break;
                case 84:
                    delta.b(84, a4.getInteger(index, c4.motion.mQuantizeMotionSteps));
                    break;
                case 85:
                    delta.a(85, a4.getFloat(index, c4.motion.mQuantizeMotionPhase));
                    break;
                case 86:
                    int i4 = a4.peekValue(index).type;
                    if (i4 == 1) {
                        c4.motion.mQuantizeInterpolatorID = a4.getResourceId(index, -1);
                        delta.b(89, c4.motion.mQuantizeInterpolatorID);
                        Motion motion = c4.motion;
                        if (motion.mQuantizeInterpolatorID != -1) {
                            motion.mQuantizeInterpolatorType = -2;
                            delta.b(88, -2);
                            break;
                        } else {
                            break;
                        }
                    } else if (i4 == 3) {
                        c4.motion.mQuantizeInterpolatorString = a4.getString(index);
                        delta.c(90, c4.motion.mQuantizeInterpolatorString);
                        if (c4.motion.mQuantizeInterpolatorString.indexOf(e.F0) > 0) {
                            c4.motion.mQuantizeInterpolatorID = a4.getResourceId(index, -1);
                            delta.b(89, c4.motion.mQuantizeInterpolatorID);
                            c4.motion.mQuantizeInterpolatorType = -2;
                            delta.b(88, -2);
                            break;
                        } else {
                            c4.motion.mQuantizeInterpolatorType = -1;
                            delta.b(88, -1);
                            break;
                        }
                    } else {
                        Motion motion2 = c4.motion;
                        motion2.mQuantizeInterpolatorType = a4.getInteger(index, motion2.mQuantizeInterpolatorID);
                        delta.b(88, c4.motion.mQuantizeInterpolatorType);
                        break;
                    }
                case 87:
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("unused attribute 0x");
                    sb2.append(Integer.toHexString(index));
                    sb2.append("   ");
                    sb2.append(f3486n.get(index));
                    break;
                case 93:
                    delta.b(93, a4.getDimensionPixelSize(index, c4.layout.baselineMargin));
                    break;
                case 94:
                    delta.b(94, a4.getDimensionPixelSize(index, c4.layout.goneBaselineMargin));
                    break;
                case 95:
                    q(delta, a4, index, 0);
                    break;
                case 96:
                    q(delta, a4, index, 1);
                    break;
                case 97:
                    delta.b(97, a4.getInt(index, c4.layout.mWrapBehavior));
                    break;
                case 98:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId2 = a4.getResourceId(index, c4.f3516a);
                        c4.f3516a = resourceId2;
                        if (resourceId2 == -1) {
                            c4.f3517b = a4.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (a4.peekValue(index).type == 3) {
                        c4.f3517b = a4.getString(index);
                        break;
                    } else {
                        c4.f3516a = a4.getResourceId(index, c4.f3516a);
                        break;
                    }
                case 99:
                    delta.d(99, a4.getBoolean(index, c4.layout.guidelineUseRtl));
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void v(Constraint c4, int type, float value) {
        if (type == 19) {
            c4.layout.guidePercent = value;
        } else if (type == 20) {
            c4.layout.horizontalBias = value;
        } else if (type == 37) {
            c4.layout.verticalBias = value;
        } else if (type == 60) {
            c4.transform.rotation = value;
        } else if (type == 63) {
            c4.layout.circleAngle = value;
        } else if (type == 79) {
            c4.motion.mMotionStagger = value;
        } else if (type == 85) {
            c4.motion.mQuantizeMotionPhase = value;
        } else if (type == 39) {
            c4.layout.horizontalWeight = value;
        } else if (type != 40) {
            switch (type) {
                case 43:
                    c4.propertySet.alpha = value;
                    return;
                case 44:
                    Transform transform = c4.transform;
                    transform.elevation = value;
                    transform.applyElevation = true;
                    return;
                case 45:
                    c4.transform.rotationX = value;
                    return;
                case 46:
                    c4.transform.rotationY = value;
                    return;
                case 47:
                    c4.transform.scaleX = value;
                    return;
                case 48:
                    c4.transform.scaleY = value;
                    return;
                case 49:
                    c4.transform.transformPivotX = value;
                    return;
                case 50:
                    c4.transform.transformPivotY = value;
                    return;
                case 51:
                    c4.transform.translationX = value;
                    return;
                case 52:
                    c4.transform.translationY = value;
                    return;
                case 53:
                    c4.transform.translationZ = value;
                    return;
                default:
                    switch (type) {
                        case 67:
                            c4.motion.mPathRotate = value;
                            return;
                        case 68:
                            c4.propertySet.mProgress = value;
                            return;
                        case 69:
                            c4.layout.widthPercent = value;
                            return;
                        case 70:
                            c4.layout.heightPercent = value;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            c4.layout.verticalWeight = value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w(Constraint c4, int type, int value) {
        if (type == 6) {
            c4.layout.editorAbsoluteX = value;
        } else if (type == 7) {
            c4.layout.editorAbsoluteY = value;
        } else if (type == 8) {
            c4.layout.endMargin = value;
        } else if (type == 27) {
            c4.layout.orientation = value;
        } else if (type == 28) {
            c4.layout.rightMargin = value;
        } else if (type == 41) {
            c4.layout.horizontalChainStyle = value;
        } else if (type == 42) {
            c4.layout.verticalChainStyle = value;
        } else if (type == 61) {
            c4.layout.circleConstraint = value;
        } else if (type == 62) {
            c4.layout.circleRadius = value;
        } else if (type == 72) {
            c4.layout.mBarrierDirection = value;
        } else if (type == 73) {
            c4.layout.mBarrierMargin = value;
        } else if (type == 88) {
            c4.motion.mQuantizeInterpolatorType = value;
        } else if (type != 89) {
            switch (type) {
                case 2:
                    c4.layout.bottomMargin = value;
                    return;
                case 11:
                    c4.layout.goneBottomMargin = value;
                    return;
                case 12:
                    c4.layout.goneEndMargin = value;
                    return;
                case 13:
                    c4.layout.goneLeftMargin = value;
                    return;
                case 14:
                    c4.layout.goneRightMargin = value;
                    return;
                case 15:
                    c4.layout.goneStartMargin = value;
                    return;
                case 16:
                    c4.layout.goneTopMargin = value;
                    return;
                case 17:
                    c4.layout.guideBegin = value;
                    return;
                case 18:
                    c4.layout.guideEnd = value;
                    return;
                case 31:
                    c4.layout.startMargin = value;
                    return;
                case 34:
                    c4.layout.topMargin = value;
                    return;
                case 38:
                    c4.f3516a = value;
                    return;
                case 64:
                    c4.motion.mAnimateRelativeTo = value;
                    return;
                case 66:
                    c4.motion.mDrawPath = value;
                    return;
                case 76:
                    c4.motion.mPathMotionArc = value;
                    return;
                case 78:
                    c4.propertySet.mVisibilityMode = value;
                    return;
                case 93:
                    c4.layout.baselineMargin = value;
                    return;
                case 94:
                    c4.layout.goneBaselineMargin = value;
                    return;
                case 97:
                    c4.layout.mWrapBehavior = value;
                    return;
                default:
                    switch (type) {
                        case 21:
                            c4.layout.mHeight = value;
                            return;
                        case 22:
                            c4.propertySet.visibility = value;
                            return;
                        case 23:
                            c4.layout.mWidth = value;
                            return;
                        case 24:
                            c4.layout.leftMargin = value;
                            return;
                        default:
                            switch (type) {
                                case 54:
                                    c4.layout.widthDefault = value;
                                    return;
                                case 55:
                                    c4.layout.heightDefault = value;
                                    return;
                                case 56:
                                    c4.layout.widthMax = value;
                                    return;
                                case 57:
                                    c4.layout.heightMax = value;
                                    return;
                                case 58:
                                    c4.layout.widthMin = value;
                                    return;
                                case 59:
                                    c4.layout.heightMin = value;
                                    return;
                                default:
                                    switch (type) {
                                        case 82:
                                            c4.motion.mAnimateCircleAngleTo = value;
                                            return;
                                        case 83:
                                            c4.transform.transformPivotTarget = value;
                                            return;
                                        case 84:
                                            c4.motion.mQuantizeMotionSteps = value;
                                            return;
                                        default:
                                            return;
                                    }
                            }
                    }
            }
        } else {
            c4.motion.mQuantizeInterpolatorID = value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void x(Constraint c4, int type, String value) {
        if (type == 5) {
            c4.layout.dimensionRatio = value;
        } else if (type == 65) {
            c4.motion.mTransitionEasing = value;
        } else if (type == 74) {
            Layout layout = c4.layout;
            layout.mReferenceIdString = value;
            layout.mReferenceIds = null;
        } else if (type == 77) {
            c4.layout.mConstraintTag = value;
        } else if (type != 90) {
        } else {
            c4.motion.mQuantizeInterpolatorString = value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void y(Constraint c4, int type, boolean value) {
        if (type == 44) {
            c4.transform.applyElevation = value;
        } else if (type == 75) {
            c4.layout.mBarrierAllowsGoneWidgets = value;
        } else if (type == 80) {
            c4.layout.constrainedWidth = value;
        } else if (type != 81) {
        } else {
            c4.layout.constrainedHeight = value;
        }
    }

    private String z(int side) {
        switch (side) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public void addColorAttributes(String... attributeName) {
        h(ConstraintAttribute.AttributeType.COLOR_TYPE, attributeName);
    }

    public void addFloatAttributes(String... attributeName) {
        h(ConstraintAttribute.AttributeType.FLOAT_TYPE, attributeName);
    }

    public void addIntAttributes(String... attributeName) {
        h(ConstraintAttribute.AttributeType.INT_TYPE, attributeName);
    }

    public void addStringAttributes(String... attributeName) {
        h(ConstraintAttribute.AttributeType.STRING_TYPE, attributeName);
    }

    public void addToHorizontalChain(int viewId, int leftId, int rightId) {
        connect(viewId, 1, leftId, leftId == 0 ? 1 : 2, 0);
        connect(viewId, 2, rightId, rightId == 0 ? 2 : 1, 0);
        if (leftId != 0) {
            connect(leftId, 2, viewId, 1, 0);
        }
        if (rightId != 0) {
            connect(rightId, 1, viewId, 2, 0);
        }
    }

    public void addToHorizontalChainRTL(int viewId, int leftId, int rightId) {
        connect(viewId, 6, leftId, leftId == 0 ? 6 : 7, 0);
        connect(viewId, 7, rightId, rightId == 0 ? 7 : 6, 0);
        if (leftId != 0) {
            connect(leftId, 7, viewId, 6, 0);
        }
        if (rightId != 0) {
            connect(rightId, 6, viewId, 7, 0);
        }
    }

    public void addToVerticalChain(int viewId, int topId, int bottomId) {
        connect(viewId, 3, topId, topId == 0 ? 3 : 4, 0);
        connect(viewId, 4, bottomId, bottomId == 0 ? 4 : 3, 0);
        if (topId != 0) {
            connect(topId, 4, viewId, 3, 0);
        }
        if (bottomId != 0) {
            connect(bottomId, 3, viewId, 4, 0);
        }
    }

    public void applyCustomAttributes(ConstraintLayout constraintLayout) {
        Constraint constraint;
        int childCount = constraintLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!this.f3515d.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder();
                sb.append("id unknown ");
                sb.append(Debug.getName(childAt));
            } else if (this.f3514c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (this.f3515d.containsKey(Integer.valueOf(id)) && (constraint = this.f3515d.get(Integer.valueOf(id))) != null) {
                    ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                }
            }
        }
    }

    public void applyDeltaFrom(ConstraintSet cs) {
        for (Constraint constraint : cs.f3515d.values()) {
            if (constraint.f3518c != null) {
                if (constraint.f3517b != null) {
                    for (Integer num : this.f3515d.keySet()) {
                        Constraint constraint2 = getConstraint(num.intValue());
                        String str = constraint2.layout.mConstraintTag;
                        if (str != null && constraint.f3517b.matches(str)) {
                            constraint.f3518c.e(constraint2);
                            constraint2.mCustomConstraints.putAll((HashMap) constraint.mCustomConstraints.clone());
                        }
                    }
                } else {
                    constraint.f3518c.e(getConstraint(constraint.f3516a));
                }
            }
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        i(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void applyToHelper(ConstraintHelper helper, ConstraintWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        Constraint constraint;
        int id = helper.getId();
        if (this.f3515d.containsKey(Integer.valueOf(id)) && (constraint = this.f3515d.get(Integer.valueOf(id))) != null && (child instanceof HelperWidget)) {
            helper.loadParameters(constraint, (HelperWidget) child, layoutParams, mapIdToWidget);
        }
    }

    public void applyToLayoutParams(int id, ConstraintLayout.LayoutParams layoutParams) {
        Constraint constraint;
        if (!this.f3515d.containsKey(Integer.valueOf(id)) || (constraint = this.f3515d.get(Integer.valueOf(id))) == null) {
            return;
        }
        constraint.applyTo(layoutParams);
    }

    public void applyToWithoutCustom(ConstraintLayout constraintLayout) {
        i(constraintLayout, false);
        constraintLayout.setConstraintSet(null);
    }

    public void center(int centerID, int firstID, int firstSide, int firstMargin, int secondId, int secondSide, int secondMargin, float bias) {
        if (firstMargin < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (secondMargin < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (bias <= 0.0f || bias > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (firstSide == 1 || firstSide == 2) {
            connect(centerID, 1, firstID, firstSide, firstMargin);
            connect(centerID, 2, secondId, secondSide, secondMargin);
            Constraint constraint = this.f3515d.get(Integer.valueOf(centerID));
            if (constraint != null) {
                constraint.layout.horizontalBias = bias;
            }
        } else if (firstSide != 6 && firstSide != 7) {
            connect(centerID, 3, firstID, firstSide, firstMargin);
            connect(centerID, 4, secondId, secondSide, secondMargin);
            Constraint constraint2 = this.f3515d.get(Integer.valueOf(centerID));
            if (constraint2 != null) {
                constraint2.layout.verticalBias = bias;
            }
        } else {
            connect(centerID, 6, firstID, firstSide, firstMargin);
            connect(centerID, 7, secondId, secondSide, secondMargin);
            Constraint constraint3 = this.f3515d.get(Integer.valueOf(centerID));
            if (constraint3 != null) {
                constraint3.layout.horizontalBias = bias;
            }
        }
    }

    public void centerHorizontally(int centerID, int leftId, int leftSide, int leftMargin, int rightId, int rightSide, int rightMargin, float bias) {
        connect(centerID, 1, leftId, leftSide, leftMargin);
        connect(centerID, 2, rightId, rightSide, rightMargin);
        Constraint constraint = this.f3515d.get(Integer.valueOf(centerID));
        if (constraint != null) {
            constraint.layout.horizontalBias = bias;
        }
    }

    public void centerHorizontallyRtl(int centerID, int startId, int startSide, int startMargin, int endId, int endSide, int endMargin, float bias) {
        connect(centerID, 6, startId, startSide, startMargin);
        connect(centerID, 7, endId, endSide, endMargin);
        Constraint constraint = this.f3515d.get(Integer.valueOf(centerID));
        if (constraint != null) {
            constraint.layout.horizontalBias = bias;
        }
    }

    public void centerVertically(int centerID, int topId, int topSide, int topMargin, int bottomId, int bottomSide, int bottomMargin, float bias) {
        connect(centerID, 3, topId, topSide, topMargin);
        connect(centerID, 4, bottomId, bottomSide, bottomMargin);
        Constraint constraint = this.f3515d.get(Integer.valueOf(centerID));
        if (constraint != null) {
            constraint.layout.verticalBias = bias;
        }
    }

    public void clear(int viewId) {
        this.f3515d.remove(Integer.valueOf(viewId));
    }

    public void clone(Context context, int constraintLayoutId) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(constraintLayoutId, (ViewGroup) null));
    }

    public void connect(int startID, int startSide, int endID, int endSide, int margin) {
        if (!this.f3515d.containsKey(Integer.valueOf(startID))) {
            this.f3515d.put(Integer.valueOf(startID), new Constraint());
        }
        Constraint constraint = this.f3515d.get(Integer.valueOf(startID));
        if (constraint == null) {
            return;
        }
        switch (startSide) {
            case 1:
                if (endSide == 1) {
                    Layout layout = constraint.layout;
                    layout.leftToLeft = endID;
                    layout.leftToRight = -1;
                } else if (endSide == 2) {
                    Layout layout2 = constraint.layout;
                    layout2.leftToRight = endID;
                    layout2.leftToLeft = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + z(endSide) + " undefined");
                }
                constraint.layout.leftMargin = margin;
                return;
            case 2:
                if (endSide == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.rightToLeft = endID;
                    layout3.rightToRight = -1;
                } else if (endSide == 2) {
                    Layout layout4 = constraint.layout;
                    layout4.rightToRight = endID;
                    layout4.rightToLeft = -1;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
                constraint.layout.rightMargin = margin;
                return;
            case 3:
                if (endSide == 3) {
                    Layout layout5 = constraint.layout;
                    layout5.topToTop = endID;
                    layout5.topToBottom = -1;
                    layout5.baselineToBaseline = -1;
                    layout5.baselineToTop = -1;
                    layout5.baselineToBottom = -1;
                } else if (endSide == 4) {
                    Layout layout6 = constraint.layout;
                    layout6.topToBottom = endID;
                    layout6.topToTop = -1;
                    layout6.baselineToBaseline = -1;
                    layout6.baselineToTop = -1;
                    layout6.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
                constraint.layout.topMargin = margin;
                return;
            case 4:
                if (endSide == 4) {
                    Layout layout7 = constraint.layout;
                    layout7.bottomToBottom = endID;
                    layout7.bottomToTop = -1;
                    layout7.baselineToBaseline = -1;
                    layout7.baselineToTop = -1;
                    layout7.baselineToBottom = -1;
                } else if (endSide == 3) {
                    Layout layout8 = constraint.layout;
                    layout8.bottomToTop = endID;
                    layout8.bottomToBottom = -1;
                    layout8.baselineToBaseline = -1;
                    layout8.baselineToTop = -1;
                    layout8.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
                constraint.layout.bottomMargin = margin;
                return;
            case 5:
                if (endSide == 5) {
                    Layout layout9 = constraint.layout;
                    layout9.baselineToBaseline = endID;
                    layout9.bottomToBottom = -1;
                    layout9.bottomToTop = -1;
                    layout9.topToTop = -1;
                    layout9.topToBottom = -1;
                    return;
                } else if (endSide == 3) {
                    Layout layout10 = constraint.layout;
                    layout10.baselineToTop = endID;
                    layout10.bottomToBottom = -1;
                    layout10.bottomToTop = -1;
                    layout10.topToTop = -1;
                    layout10.topToBottom = -1;
                    return;
                } else if (endSide == 4) {
                    Layout layout11 = constraint.layout;
                    layout11.baselineToBottom = endID;
                    layout11.bottomToBottom = -1;
                    layout11.bottomToTop = -1;
                    layout11.topToTop = -1;
                    layout11.topToBottom = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            case 6:
                if (endSide == 6) {
                    Layout layout12 = constraint.layout;
                    layout12.startToStart = endID;
                    layout12.startToEnd = -1;
                } else if (endSide == 7) {
                    Layout layout13 = constraint.layout;
                    layout13.startToEnd = endID;
                    layout13.startToStart = -1;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
                constraint.layout.startMargin = margin;
                return;
            case 7:
                if (endSide == 7) {
                    Layout layout14 = constraint.layout;
                    layout14.endToEnd = endID;
                    layout14.endToStart = -1;
                } else if (endSide == 6) {
                    Layout layout15 = constraint.layout;
                    layout15.endToStart = endID;
                    layout15.endToEnd = -1;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
                constraint.layout.endMargin = margin;
                return;
            default:
                throw new IllegalArgumentException(z(startSide) + " to " + z(endSide) + " unknown");
        }
    }

    public void constrainCircle(int viewId, int id, int radius, float angle) {
        Layout layout = m(viewId).layout;
        layout.circleConstraint = id;
        layout.circleRadius = radius;
        layout.circleAngle = angle;
    }

    public void constrainDefaultHeight(int viewId, int height) {
        m(viewId).layout.heightDefault = height;
    }

    public void constrainDefaultWidth(int viewId, int width) {
        m(viewId).layout.widthDefault = width;
    }

    public void constrainHeight(int viewId, int height) {
        m(viewId).layout.mHeight = height;
    }

    public void constrainMaxHeight(int viewId, int height) {
        m(viewId).layout.heightMax = height;
    }

    public void constrainMaxWidth(int viewId, int width) {
        m(viewId).layout.widthMax = width;
    }

    public void constrainMinHeight(int viewId, int height) {
        m(viewId).layout.heightMin = height;
    }

    public void constrainMinWidth(int viewId, int width) {
        m(viewId).layout.widthMin = width;
    }

    public void constrainPercentHeight(int viewId, float percent) {
        m(viewId).layout.heightPercent = percent;
    }

    public void constrainPercentWidth(int viewId, float percent) {
        m(viewId).layout.widthPercent = percent;
    }

    public void constrainWidth(int viewId, int width) {
        m(viewId).layout.mWidth = width;
    }

    public void constrainedHeight(int viewId, boolean constrained) {
        m(viewId).layout.constrainedHeight = constrained;
    }

    public void constrainedWidth(int viewId, boolean constrained) {
        m(viewId).layout.constrainedWidth = constrained;
    }

    public void create(int guidelineID, int orientation) {
        Layout layout = m(guidelineID).layout;
        layout.mIsGuideline = true;
        layout.orientation = orientation;
    }

    public void createBarrier(int id, int direction, int margin, int... referenced) {
        Layout layout = m(id).layout;
        layout.mHelperType = 1;
        layout.mBarrierDirection = direction;
        layout.mBarrierMargin = margin;
        layout.mIsGuideline = false;
        layout.mReferenceIds = referenced;
    }

    public void createHorizontalChain(int leftId, int leftSide, int rightId, int rightSide, int[] chainIds, float[] weights, int style) {
        k(leftId, leftSide, rightId, rightSide, chainIds, weights, style, 1, 2);
    }

    public void createHorizontalChainRtl(int startId, int startSide, int endId, int endSide, int[] chainIds, float[] weights, int style) {
        k(startId, startSide, endId, endSide, chainIds, weights, style, 6, 7);
    }

    public void createVerticalChain(int topId, int topSide, int bottomId, int bottomSide, int[] chainIds, float[] weights, int style) {
        if (chainIds.length >= 2) {
            if (weights != null && weights.length != chainIds.length) {
                throw new IllegalArgumentException("must have 2 or more widgets in a chain");
            }
            if (weights != null) {
                m(chainIds[0]).layout.verticalWeight = weights[0];
            }
            m(chainIds[0]).layout.verticalChainStyle = style;
            connect(chainIds[0], 3, topId, topSide, 0);
            for (int i2 = 1; i2 < chainIds.length; i2++) {
                int i4 = chainIds[i2];
                int i5 = i2 - 1;
                connect(chainIds[i2], 3, chainIds[i5], 4, 0);
                connect(chainIds[i5], 4, chainIds[i2], 3, 0);
                if (weights != null) {
                    m(chainIds[i2]).layout.verticalWeight = weights[i2];
                }
            }
            connect(chainIds[chainIds.length - 1], 4, bottomId, bottomSide, 0);
            return;
        }
        throw new IllegalArgumentException("must have 2 or more widgets in a chain");
    }

    public void dump(MotionScene scene, int... ids) {
        HashSet hashSet;
        Integer[] numArr;
        Set<Integer> keySet = this.f3515d.keySet();
        if (ids.length != 0) {
            hashSet = new HashSet();
            for (int i2 : ids) {
                hashSet.add(Integer.valueOf(i2));
            }
        } else {
            hashSet = new HashSet(keySet);
        }
        System.out.println(hashSet.size() + " constraints");
        StringBuilder sb = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            Constraint constraint = this.f3515d.get(num);
            if (constraint != null) {
                sb.append("<Constraint id=");
                sb.append(num);
                sb.append(" \n");
                constraint.layout.dump(scene, sb);
                sb.append("/>\n");
            }
        }
        System.out.println(sb.toString());
    }

    public boolean getApplyElevation(int viewId) {
        return m(viewId).transform.applyElevation;
    }

    public Constraint getConstraint(int id) {
        if (this.f3515d.containsKey(Integer.valueOf(id))) {
            return this.f3515d.get(Integer.valueOf(id));
        }
        return null;
    }

    public HashMap<String, ConstraintAttribute> getCustomAttributeSet() {
        return this.f3513b;
    }

    public int getHeight(int viewId) {
        return m(viewId).layout.mHeight;
    }

    public int[] getKnownIds() {
        Integer[] numArr = (Integer[]) this.f3515d.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
        return iArr;
    }

    public Constraint getParameters(int mId) {
        return m(mId);
    }

    public int[] getReferencedIds(int id) {
        int[] iArr = m(id).layout.mReferenceIds;
        return iArr == null ? new int[0] : Arrays.copyOf(iArr, iArr.length);
    }

    public int getVisibility(int viewId) {
        return m(viewId).propertySet.visibility;
    }

    public int getVisibilityMode(int viewId) {
        return m(viewId).propertySet.mVisibilityMode;
    }

    public int getWidth(int viewId) {
        return m(viewId).layout.mWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(ConstraintLayout constraintLayout, boolean applyPostLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f3515d.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!this.f3515d.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder();
                sb.append("id unknown ");
                sb.append(Debug.getName(childAt));
            } else if (this.f3514c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (this.f3515d.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        Constraint constraint = this.f3515d.get(Integer.valueOf(id));
                        if (constraint != null) {
                            if (childAt instanceof Barrier) {
                                constraint.layout.mHelperType = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(constraint.layout.mBarrierDirection);
                                barrier.setMargin(constraint.layout.mBarrierMargin);
                                barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
                                Layout layout = constraint.layout;
                                int[] iArr = layout.mReferenceIds;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = layout.mReferenceIdString;
                                    if (str != null) {
                                        layout.mReferenceIds = j(barrier, str);
                                        barrier.setReferencedIds(constraint.layout.mReferenceIds);
                                    }
                                }
                            }
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.validate();
                            constraint.applyTo(layoutParams);
                            if (applyPostLayout) {
                                ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                            }
                            childAt.setLayoutParams(layoutParams);
                            PropertySet propertySet = constraint.propertySet;
                            if (propertySet.mVisibilityMode == 0) {
                                childAt.setVisibility(propertySet.visibility);
                            }
                            int i4 = Build.VERSION.SDK_INT;
                            if (i4 >= 17) {
                                childAt.setAlpha(constraint.propertySet.alpha);
                                childAt.setRotation(constraint.transform.rotation);
                                childAt.setRotationX(constraint.transform.rotationX);
                                childAt.setRotationY(constraint.transform.rotationY);
                                childAt.setScaleX(constraint.transform.scaleX);
                                childAt.setScaleY(constraint.transform.scaleY);
                                Transform transform = constraint.transform;
                                if (transform.transformPivotTarget != -1) {
                                    View findViewById = ((View) childAt.getParent()).findViewById(constraint.transform.transformPivotTarget);
                                    if (findViewById != null) {
                                        float top = (findViewById.getTop() + findViewById.getBottom()) / 2.0f;
                                        float left = (findViewById.getLeft() + findViewById.getRight()) / 2.0f;
                                        if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                            childAt.setPivotX(left - childAt.getLeft());
                                            childAt.setPivotY(top - childAt.getTop());
                                        }
                                    }
                                } else {
                                    if (!Float.isNaN(transform.transformPivotX)) {
                                        childAt.setPivotX(constraint.transform.transformPivotX);
                                    }
                                    if (!Float.isNaN(constraint.transform.transformPivotY)) {
                                        childAt.setPivotY(constraint.transform.transformPivotY);
                                    }
                                }
                                childAt.setTranslationX(constraint.transform.translationX);
                                childAt.setTranslationY(constraint.transform.translationY);
                                if (i4 >= 21) {
                                    childAt.setTranslationZ(constraint.transform.translationZ);
                                    Transform transform2 = constraint.transform;
                                    if (transform2.applyElevation) {
                                        childAt.setElevation(transform2.elevation);
                                    }
                                }
                            }
                        }
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("WARNING NO CONSTRAINTS for view ");
                        sb2.append(id);
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            Integer num = (Integer) it2.next();
            Constraint constraint2 = this.f3515d.get(num);
            if (constraint2 != null) {
                if (constraint2.layout.mHelperType == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    Layout layout2 = constraint2.layout;
                    int[] iArr2 = layout2.mReferenceIds;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = layout2.mReferenceIdString;
                        if (str2 != null) {
                            layout2.mReferenceIds = j(barrier2, str2);
                            barrier2.setReferencedIds(constraint2.layout.mReferenceIds);
                        }
                    }
                    barrier2.setType(constraint2.layout.mBarrierDirection);
                    barrier2.setMargin(constraint2.layout.mBarrierMargin);
                    ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    constraint2.applyTo(generateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, generateDefaultLayoutParams);
                }
                if (constraint2.layout.mIsGuideline) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    constraint2.applyTo(generateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                }
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt2 = constraintLayout.getChildAt(i5);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).f(constraintLayout);
            }
        }
    }

    public boolean isForceId() {
        return this.f3514c;
    }

    public void load(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                    continue;
                } else if (eventType != 2) {
                    continue;
                } else {
                    String name = xml.getName();
                    Constraint l4 = l(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        l4.layout.mIsGuideline = true;
                    }
                    this.f3515d.put(Integer.valueOf(l4.f3516a), l4);
                    continue;
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    public void parseColorAttributes(Constraint set, String attributes) {
        String[] split = attributes.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String[] split2 = split[i2].split(SimpleComparison.EQUAL_TO_OPERATION);
            if (split2.length == 2) {
                set.l(split2[0], Color.parseColor(split2[1]));
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(" Unable to parse ");
                sb.append(split[i2]);
            }
        }
    }

    public void parseFloatAttributes(Constraint set, String attributes) {
        String[] split = attributes.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String[] split2 = split[i2].split(SimpleComparison.EQUAL_TO_OPERATION);
            if (split2.length == 2) {
                set.m(split2[0], Float.parseFloat(split2[1]));
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(" Unable to parse ");
                sb.append(split[i2]);
            }
        }
    }

    public void parseIntAttributes(Constraint set, String attributes) {
        String[] split = attributes.split(",");
        for (int i2 = 0; i2 < split.length; i2++) {
            String[] split2 = split[i2].split(SimpleComparison.EQUAL_TO_OPERATION);
            if (split2.length == 2) {
                set.m(split2[0], Integer.decode(split2[1]).intValue());
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(" Unable to parse ");
                sb.append(split[i2]);
            }
        }
    }

    public void parseStringAttributes(Constraint set, String attributes) {
        String[] A2 = A(attributes);
        for (int i2 = 0; i2 < A2.length; i2++) {
            String[] split = A2[i2].split(SimpleComparison.EQUAL_TO_OPERATION);
            StringBuilder sb = new StringBuilder();
            sb.append(" Unable to parse ");
            sb.append(A2[i2]);
            set.o(split[0], split[1]);
        }
    }

    public void readFallback(ConstraintSet set) {
        for (Integer num : set.f3515d.keySet()) {
            int intValue = num.intValue();
            Constraint constraint = set.f3515d.get(num);
            if (!this.f3515d.containsKey(Integer.valueOf(intValue))) {
                this.f3515d.put(Integer.valueOf(intValue), new Constraint());
            }
            Constraint constraint2 = this.f3515d.get(Integer.valueOf(intValue));
            if (constraint2 != null) {
                Layout layout = constraint2.layout;
                if (!layout.mApply) {
                    layout.copyFrom(constraint.layout);
                }
                PropertySet propertySet = constraint2.propertySet;
                if (!propertySet.mApply) {
                    propertySet.copyFrom(constraint.propertySet);
                }
                Transform transform = constraint2.transform;
                if (!transform.mApply) {
                    transform.copyFrom(constraint.transform);
                }
                Motion motion = constraint2.motion;
                if (!motion.mApply) {
                    motion.copyFrom(constraint.motion);
                }
                for (String str : constraint.mCustomConstraints.keySet()) {
                    if (!constraint2.mCustomConstraints.containsKey(str)) {
                        constraint2.mCustomConstraints.put(str, constraint.mCustomConstraints.get(str));
                    }
                }
            }
        }
    }

    public void removeAttribute(String attributeName) {
        this.f3513b.remove(attributeName);
    }

    public void removeFromHorizontalChain(int viewId) {
        Constraint constraint;
        if (!this.f3515d.containsKey(Integer.valueOf(viewId)) || (constraint = this.f3515d.get(Integer.valueOf(viewId))) == null) {
            return;
        }
        Layout layout = constraint.layout;
        int i2 = layout.leftToRight;
        int i4 = layout.rightToLeft;
        if (i2 == -1 && i4 == -1) {
            int i5 = layout.startToEnd;
            int i6 = layout.endToStart;
            if (i5 != -1 || i6 != -1) {
                if (i5 != -1 && i6 != -1) {
                    connect(i5, 7, i6, 6, 0);
                    connect(i6, 6, i2, 7, 0);
                } else if (i6 != -1) {
                    int i7 = layout.rightToRight;
                    if (i7 != -1) {
                        connect(i2, 7, i7, 7, 0);
                    } else {
                        int i8 = layout.leftToLeft;
                        if (i8 != -1) {
                            connect(i6, 6, i8, 6, 0);
                        }
                    }
                }
            }
            clear(viewId, 6);
            clear(viewId, 7);
            return;
        }
        if (i2 != -1 && i4 != -1) {
            connect(i2, 2, i4, 1, 0);
            connect(i4, 1, i2, 2, 0);
        } else {
            int i9 = layout.rightToRight;
            if (i9 != -1) {
                connect(i2, 2, i9, 2, 0);
            } else {
                int i10 = layout.leftToLeft;
                if (i10 != -1) {
                    connect(i4, 1, i10, 1, 0);
                }
            }
        }
        clear(viewId, 1);
        clear(viewId, 2);
    }

    public void removeFromVerticalChain(int viewId) {
        if (this.f3515d.containsKey(Integer.valueOf(viewId))) {
            Constraint constraint = this.f3515d.get(Integer.valueOf(viewId));
            if (constraint == null) {
                return;
            }
            Layout layout = constraint.layout;
            int i2 = layout.topToBottom;
            int i4 = layout.bottomToTop;
            if (i2 != -1 || i4 != -1) {
                if (i2 != -1 && i4 != -1) {
                    connect(i2, 4, i4, 3, 0);
                    connect(i4, 3, i2, 4, 0);
                } else {
                    int i5 = layout.bottomToBottom;
                    if (i5 != -1) {
                        connect(i2, 4, i5, 4, 0);
                    } else {
                        int i6 = layout.topToTop;
                        if (i6 != -1) {
                            connect(i4, 3, i6, 3, 0);
                        }
                    }
                }
            }
        }
        clear(viewId, 3);
        clear(viewId, 4);
    }

    public void setAlpha(int viewId, float alpha) {
        m(viewId).propertySet.alpha = alpha;
    }

    public void setApplyElevation(int viewId, boolean apply) {
        if (Build.VERSION.SDK_INT >= 21) {
            m(viewId).transform.applyElevation = apply;
        }
    }

    public void setBarrierType(int id, int type) {
        m(id).layout.mHelperType = type;
    }

    public void setColorValue(int viewId, String attributeName, int value) {
        m(viewId).l(attributeName, value);
    }

    public void setDimensionRatio(int viewId, String ratio) {
        m(viewId).layout.dimensionRatio = ratio;
    }

    public void setEditorAbsoluteX(int viewId, int position) {
        m(viewId).layout.editorAbsoluteX = position;
    }

    public void setEditorAbsoluteY(int viewId, int position) {
        m(viewId).layout.editorAbsoluteY = position;
    }

    public void setElevation(int viewId, float elevation) {
        if (Build.VERSION.SDK_INT >= 21) {
            m(viewId).transform.elevation = elevation;
            m(viewId).transform.applyElevation = true;
        }
    }

    public void setFloatValue(int viewId, String attributeName, float value) {
        m(viewId).m(attributeName, value);
    }

    public void setForceId(boolean forceId) {
        this.f3514c = forceId;
    }

    public void setGoneMargin(int viewId, int anchor, int value) {
        Constraint m4 = m(viewId);
        switch (anchor) {
            case 1:
                m4.layout.goneLeftMargin = value;
                return;
            case 2:
                m4.layout.goneRightMargin = value;
                return;
            case 3:
                m4.layout.goneTopMargin = value;
                return;
            case 4:
                m4.layout.goneBottomMargin = value;
                return;
            case 5:
                m4.layout.goneBaselineMargin = value;
                return;
            case 6:
                m4.layout.goneStartMargin = value;
                return;
            case 7:
                m4.layout.goneEndMargin = value;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setGuidelineBegin(int guidelineID, int margin) {
        m(guidelineID).layout.guideBegin = margin;
        m(guidelineID).layout.guideEnd = -1;
        m(guidelineID).layout.guidePercent = -1.0f;
    }

    public void setGuidelineEnd(int guidelineID, int margin) {
        m(guidelineID).layout.guideEnd = margin;
        m(guidelineID).layout.guideBegin = -1;
        m(guidelineID).layout.guidePercent = -1.0f;
    }

    public void setGuidelinePercent(int guidelineID, float ratio) {
        m(guidelineID).layout.guidePercent = ratio;
        m(guidelineID).layout.guideEnd = -1;
        m(guidelineID).layout.guideBegin = -1;
    }

    public void setHorizontalBias(int viewId, float bias) {
        m(viewId).layout.horizontalBias = bias;
    }

    public void setHorizontalChainStyle(int viewId, int chainStyle) {
        m(viewId).layout.horizontalChainStyle = chainStyle;
    }

    public void setHorizontalWeight(int viewId, float weight) {
        m(viewId).layout.horizontalWeight = weight;
    }

    public void setIntValue(int viewId, String attributeName, int value) {
        m(viewId).n(attributeName, value);
    }

    public void setLayoutWrapBehavior(int viewId, int behavior) {
        if (behavior < 0 || behavior > 3) {
            return;
        }
        m(viewId).layout.mWrapBehavior = behavior;
    }

    public void setMargin(int viewId, int anchor, int value) {
        Constraint m4 = m(viewId);
        switch (anchor) {
            case 1:
                m4.layout.leftMargin = value;
                return;
            case 2:
                m4.layout.rightMargin = value;
                return;
            case 3:
                m4.layout.topMargin = value;
                return;
            case 4:
                m4.layout.bottomMargin = value;
                return;
            case 5:
                m4.layout.baselineMargin = value;
                return;
            case 6:
                m4.layout.startMargin = value;
                return;
            case 7:
                m4.layout.endMargin = value;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setReferencedIds(int id, int... referenced) {
        m(id).layout.mReferenceIds = referenced;
    }

    public void setRotation(int viewId, float rotation) {
        m(viewId).transform.rotation = rotation;
    }

    public void setRotationX(int viewId, float rotationX) {
        m(viewId).transform.rotationX = rotationX;
    }

    public void setRotationY(int viewId, float rotationY) {
        m(viewId).transform.rotationY = rotationY;
    }

    public void setScaleX(int viewId, float scaleX) {
        m(viewId).transform.scaleX = scaleX;
    }

    public void setScaleY(int viewId, float scaleY) {
        m(viewId).transform.scaleY = scaleY;
    }

    public void setStringValue(int viewId, String attributeName, String value) {
        m(viewId).o(attributeName, value);
    }

    public void setTransformPivot(int viewId, float transformPivotX, float transformPivotY) {
        Transform transform = m(viewId).transform;
        transform.transformPivotY = transformPivotY;
        transform.transformPivotX = transformPivotX;
    }

    public void setTransformPivotX(int viewId, float transformPivotX) {
        m(viewId).transform.transformPivotX = transformPivotX;
    }

    public void setTransformPivotY(int viewId, float transformPivotY) {
        m(viewId).transform.transformPivotY = transformPivotY;
    }

    public void setTranslation(int viewId, float translationX, float translationY) {
        Transform transform = m(viewId).transform;
        transform.translationX = translationX;
        transform.translationY = translationY;
    }

    public void setTranslationX(int viewId, float translationX) {
        m(viewId).transform.translationX = translationX;
    }

    public void setTranslationY(int viewId, float translationY) {
        m(viewId).transform.translationY = translationY;
    }

    public void setTranslationZ(int viewId, float translationZ) {
        if (Build.VERSION.SDK_INT >= 21) {
            m(viewId).transform.translationZ = translationZ;
        }
    }

    public void setValidateOnParse(boolean validate) {
        this.f3512a = validate;
    }

    public void setVerticalBias(int viewId, float bias) {
        m(viewId).layout.verticalBias = bias;
    }

    public void setVerticalChainStyle(int viewId, int chainStyle) {
        m(viewId).layout.verticalChainStyle = chainStyle;
    }

    public void setVerticalWeight(int viewId, float weight) {
        m(viewId).layout.verticalWeight = weight;
    }

    public void setVisibility(int viewId, int visibility) {
        m(viewId).propertySet.visibility = visibility;
    }

    public void setVisibilityMode(int viewId, int visibilityMode) {
        m(viewId).propertySet.mVisibilityMode = visibilityMode;
    }

    public void writeState(Writer writer, ConstraintLayout layout, int flags) throws IOException {
        writer.write("\n---------------------------------------------\n");
        if ((flags & 1) == 1) {
            new WriteXmlEngine(writer, layout, flags).i();
        } else {
            new WriteJsonEngine(writer, layout, flags).g();
        }
        writer.write("\n---------------------------------------------\n");
    }

    public void clear(int viewId, int anchor) {
        Constraint constraint;
        if (!this.f3515d.containsKey(Integer.valueOf(viewId)) || (constraint = this.f3515d.get(Integer.valueOf(viewId))) == null) {
            return;
        }
        switch (anchor) {
            case 1:
                Layout layout = constraint.layout;
                layout.leftToRight = -1;
                layout.leftToLeft = -1;
                layout.leftMargin = -1;
                layout.goneLeftMargin = Integer.MIN_VALUE;
                return;
            case 2:
                Layout layout2 = constraint.layout;
                layout2.rightToRight = -1;
                layout2.rightToLeft = -1;
                layout2.rightMargin = -1;
                layout2.goneRightMargin = Integer.MIN_VALUE;
                return;
            case 3:
                Layout layout3 = constraint.layout;
                layout3.topToBottom = -1;
                layout3.topToTop = -1;
                layout3.topMargin = 0;
                layout3.goneTopMargin = Integer.MIN_VALUE;
                return;
            case 4:
                Layout layout4 = constraint.layout;
                layout4.bottomToTop = -1;
                layout4.bottomToBottom = -1;
                layout4.bottomMargin = 0;
                layout4.goneBottomMargin = Integer.MIN_VALUE;
                return;
            case 5:
                Layout layout5 = constraint.layout;
                layout5.baselineToBaseline = -1;
                layout5.baselineToTop = -1;
                layout5.baselineToBottom = -1;
                layout5.baselineMargin = 0;
                layout5.goneBaselineMargin = Integer.MIN_VALUE;
                return;
            case 6:
                Layout layout6 = constraint.layout;
                layout6.startToEnd = -1;
                layout6.startToStart = -1;
                layout6.startMargin = 0;
                layout6.goneStartMargin = Integer.MIN_VALUE;
                return;
            case 7:
                Layout layout7 = constraint.layout;
                layout7.endToStart = -1;
                layout7.endToEnd = -1;
                layout7.endMargin = 0;
                layout7.goneEndMargin = Integer.MIN_VALUE;
                return;
            case 8:
                Layout layout8 = constraint.layout;
                layout8.circleAngle = -1.0f;
                layout8.circleRadius = -1;
                layout8.circleConstraint = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void clone(ConstraintSet set) {
        this.f3515d.clear();
        for (Integer num : set.f3515d.keySet()) {
            Constraint constraint = set.f3515d.get(num);
            if (constraint != null) {
                this.f3515d.put(num, constraint.m4clone());
            }
        }
    }

    public void centerHorizontally(int viewId, int toView) {
        if (toView == 0) {
            center(viewId, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(viewId, toView, 2, 0, toView, 1, 0, 0.5f);
        }
    }

    public void centerHorizontallyRtl(int viewId, int toView) {
        if (toView == 0) {
            center(viewId, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(viewId, toView, 7, 0, toView, 6, 0, 0.5f);
        }
    }

    public void centerVertically(int viewId, int toView) {
        if (toView == 0) {
            center(viewId, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(viewId, toView, 4, 0, toView, 3, 0, 0.5f);
        }
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f3515d.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f3514c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f3515d.containsKey(Integer.valueOf(id))) {
                this.f3515d.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.f3515d.get(Integer.valueOf(id));
            if (constraint != null) {
                constraint.mCustomConstraints = ConstraintAttribute.extractAttributes(this.f3513b, childAt);
                constraint.h(id, layoutParams);
                constraint.propertySet.visibility = childAt.getVisibility();
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 17) {
                    constraint.propertySet.alpha = childAt.getAlpha();
                    constraint.transform.rotation = childAt.getRotation();
                    constraint.transform.rotationX = childAt.getRotationX();
                    constraint.transform.rotationY = childAt.getRotationY();
                    constraint.transform.scaleX = childAt.getScaleX();
                    constraint.transform.scaleY = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        Transform transform = constraint.transform;
                        transform.transformPivotX = pivotX;
                        transform.transformPivotY = pivotY;
                    }
                    constraint.transform.translationX = childAt.getTranslationX();
                    constraint.transform.translationY = childAt.getTranslationY();
                    if (i4 >= 21) {
                        constraint.transform.translationZ = childAt.getTranslationZ();
                        Transform transform2 = constraint.transform;
                        if (transform2.applyElevation) {
                            transform2.elevation = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                    constraint.layout.mReferenceIds = barrier.getReferencedIds();
                    constraint.layout.mBarrierDirection = barrier.getType();
                    constraint.layout.mBarrierMargin = barrier.getMargin();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x01cb, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public void readFallback(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f3514c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f3515d.containsKey(Integer.valueOf(id))) {
                this.f3515d.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.f3515d.get(Integer.valueOf(id));
            if (constraint != null) {
                if (!constraint.layout.mApply) {
                    constraint.h(id, layoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        constraint.layout.mReferenceIds = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                            constraint.layout.mBarrierDirection = barrier.getType();
                            constraint.layout.mBarrierMargin = barrier.getMargin();
                        }
                    }
                    constraint.layout.mApply = true;
                }
                PropertySet propertySet = constraint.propertySet;
                if (!propertySet.mApply) {
                    propertySet.visibility = childAt.getVisibility();
                    constraint.propertySet.alpha = childAt.getAlpha();
                    constraint.propertySet.mApply = true;
                }
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 17) {
                    Transform transform = constraint.transform;
                    if (!transform.mApply) {
                        transform.mApply = true;
                        transform.rotation = childAt.getRotation();
                        constraint.transform.rotationX = childAt.getRotationX();
                        constraint.transform.rotationY = childAt.getRotationY();
                        constraint.transform.scaleX = childAt.getScaleX();
                        constraint.transform.scaleY = childAt.getScaleY();
                        float pivotX = childAt.getPivotX();
                        float pivotY = childAt.getPivotY();
                        if (pivotX != 0.0d || pivotY != 0.0d) {
                            Transform transform2 = constraint.transform;
                            transform2.transformPivotX = pivotX;
                            transform2.transformPivotY = pivotY;
                        }
                        constraint.transform.translationX = childAt.getTranslationX();
                        constraint.transform.translationY = childAt.getTranslationY();
                        if (i4 >= 21) {
                            constraint.transform.translationZ = childAt.getTranslationZ();
                            Transform transform3 = constraint.transform;
                            if (transform3.applyElevation) {
                                transform3.elevation = childAt.getElevation();
                            }
                        }
                    }
                }
            }
        }
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f3515d.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraints.getChildAt(i2);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f3514c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f3515d.containsKey(Integer.valueOf(id))) {
                this.f3515d.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.f3515d.get(Integer.valueOf(id));
            if (constraint != null) {
                if (childAt instanceof ConstraintHelper) {
                    constraint.j((ConstraintHelper) childAt, id, layoutParams);
                }
                constraint.i(id, layoutParams);
            }
        }
    }

    public void connect(int startID, int startSide, int endID, int endSide) {
        if (!this.f3515d.containsKey(Integer.valueOf(startID))) {
            this.f3515d.put(Integer.valueOf(startID), new Constraint());
        }
        Constraint constraint = this.f3515d.get(Integer.valueOf(startID));
        if (constraint == null) {
            return;
        }
        switch (startSide) {
            case 1:
                if (endSide == 1) {
                    Layout layout = constraint.layout;
                    layout.leftToLeft = endID;
                    layout.leftToRight = -1;
                    return;
                } else if (endSide == 2) {
                    Layout layout2 = constraint.layout;
                    layout2.leftToRight = endID;
                    layout2.leftToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + z(endSide) + " undefined");
                }
            case 2:
                if (endSide == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.rightToLeft = endID;
                    layout3.rightToRight = -1;
                    return;
                } else if (endSide == 2) {
                    Layout layout4 = constraint.layout;
                    layout4.rightToRight = endID;
                    layout4.rightToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            case 3:
                if (endSide == 3) {
                    Layout layout5 = constraint.layout;
                    layout5.topToTop = endID;
                    layout5.topToBottom = -1;
                    layout5.baselineToBaseline = -1;
                    layout5.baselineToTop = -1;
                    layout5.baselineToBottom = -1;
                    return;
                } else if (endSide == 4) {
                    Layout layout6 = constraint.layout;
                    layout6.topToBottom = endID;
                    layout6.topToTop = -1;
                    layout6.baselineToBaseline = -1;
                    layout6.baselineToTop = -1;
                    layout6.baselineToBottom = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            case 4:
                if (endSide == 4) {
                    Layout layout7 = constraint.layout;
                    layout7.bottomToBottom = endID;
                    layout7.bottomToTop = -1;
                    layout7.baselineToBaseline = -1;
                    layout7.baselineToTop = -1;
                    layout7.baselineToBottom = -1;
                    return;
                } else if (endSide == 3) {
                    Layout layout8 = constraint.layout;
                    layout8.bottomToTop = endID;
                    layout8.bottomToBottom = -1;
                    layout8.baselineToBaseline = -1;
                    layout8.baselineToTop = -1;
                    layout8.baselineToBottom = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            case 5:
                if (endSide == 5) {
                    Layout layout9 = constraint.layout;
                    layout9.baselineToBaseline = endID;
                    layout9.bottomToBottom = -1;
                    layout9.bottomToTop = -1;
                    layout9.topToTop = -1;
                    layout9.topToBottom = -1;
                    return;
                } else if (endSide == 3) {
                    Layout layout10 = constraint.layout;
                    layout10.baselineToTop = endID;
                    layout10.bottomToBottom = -1;
                    layout10.bottomToTop = -1;
                    layout10.topToTop = -1;
                    layout10.topToBottom = -1;
                    return;
                } else if (endSide == 4) {
                    Layout layout11 = constraint.layout;
                    layout11.baselineToBottom = endID;
                    layout11.bottomToBottom = -1;
                    layout11.bottomToTop = -1;
                    layout11.topToTop = -1;
                    layout11.topToBottom = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            case 6:
                if (endSide == 6) {
                    Layout layout12 = constraint.layout;
                    layout12.startToStart = endID;
                    layout12.startToEnd = -1;
                    return;
                } else if (endSide == 7) {
                    Layout layout13 = constraint.layout;
                    layout13.startToEnd = endID;
                    layout13.startToStart = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            case 7:
                if (endSide == 7) {
                    Layout layout14 = constraint.layout;
                    layout14.endToEnd = endID;
                    layout14.endToStart = -1;
                    return;
                } else if (endSide == 6) {
                    Layout layout15 = constraint.layout;
                    layout15.endToStart = endID;
                    layout15.endToEnd = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + z(endSide) + " undefined");
                }
            default:
                throw new IllegalArgumentException(z(startSide) + " to " + z(endSide) + " unknown");
        }
    }
}
