package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;
/* loaded from: classes.dex */
public class AlignVerticallyReference extends HelperReference {

    /* renamed from: n0  reason: collision with root package name */
    private float f2412n0;

    public AlignVerticallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.f2412n0 = 0.5f;
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        Iterator<Object> it2 = this.f2356l0.iterator();
        while (it2.hasNext()) {
            ConstraintReference constraints = this.f2354j0.constraints(it2.next());
            constraints.clearVertical();
            Object obj = this.S;
            if (obj != null) {
                constraints.topToTop(obj);
            } else {
                Object obj2 = this.T;
                if (obj2 != null) {
                    constraints.topToBottom(obj2);
                } else {
                    constraints.topToTop(State.PARENT);
                }
            }
            Object obj3 = this.U;
            if (obj3 != null) {
                constraints.bottomToTop(obj3);
            } else {
                Object obj4 = this.V;
                if (obj4 != null) {
                    constraints.bottomToBottom(obj4);
                } else {
                    constraints.bottomToBottom(State.PARENT);
                }
            }
            float f4 = this.f2412n0;
            if (f4 != 0.5f) {
                constraints.verticalBias(f4);
            }
        }
    }
}
