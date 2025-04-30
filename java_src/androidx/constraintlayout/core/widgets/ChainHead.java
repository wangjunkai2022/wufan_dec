package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ChainHead {

    /* renamed from: a  reason: collision with root package name */
    protected ConstraintWidget f2435a;

    /* renamed from: b  reason: collision with root package name */
    protected ConstraintWidget f2436b;

    /* renamed from: c  reason: collision with root package name */
    protected ConstraintWidget f2437c;

    /* renamed from: d  reason: collision with root package name */
    protected ConstraintWidget f2438d;

    /* renamed from: e  reason: collision with root package name */
    protected ConstraintWidget f2439e;

    /* renamed from: f  reason: collision with root package name */
    protected ConstraintWidget f2440f;

    /* renamed from: g  reason: collision with root package name */
    protected ConstraintWidget f2441g;

    /* renamed from: h  reason: collision with root package name */
    protected ArrayList<ConstraintWidget> f2442h;

    /* renamed from: i  reason: collision with root package name */
    protected int f2443i;

    /* renamed from: j  reason: collision with root package name */
    protected int f2444j;

    /* renamed from: k  reason: collision with root package name */
    protected float f2445k = 0.0f;

    /* renamed from: l  reason: collision with root package name */
    int f2446l;

    /* renamed from: m  reason: collision with root package name */
    int f2447m;

    /* renamed from: n  reason: collision with root package name */
    int f2448n;

    /* renamed from: o  reason: collision with root package name */
    boolean f2449o;

    /* renamed from: p  reason: collision with root package name */
    private int f2450p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f2451q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f2452r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f2453s;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f2454t;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f2455u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f2456v;

    public ChainHead(ConstraintWidget constraintWidget, int i2, boolean z3) {
        this.f2451q = false;
        this.f2435a = constraintWidget;
        this.f2450p = i2;
        this.f2451q = z3;
    }

    private void a() {
        int i2 = this.f2450p * 2;
        ConstraintWidget constraintWidget = this.f2435a;
        boolean z3 = true;
        this.f2449o = true;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z4 = false;
        while (!z4) {
            this.f2443i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.f2489i0;
            int i4 = this.f2450p;
            ConstraintWidget constraintWidget3 = null;
            constraintWidgetArr[i4] = null;
            constraintWidget.f2487h0[i4] = null;
            if (constraintWidget.getVisibility() != 8) {
                this.f2446l++;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(this.f2450p);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour != dimensionBehaviour2) {
                    this.f2447m += constraintWidget.getLength(this.f2450p);
                }
                int margin = this.f2447m + constraintWidget.mListAnchors[i2].getMargin();
                this.f2447m = margin;
                int i5 = i2 + 1;
                this.f2447m = margin + constraintWidget.mListAnchors[i5].getMargin();
                int margin2 = this.f2448n + constraintWidget.mListAnchors[i2].getMargin();
                this.f2448n = margin2;
                this.f2448n = margin2 + constraintWidget.mListAnchors[i5].getMargin();
                if (this.f2436b == null) {
                    this.f2436b = constraintWidget;
                }
                this.f2438d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                int i6 = this.f2450p;
                if (dimensionBehaviourArr[i6] == dimensionBehaviour2) {
                    int[] iArr = constraintWidget.mResolvedMatchConstraintDefault;
                    if (iArr[i6] == 0 || iArr[i6] == 3 || iArr[i6] == 2) {
                        this.f2444j++;
                        float[] fArr = constraintWidget.mWeight;
                        float f4 = fArr[i6];
                        if (f4 > 0.0f) {
                            this.f2445k += fArr[i6];
                        }
                        if (b(constraintWidget, i6)) {
                            if (f4 < 0.0f) {
                                this.f2452r = true;
                            } else {
                                this.f2453s = true;
                            }
                            if (this.f2442h == null) {
                                this.f2442h = new ArrayList<>();
                            }
                            this.f2442h.add(constraintWidget);
                        }
                        if (this.f2440f == null) {
                            this.f2440f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget4 = this.f2441g;
                        if (constraintWidget4 != null) {
                            constraintWidget4.f2487h0[this.f2450p] = constraintWidget;
                        }
                        this.f2441g = constraintWidget;
                    }
                    if (this.f2450p == 0) {
                        if (constraintWidget.mMatchConstraintDefaultWidth != 0) {
                            this.f2449o = false;
                        } else if (constraintWidget.mMatchConstraintMinWidth != 0 || constraintWidget.mMatchConstraintMaxWidth != 0) {
                            this.f2449o = false;
                        }
                    } else if (constraintWidget.mMatchConstraintDefaultHeight != 0) {
                        this.f2449o = false;
                    } else if (constraintWidget.mMatchConstraintMinHeight != 0 || constraintWidget.mMatchConstraintMaxHeight != 0) {
                        this.f2449o = false;
                    }
                    if (constraintWidget.mDimensionRatio != 0.0f) {
                        this.f2449o = false;
                        this.f2455u = true;
                    }
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.f2489i0[this.f2450p] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.mOwner;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget5.mListAnchors;
                if (constraintAnchorArr[i2].mTarget != null && constraintAnchorArr[i2].mTarget.mOwner == constraintWidget) {
                    constraintWidget3 = constraintWidget5;
                }
            }
            if (constraintWidget3 == null) {
                constraintWidget3 = constraintWidget;
                z4 = true;
            }
            constraintWidget2 = constraintWidget;
            constraintWidget = constraintWidget3;
        }
        ConstraintWidget constraintWidget6 = this.f2436b;
        if (constraintWidget6 != null) {
            this.f2447m -= constraintWidget6.mListAnchors[i2].getMargin();
        }
        ConstraintWidget constraintWidget7 = this.f2438d;
        if (constraintWidget7 != null) {
            this.f2447m -= constraintWidget7.mListAnchors[i2 + 1].getMargin();
        }
        this.f2437c = constraintWidget;
        if (this.f2450p == 0 && this.f2451q) {
            this.f2439e = constraintWidget;
        } else {
            this.f2439e = this.f2435a;
        }
        this.f2454t = (this.f2453s && this.f2452r) ? false : false;
    }

    private static boolean b(ConstraintWidget constraintWidget, int i2) {
        if (constraintWidget.getVisibility() != 8 && constraintWidget.mListDimensionBehaviors[i2] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.mResolvedMatchConstraintDefault;
            if (iArr[i2] == 0 || iArr[i2] == 3) {
                return true;
            }
        }
        return false;
    }

    public void define() {
        if (!this.f2456v) {
            a();
        }
        this.f2456v = true;
    }

    public ConstraintWidget getFirst() {
        return this.f2435a;
    }

    public ConstraintWidget getFirstMatchConstraintWidget() {
        return this.f2440f;
    }

    public ConstraintWidget getFirstVisibleWidget() {
        return this.f2436b;
    }

    public ConstraintWidget getHead() {
        return this.f2439e;
    }

    public ConstraintWidget getLast() {
        return this.f2437c;
    }

    public ConstraintWidget getLastMatchConstraintWidget() {
        return this.f2441g;
    }

    public ConstraintWidget getLastVisibleWidget() {
        return this.f2438d;
    }

    public float getTotalWeight() {
        return this.f2445k;
    }
}
