package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.Reference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;
/* loaded from: classes.dex */
public class GuidelineReference implements Facade, Reference {

    /* renamed from: a  reason: collision with root package name */
    final State f2419a;

    /* renamed from: b  reason: collision with root package name */
    private int f2420b;

    /* renamed from: c  reason: collision with root package name */
    private Guideline f2421c;

    /* renamed from: d  reason: collision with root package name */
    private int f2422d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f2423e = -1;

    /* renamed from: f  reason: collision with root package name */
    private float f2424f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private Object f2425g;

    public GuidelineReference(State state) {
        this.f2419a = state;
    }

    @Override // androidx.constraintlayout.core.state.helpers.Facade, androidx.constraintlayout.core.state.Reference
    public void apply() {
        this.f2421c.setOrientation(this.f2420b);
        int i2 = this.f2422d;
        if (i2 != -1) {
            this.f2421c.setGuideBegin(i2);
            return;
        }
        int i4 = this.f2423e;
        if (i4 != -1) {
            this.f2421c.setGuideEnd(i4);
        } else {
            this.f2421c.setGuidePercent(this.f2424f);
        }
    }

    public GuidelineReference end(Object obj) {
        this.f2422d = -1;
        this.f2423e = this.f2419a.convertDimension(obj);
        this.f2424f = 0.0f;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.helpers.Facade, androidx.constraintlayout.core.state.Reference
    public ConstraintWidget getConstraintWidget() {
        if (this.f2421c == null) {
            this.f2421c = new Guideline();
        }
        return this.f2421c;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Facade getFacade() {
        return null;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Object getKey() {
        return this.f2425g;
    }

    public int getOrientation() {
        return this.f2420b;
    }

    public GuidelineReference percent(float f4) {
        this.f2422d = -1;
        this.f2423e = -1;
        this.f2424f = f4;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setConstraintWidget(ConstraintWidget constraintWidget) {
        if (constraintWidget instanceof Guideline) {
            this.f2421c = (Guideline) constraintWidget;
        } else {
            this.f2421c = null;
        }
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setKey(Object obj) {
        this.f2425g = obj;
    }

    public void setOrientation(int i2) {
        this.f2420b = i2;
    }

    public GuidelineReference start(Object obj) {
        this.f2422d = this.f2419a.convertDimension(obj);
        this.f2423e = -1;
        this.f2424f = 0.0f;
        return this;
    }
}
