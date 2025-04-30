package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;
/* loaded from: classes.dex */
public class HorizontalChainReference extends ChainReference {

    /* renamed from: androidx.constraintlayout.core.state.helpers.HorizontalChainReference$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2426a;

        static {
            int[] iArr = new int[State.Chain.values().length];
            f2426a = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2426a[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2426a[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        Iterator<Object> it2 = this.f2356l0.iterator();
        while (it2.hasNext()) {
            this.f2354j0.constraints(it2.next()).clearHorizontal();
        }
        Iterator<Object> it3 = this.f2356l0.iterator();
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        while (it3.hasNext()) {
            ConstraintReference constraints = this.f2354j0.constraints(it3.next());
            if (constraintReference2 == null) {
                Object obj = this.O;
                if (obj != null) {
                    constraints.startToStart(obj).margin(this.f2330m).marginGone(this.f2336s);
                } else {
                    Object obj2 = this.P;
                    if (obj2 != null) {
                        constraints.startToEnd(obj2).margin(this.f2330m).marginGone(this.f2336s);
                    } else {
                        Object obj3 = this.K;
                        if (obj3 != null) {
                            constraints.startToStart(obj3).margin(this.f2328k).marginGone(this.f2334q);
                        } else {
                            Object obj4 = this.L;
                            if (obj4 != null) {
                                constraints.startToEnd(obj4).margin(this.f2328k).marginGone(this.f2334q);
                            } else {
                                constraints.startToStart(State.PARENT);
                            }
                        }
                    }
                }
                constraintReference2 = constraints;
            }
            if (constraintReference != null) {
                constraintReference.endToStart(constraints.getKey());
                constraints.startToEnd(constraintReference.getKey());
            }
            constraintReference = constraints;
        }
        if (constraintReference != null) {
            Object obj5 = this.Q;
            if (obj5 != null) {
                constraintReference.endToStart(obj5).margin(this.f2331n).marginGone(this.f2337t);
            } else {
                Object obj6 = this.R;
                if (obj6 != null) {
                    constraintReference.endToEnd(obj6).margin(this.f2331n).marginGone(this.f2337t);
                } else {
                    Object obj7 = this.M;
                    if (obj7 != null) {
                        constraintReference.endToStart(obj7).margin(this.f2329l).marginGone(this.f2335r);
                    } else {
                        Object obj8 = this.N;
                        if (obj8 != null) {
                            constraintReference.endToEnd(obj8).margin(this.f2329l).marginGone(this.f2335r);
                        } else {
                            constraintReference.endToEnd(State.PARENT);
                        }
                    }
                }
            }
        }
        if (constraintReference2 == null) {
            return;
        }
        float f4 = this.f2417n0;
        if (f4 != 0.5f) {
            constraintReference2.horizontalBias(f4);
        }
        int i2 = AnonymousClass1.f2426a[this.f2418o0.ordinal()];
        if (i2 == 1) {
            constraintReference2.setHorizontalChainStyle(0);
        } else if (i2 == 2) {
            constraintReference2.setHorizontalChainStyle(1);
        } else if (i2 != 3) {
        } else {
            constraintReference2.setHorizontalChainStyle(2);
        }
    }
}
