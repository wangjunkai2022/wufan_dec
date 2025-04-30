package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ConstraintAnchor {

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f2457f = false;

    /* renamed from: g  reason: collision with root package name */
    private static final int f2458g = Integer.MIN_VALUE;

    /* renamed from: b  reason: collision with root package name */
    private int f2460b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2461c;

    /* renamed from: e  reason: collision with root package name */
    SolverVariable f2463e;
    public final ConstraintWidget mOwner;
    public ConstraintAnchor mTarget;
    public final Type mType;

    /* renamed from: a  reason: collision with root package name */
    private HashSet<ConstraintAnchor> f2459a = null;
    public int mMargin = 0;

    /* renamed from: d  reason: collision with root package name */
    int f2462d = Integer.MIN_VALUE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.widgets.ConstraintAnchor$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2464a;

        static {
            int[] iArr = new int[Type.values().length];
            f2464a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2464a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2464a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2464a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2464a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2464a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2464a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2464a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2464a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.mOwner = constraintWidget;
        this.mType = type;
    }

    private boolean a(ConstraintWidget constraintWidget, HashSet<ConstraintWidget> hashSet) {
        if (hashSet.contains(constraintWidget)) {
            return false;
        }
        hashSet.add(constraintWidget);
        if (constraintWidget == getOwner()) {
            return true;
        }
        ArrayList<ConstraintAnchor> anchors = constraintWidget.getAnchors();
        int size = anchors.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintAnchor constraintAnchor = anchors.get(i2);
            if (constraintAnchor.isSimilarDimensionConnection(this) && constraintAnchor.isConnected() && a(constraintAnchor.getTarget().getOwner(), hashSet)) {
                return true;
            }
        }
        return false;
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i2, int i4, boolean z3) {
        if (constraintAnchor == null) {
            reset();
            return true;
        } else if (z3 || isValidConnection(constraintAnchor)) {
            this.mTarget = constraintAnchor;
            if (constraintAnchor.f2459a == null) {
                constraintAnchor.f2459a = new HashSet<>();
            }
            HashSet<ConstraintAnchor> hashSet = this.mTarget.f2459a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            this.mMargin = i2;
            this.f2462d = i4;
            return true;
        } else {
            return false;
        }
    }

    public void copyFrom(ConstraintAnchor constraintAnchor, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        HashSet<ConstraintAnchor> hashSet;
        ConstraintAnchor constraintAnchor2 = this.mTarget;
        if (constraintAnchor2 != null && (hashSet = constraintAnchor2.f2459a) != null) {
            hashSet.remove(this);
        }
        ConstraintAnchor constraintAnchor3 = constraintAnchor.mTarget;
        if (constraintAnchor3 != null) {
            this.mTarget = hashMap.get(constraintAnchor.mTarget.mOwner).getAnchor(constraintAnchor3.getType());
        } else {
            this.mTarget = null;
        }
        ConstraintAnchor constraintAnchor4 = this.mTarget;
        if (constraintAnchor4 != null) {
            if (constraintAnchor4.f2459a == null) {
                constraintAnchor4.f2459a = new HashSet<>();
            }
            this.mTarget.f2459a.add(this);
        }
        this.mMargin = constraintAnchor.mMargin;
        this.f2462d = constraintAnchor.f2462d;
    }

    public void findDependents(int i2, ArrayList<WidgetGroup> arrayList, WidgetGroup widgetGroup) {
        HashSet<ConstraintAnchor> hashSet = this.f2459a;
        if (hashSet != null) {
            Iterator<ConstraintAnchor> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                Grouping.findDependents(it2.next().mOwner, i2, arrayList, widgetGroup);
            }
        }
    }

    public HashSet<ConstraintAnchor> getDependents() {
        return this.f2459a;
    }

    public int getFinalValue() {
        if (this.f2461c) {
            return this.f2460b;
        }
        return 0;
    }

    public int getMargin() {
        ConstraintAnchor constraintAnchor;
        if (this.mOwner.getVisibility() == 8) {
            return 0;
        }
        if (this.f2462d != Integer.MIN_VALUE && (constraintAnchor = this.mTarget) != null && constraintAnchor.mOwner.getVisibility() == 8) {
            return this.f2462d;
        }
        return this.mMargin;
    }

    public final ConstraintAnchor getOpposite() {
        switch (AnonymousClass1.f2464a[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.mOwner.mRight;
            case 3:
                return this.mOwner.mLeft;
            case 4:
                return this.mOwner.mBottom;
            case 5:
                return this.mOwner.mTop;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public ConstraintWidget getOwner() {
        return this.mOwner;
    }

    public SolverVariable getSolverVariable() {
        return this.f2463e;
    }

    public ConstraintAnchor getTarget() {
        return this.mTarget;
    }

    public Type getType() {
        return this.mType;
    }

    public boolean hasCenteredDependents() {
        HashSet<ConstraintAnchor> hashSet = this.f2459a;
        if (hashSet == null) {
            return false;
        }
        Iterator<ConstraintAnchor> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            if (it2.next().getOpposite().isConnected()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDependents() {
        HashSet<ConstraintAnchor> hashSet = this.f2459a;
        return hashSet != null && hashSet.size() > 0;
    }

    public boolean hasFinalValue() {
        return this.f2461c;
    }

    public boolean isConnected() {
        return this.mTarget != null;
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget, ConstraintAnchor constraintAnchor) {
        return isConnectionAllowed(constraintWidget);
    }

    public boolean isSideAnchor() {
        switch (AnonymousClass1.f2464a[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSimilarDimensionConnection(ConstraintAnchor constraintAnchor) {
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type == type2) {
            return true;
        }
        switch (AnonymousClass1.f2464a[type2.ordinal()]) {
            case 1:
                return type != Type.BASELINE;
            case 2:
            case 3:
            case 7:
                return type == Type.LEFT || type == Type.RIGHT || type == Type.CENTER_X;
            case 4:
            case 5:
            case 6:
            case 8:
                return type == Type.TOP || type == Type.BOTTOM || type == Type.CENTER_Y || type == Type.BASELINE;
            case 9:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isValidConnection(ConstraintAnchor constraintAnchor) {
        boolean z3 = false;
        if (constraintAnchor == null) {
            return false;
        }
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type == type2) {
            return type2 != Type.BASELINE || (constraintAnchor.getOwner().hasBaseline() && getOwner().hasBaseline());
        }
        switch (AnonymousClass1.f2464a[type2.ordinal()]) {
            case 1:
                return (type == Type.BASELINE || type == Type.CENTER_X || type == Type.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z4 = type == Type.LEFT || type == Type.RIGHT;
                if (constraintAnchor.getOwner() instanceof Guideline) {
                    return (z4 || type == Type.CENTER_X) ? true : true;
                }
                return z4;
            case 4:
            case 5:
                boolean z5 = type == Type.TOP || type == Type.BOTTOM;
                if (constraintAnchor.getOwner() instanceof Guideline) {
                    return (z5 || type == Type.CENTER_Y) ? true : true;
                }
                return z5;
            case 6:
                return (type == Type.LEFT || type == Type.RIGHT) ? false : true;
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isVerticalAnchor() {
        switch (AnonymousClass1.f2464a[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 7:
                return false;
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public void reset() {
        HashSet<ConstraintAnchor> hashSet;
        ConstraintAnchor constraintAnchor = this.mTarget;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f2459a) != null) {
            hashSet.remove(this);
            if (this.mTarget.f2459a.size() == 0) {
                this.mTarget.f2459a = null;
            }
        }
        this.f2459a = null;
        this.mTarget = null;
        this.mMargin = 0;
        this.f2462d = Integer.MIN_VALUE;
        this.f2461c = false;
        this.f2460b = 0;
    }

    public void resetFinalResolution() {
        this.f2461c = false;
        this.f2460b = 0;
    }

    public void resetSolverVariable(Cache cache) {
        SolverVariable solverVariable = this.f2463e;
        if (solverVariable == null) {
            this.f2463e = new SolverVariable(SolverVariable.Type.UNRESTRICTED, (String) null);
        } else {
            solverVariable.reset();
        }
    }

    public void setFinalValue(int i2) {
        this.f2460b = i2;
        this.f2461c = true;
    }

    public void setGoneMargin(int i2) {
        if (isConnected()) {
            this.f2462d = i2;
        }
    }

    public void setMargin(int i2) {
        if (isConnected()) {
            this.mMargin = i2;
        }
    }

    public String toString() {
        return this.mOwner.getDebugName() + ":" + this.mType.toString();
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget) {
        if (a(constraintWidget, new HashSet<>())) {
            return false;
        }
        ConstraintWidget parent = getOwner().getParent();
        return parent == constraintWidget || constraintWidget.getParent() == parent;
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i2) {
        return connect(constraintAnchor, i2, Integer.MIN_VALUE, false);
    }
}
