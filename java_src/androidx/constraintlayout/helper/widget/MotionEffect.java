package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = "FadeMove";
    public static final int WEST = 3;

    /* renamed from: v  reason: collision with root package name */
    private static final int f2676v = -1;

    /* renamed from: n  reason: collision with root package name */
    private float f2677n;

    /* renamed from: o  reason: collision with root package name */
    private int f2678o;

    /* renamed from: p  reason: collision with root package name */
    private int f2679p;

    /* renamed from: q  reason: collision with root package name */
    private int f2680q;

    /* renamed from: r  reason: collision with root package name */
    private int f2681r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f2682s;

    /* renamed from: t  reason: collision with root package name */
    private int f2683t;

    /* renamed from: u  reason: collision with root package name */
    private int f2684u;

    public MotionEffect(Context context) {
        super(context);
        this.f2677n = 0.1f;
        this.f2678o = 49;
        this.f2679p = 50;
        this.f2680q = 0;
        this.f2681r = 0;
        this.f2682s = true;
        this.f2683t = -1;
        this.f2684u = -1;
    }

    private void l(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MotionEffect);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.MotionEffect_motionEffect_start) {
                    int i4 = obtainStyledAttributes.getInt(index, this.f2678o);
                    this.f2678o = i4;
                    this.f2678o = Math.max(Math.min(i4, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_end) {
                    int i5 = obtainStyledAttributes.getInt(index, this.f2679p);
                    this.f2679p = i5;
                    this.f2679p = Math.max(Math.min(i5, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationX) {
                    this.f2680q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2680q);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationY) {
                    this.f2681r = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2681r);
                } else if (index == R.styleable.MotionEffect_motionEffect_alpha) {
                    this.f2677n = obtainStyledAttributes.getFloat(index, this.f2677n);
                } else if (index == R.styleable.MotionEffect_motionEffect_move) {
                    this.f2684u = obtainStyledAttributes.getInt(index, this.f2684u);
                } else if (index == R.styleable.MotionEffect_motionEffect_strict) {
                    this.f2682s = obtainStyledAttributes.getBoolean(index, this.f2682s);
                } else if (index == R.styleable.MotionEffect_motionEffect_viewTransition) {
                    this.f2683t = obtainStyledAttributes.getResourceId(index, this.f2683t);
                }
            }
            int i6 = this.f2678o;
            int i7 = this.f2679p;
            if (i6 == i7) {
                if (i6 > 0) {
                    this.f2678o = i6 - 1;
                } else {
                    this.f2679p = i7 + 1;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isDecorator() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0180, code lost:
        if (r14 == 0.0f) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0194, code lost:
        if (r14 == 0.0f) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01a4, code lost:
        if (r15 == 0.0f) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b4, code lost:
        if (r15 == 0.0f) goto L62;
     */
    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionHelperInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreSetup(androidx.constraintlayout.motion.widget.MotionLayout r22, java.util.HashMap<android.view.View, androidx.constraintlayout.motion.widget.MotionController> r23) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.MotionEffect.onPreSetup(androidx.constraintlayout.motion.widget.MotionLayout, java.util.HashMap):void");
    }

    public MotionEffect(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f2677n = 0.1f;
        this.f2678o = 49;
        this.f2679p = 50;
        this.f2680q = 0;
        this.f2681r = 0;
        this.f2682s = true;
        this.f2683t = -1;
        this.f2684u = -1;
        l(context, attrs);
    }

    public MotionEffect(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f2677n = 0.1f;
        this.f2678o = 49;
        this.f2679p = 50;
        this.f2680q = 0;
        this.f2681r = 0;
        this.f2682s = true;
        this.f2683t = -1;
        this.f2684u = -1;
        l(context, attrs);
    }
}
