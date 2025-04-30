package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes.dex */
public class HelperReference extends ConstraintReference implements Facade {

    /* renamed from: j0  reason: collision with root package name */
    protected final State f2354j0;

    /* renamed from: k0  reason: collision with root package name */
    final State.Helper f2355k0;

    /* renamed from: l0  reason: collision with root package name */
    protected ArrayList<Object> f2356l0;

    /* renamed from: m0  reason: collision with root package name */
    private HelperWidget f2357m0;

    public HelperReference(State state, State.Helper helper) {
        super(state);
        this.f2356l0 = new ArrayList<>();
        this.f2354j0 = state;
        this.f2355k0 = helper;
    }

    public HelperReference add(Object... objArr) {
        Collections.addAll(this.f2356l0, objArr);
        return this;
    }

    @Override // androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
    }

    @Override // androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public ConstraintWidget getConstraintWidget() {
        return getHelperWidget();
    }

    public HelperWidget getHelperWidget() {
        return this.f2357m0;
    }

    public State.Helper getType() {
        return this.f2355k0;
    }

    public void setHelperWidget(HelperWidget helperWidget) {
        this.f2357m0 = helperWidget;
    }
}
