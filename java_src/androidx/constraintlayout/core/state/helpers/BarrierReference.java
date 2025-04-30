package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.HelperWidget;
/* loaded from: classes.dex */
public class BarrierReference extends HelperReference {

    /* renamed from: n0  reason: collision with root package name */
    private State.Direction f2413n0;

    /* renamed from: o0  reason: collision with root package name */
    private int f2414o0;

    /* renamed from: p0  reason: collision with root package name */
    private Barrier f2415p0;

    /* renamed from: androidx.constraintlayout.core.state.helpers.BarrierReference$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2416a;

        static {
            int[] iArr = new int[State.Direction.values().length];
            f2416a = iArr;
            try {
                iArr[State.Direction.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2416a[State.Direction.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2416a[State.Direction.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2416a[State.Direction.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2416a[State.Direction.TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2416a[State.Direction.BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public BarrierReference(State state) {
        super(state, State.Helper.BARRIER);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        getHelperWidget();
        int i2 = AnonymousClass1.f2416a[this.f2413n0.ordinal()];
        int i4 = 3;
        if (i2 == 3 || i2 == 4) {
            i4 = 1;
        } else if (i2 == 5) {
            i4 = 2;
        } else if (i2 != 6) {
            i4 = 0;
        }
        this.f2415p0.setBarrierType(i4);
        this.f2415p0.setMargin(this.f2414o0);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference
    public HelperWidget getHelperWidget() {
        if (this.f2415p0 == null) {
            this.f2415p0 = new Barrier();
        }
        return this.f2415p0;
    }

    @Override // androidx.constraintlayout.core.state.ConstraintReference
    public ConstraintReference margin(Object obj) {
        margin(this.f2354j0.convertDimension(obj));
        return this;
    }

    public void setBarrierDirection(State.Direction direction) {
        this.f2413n0 = direction;
    }

    @Override // androidx.constraintlayout.core.state.ConstraintReference
    public ConstraintReference margin(int i2) {
        this.f2414o0 = i2;
        return this;
    }
}
