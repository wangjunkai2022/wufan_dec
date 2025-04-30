package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;
/* loaded from: classes.dex */
public class AlignHorizontallyReference extends HelperReference {

    /* renamed from: n0  reason: collision with root package name */
    private float f2411n0;

    public AlignHorizontallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.f2411n0 = 0.5f;
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        Iterator<Object> it2 = this.f2356l0.iterator();
        while (it2.hasNext()) {
            ConstraintReference constraints = this.f2354j0.constraints(it2.next());
            constraints.clearHorizontal();
            Object obj = this.O;
            if (obj != null) {
                constraints.startToStart(obj);
            } else {
                Object obj2 = this.P;
                if (obj2 != null) {
                    constraints.startToEnd(obj2);
                } else {
                    constraints.startToStart(State.PARENT);
                }
            }
            Object obj3 = this.Q;
            if (obj3 != null) {
                constraints.endToStart(obj3);
            } else {
                Object obj4 = this.R;
                if (obj4 != null) {
                    constraints.endToEnd(obj4);
                } else {
                    constraints.endToEnd(State.PARENT);
                }
            }
            float f4 = this.f2411n0;
            if (f4 != 0.5f) {
                constraints.horizontalBias(f4);
            }
        }
    }
}
