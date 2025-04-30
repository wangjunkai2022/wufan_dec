package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;
/* loaded from: classes.dex */
public class VerticalChainReference extends ChainReference {

    /* renamed from: androidx.constraintlayout.core.state.helpers.VerticalChainReference$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2427a;

        static {
            int[] iArr = new int[State.Chain.values().length];
            f2427a = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2427a[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2427a[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalChainReference(State state) {
        super(state, State.Helper.VERTICAL_CHAIN);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        Iterator<Object> it2 = this.f2356l0.iterator();
        while (it2.hasNext()) {
            this.f2354j0.constraints(it2.next()).clearVertical();
        }
        Iterator<Object> it3 = this.f2356l0.iterator();
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        while (it3.hasNext()) {
            ConstraintReference constraints = this.f2354j0.constraints(it3.next());
            if (constraintReference2 == null) {
                Object obj = this.S;
                if (obj != null) {
                    constraints.topToTop(obj).margin(this.f2332o).marginGone(this.f2338u);
                } else {
                    Object obj2 = this.T;
                    if (obj2 != null) {
                        constraints.topToBottom(obj2).margin(this.f2332o).marginGone(this.f2338u);
                    } else {
                        constraints.topToTop(State.PARENT);
                    }
                }
                constraintReference2 = constraints;
            }
            if (constraintReference != null) {
                constraintReference.bottomToTop(constraints.getKey());
                constraints.topToBottom(constraintReference.getKey());
            }
            constraintReference = constraints;
        }
        if (constraintReference != null) {
            Object obj3 = this.U;
            if (obj3 != null) {
                constraintReference.bottomToTop(obj3).margin(this.f2333p).marginGone(this.f2339v);
            } else {
                Object obj4 = this.V;
                if (obj4 != null) {
                    constraintReference.bottomToBottom(obj4).margin(this.f2333p).marginGone(this.f2339v);
                } else {
                    constraintReference.bottomToBottom(State.PARENT);
                }
            }
        }
        if (constraintReference2 == null) {
            return;
        }
        float f4 = this.f2417n0;
        if (f4 != 0.5f) {
            constraintReference2.verticalBias(f4);
        }
        int i2 = AnonymousClass1.f2427a[this.f2418o0.ordinal()];
        if (i2 == 1) {
            constraintReference2.setVerticalChainStyle(0);
        } else if (i2 == 2) {
            constraintReference2.setVerticalChainStyle(1);
        } else if (i2 != 3) {
        } else {
            constraintReference2.setVerticalChainStyle(2);
        }
    }
}
