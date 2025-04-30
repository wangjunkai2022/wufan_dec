package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ViewTransitionController {

    /* renamed from: a  reason: collision with root package name */
    private final MotionLayout f3228a;

    /* renamed from: c  reason: collision with root package name */
    private HashSet<View> f3230c;

    /* renamed from: e  reason: collision with root package name */
    ArrayList<ViewTransition.Animate> f3232e;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<ViewTransition> f3229b = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private String f3231d = "ViewTransitionController";

    /* renamed from: f  reason: collision with root package name */
    ArrayList<ViewTransition.Animate> f3233f = new ArrayList<>();

    public ViewTransitionController(MotionLayout layout) {
        this.f3228a = layout;
    }

    private void h(final ViewTransition viewTransition, final boolean isSet) {
        final int sharedValueID = viewTransition.getSharedValueID();
        final int sharedValue = viewTransition.getSharedValue();
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new SharedValues.SharedValuesListener() { // from class: androidx.constraintlayout.motion.widget.ViewTransitionController.1
            @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
            public void onNewValue(int id, int value, int oldValue) {
                int sharedValueCurrent = viewTransition.getSharedValueCurrent();
                viewTransition.setSharedValueCurrent(value);
                if (sharedValueID != id || sharedValueCurrent == value) {
                    return;
                }
                if (isSet) {
                    if (sharedValue == value) {
                        int childCount = ViewTransitionController.this.f3228a.getChildCount();
                        for (int i2 = 0; i2 < childCount; i2++) {
                            View childAt = ViewTransitionController.this.f3228a.getChildAt(i2);
                            if (viewTransition.i(childAt)) {
                                int currentState = ViewTransitionController.this.f3228a.getCurrentState();
                                ConstraintSet constraintSet = ViewTransitionController.this.f3228a.getConstraintSet(currentState);
                                ViewTransition viewTransition2 = viewTransition;
                                ViewTransitionController viewTransitionController = ViewTransitionController.this;
                                viewTransition2.c(viewTransitionController, viewTransitionController.f3228a, currentState, constraintSet, childAt);
                            }
                        }
                    }
                } else if (sharedValue != value) {
                    int childCount2 = ViewTransitionController.this.f3228a.getChildCount();
                    for (int i4 = 0; i4 < childCount2; i4++) {
                        View childAt2 = ViewTransitionController.this.f3228a.getChildAt(i4);
                        if (viewTransition.i(childAt2)) {
                            int currentState2 = ViewTransitionController.this.f3228a.getCurrentState();
                            ConstraintSet constraintSet2 = ViewTransitionController.this.f3228a.getConstraintSet(currentState2);
                            ViewTransition viewTransition3 = viewTransition;
                            ViewTransitionController viewTransitionController2 = ViewTransitionController.this;
                            viewTransition3.c(viewTransitionController2, viewTransitionController2.f3228a, currentState2, constraintSet2, childAt2);
                        }
                    }
                }
            }
        });
    }

    private void m(ViewTransition vt, View... view) {
        int currentState = this.f3228a.getCurrentState();
        if (vt.f3194f == 2) {
            vt.c(this, this.f3228a, currentState, null, view);
        } else if (currentState == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("No support for ViewTransition within transition yet. Currently: ");
            sb.append(this.f3228a.toString());
        } else {
            ConstraintSet constraintSet = this.f3228a.getConstraintSet(currentState);
            if (constraintSet == null) {
                return;
            }
            vt.c(this, this.f3228a, currentState, constraintSet, view);
        }
    }

    public void add(ViewTransition viewTransition) {
        this.f3229b.add(viewTransition);
        this.f3230c = null;
        if (viewTransition.getStateTransition() == 4) {
            h(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            h(viewTransition, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ViewTransition.Animate animation) {
        if (this.f3232e == null) {
            this.f3232e = new ArrayList<>();
        }
        this.f3232e.add(animation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        ArrayList<ViewTransition.Animate> arrayList = this.f3232e;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.Animate> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
        this.f3232e.removeAll(this.f3233f);
        this.f3233f.clear();
        if (this.f3232e.isEmpty()) {
            this.f3232e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(int viewTransitionId, MotionController motionController) {
        Iterator<ViewTransition> it2 = this.f3229b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.e() == viewTransitionId) {
                next.f3195g.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int id, boolean enable) {
        Iterator<ViewTransition> it2 = this.f3229b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.e() == id) {
                next.k(enable);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f3228a.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g(int id) {
        Iterator<ViewTransition> it2 = this.f3229b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.e() == id) {
                return next.g();
            }
        }
        return false;
    }

    void i(int id) {
        ViewTransition viewTransition;
        Iterator<ViewTransition> it2 = this.f3229b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                viewTransition = null;
                break;
            }
            viewTransition = it2.next();
            if (viewTransition.e() == id) {
                break;
            }
        }
        if (viewTransition != null) {
            this.f3230c = null;
            this.f3229b.remove(viewTransition);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(ViewTransition.Animate animation) {
        this.f3233f.add(animation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(MotionEvent event) {
        ViewTransition viewTransition;
        int currentState = this.f3228a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.f3230c == null) {
            this.f3230c = new HashSet<>();
            Iterator<ViewTransition> it2 = this.f3229b.iterator();
            while (it2.hasNext()) {
                ViewTransition next = it2.next();
                int childCount = this.f3228a.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = this.f3228a.getChildAt(i2);
                    if (next.i(childAt)) {
                        childAt.getId();
                        this.f3230c.add(childAt);
                    }
                }
            }
        }
        float x3 = event.getX();
        float y3 = event.getY();
        Rect rect = new Rect();
        int action = event.getAction();
        ArrayList<ViewTransition.Animate> arrayList = this.f3232e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.Animate> it3 = this.f3232e.iterator();
            while (it3.hasNext()) {
                it3.next().reactTo(action, x3, y3);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.f3228a.getConstraintSet(currentState);
            Iterator<ViewTransition> it4 = this.f3229b.iterator();
            while (it4.hasNext()) {
                ViewTransition next2 = it4.next();
                if (next2.m(action)) {
                    Iterator<View> it5 = this.f3230c.iterator();
                    while (it5.hasNext()) {
                        View next3 = it5.next();
                        if (next2.i(next3)) {
                            next3.getHitRect(rect);
                            if (rect.contains((int) x3, (int) y3)) {
                                viewTransition = next2;
                                next2.c(this, this.f3228a, currentState, constraintSet, next3);
                            } else {
                                viewTransition = next2;
                            }
                            next2 = viewTransition;
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(int id, View... views) {
        ArrayList arrayList = new ArrayList();
        Iterator<ViewTransition> it2 = this.f3229b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.e() == id) {
                for (View view : views) {
                    if (next.d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    m(next, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
            }
        }
    }
}
