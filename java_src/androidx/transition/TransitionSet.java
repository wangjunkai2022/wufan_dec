package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class TransitionSet extends Transition {
    private static final int A0 = 2;
    private static final int B0 = 4;
    private static final int C0 = 8;
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;

    /* renamed from: z0  reason: collision with root package name */
    private static final int f7749z0 = 1;

    /* renamed from: u0  reason: collision with root package name */
    private ArrayList<Transition> f7750u0;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f7751v0;

    /* renamed from: w0  reason: collision with root package name */
    int f7752w0;

    /* renamed from: x0  reason: collision with root package name */
    boolean f7753x0;

    /* renamed from: y0  reason: collision with root package name */
    private int f7754y0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class TransitionSetListener extends TransitionListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        TransitionSet f7757a;

        TransitionSetListener(TransitionSet transitionSet) {
            this.f7757a = transitionSet;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f7757a;
            int i2 = transitionSet.f7752w0 - 1;
            transitionSet.f7752w0 = i2;
            if (i2 == 0) {
                transitionSet.f7753x0 = false;
                transitionSet.j();
            }
            transition.removeListener(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f7757a;
            if (transitionSet.f7753x0) {
                return;
            }
            transitionSet.F();
            this.f7757a.f7753x0 = true;
        }
    }

    public TransitionSet() {
        this.f7750u0 = new ArrayList<>();
        this.f7751v0 = true;
        this.f7753x0 = false;
        this.f7754y0 = 0;
    }

    private void H(@NonNull Transition transition) {
        this.f7750u0.add(transition);
        transition.f7719r = this;
    }

    private void J() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<Transition> it2 = this.f7750u0.iterator();
        while (it2.hasNext()) {
            it2.next().addListener(transitionSetListener);
        }
        this.f7752w0 = this.f7750u0.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void C() {
        if (this.f7750u0.isEmpty()) {
            F();
            j();
            return;
        }
        J();
        if (!this.f7751v0) {
            for (int i2 = 1; i2 < this.f7750u0.size(); i2++) {
                final Transition transition = this.f7750u0.get(i2);
                this.f7750u0.get(i2 - 1).addListener(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionEnd(@NonNull Transition transition2) {
                        transition.C();
                        transition2.removeListener(this);
                    }
                });
            }
            Transition transition2 = this.f7750u0.get(0);
            if (transition2 != null) {
                transition2.C();
                return;
            }
            return;
        }
        Iterator<Transition> it2 = this.f7750u0.iterator();
        while (it2.hasNext()) {
            it2.next().C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public void D(boolean z3) {
        super.D(z3);
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).D(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public String G(String str) {
        String G = super.G(str);
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            StringBuilder sb = new StringBuilder();
            sb.append(G);
            sb.append("\n");
            sb.append(this.f7750u0.get(i2).G(str + "  "));
            G = sb.toString();
        }
        return G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    /* renamed from: I */
    public TransitionSet E(ViewGroup viewGroup) {
        super.E(viewGroup);
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).E(viewGroup);
        }
        return this;
    }

    @NonNull
    public TransitionSet addTransition(@NonNull Transition transition) {
        H(transition);
        long j4 = this.f7704c;
        if (j4 >= 0) {
            transition.setDuration(j4);
        }
        if ((this.f7754y0 & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.f7754y0 & 2) != 0) {
            transition.setPropagation(getPropagation());
        }
        if ((this.f7754y0 & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.f7754y0 & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        super.cancel();
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).cancel();
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        if (s(transitionValues.view)) {
            Iterator<Transition> it2 = this.f7750u0.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.s(transitionValues.view)) {
                    next.captureEndValues(transitionValues);
                    transitionValues.f7765a.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        if (s(transitionValues.view)) {
            Iterator<Transition> it2 = this.f7750u0.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.s(transitionValues.view)) {
                    next.captureStartValues(transitionValues);
                    transitionValues.f7765a.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z3) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).excludeTarget(view, z3);
        }
        return super.excludeTarget(view, z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    public void f(TransitionValues transitionValues) {
        super.f(transitionValues);
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).f(transitionValues);
        }
    }

    public int getOrdering() {
        return !this.f7751v0 ? 1 : 0;
    }

    @Nullable
    public Transition getTransitionAt(int i2) {
        if (i2 < 0 || i2 >= this.f7750u0.size()) {
            return null;
        }
        return this.f7750u0.get(i2);
    }

    public int getTransitionCount() {
        return this.f7750u0.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void i(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transition = this.f7750u0.get(i2);
            if (startDelay > 0 && (this.f7751v0 || i2 == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.i(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void o(ViewGroup viewGroup) {
        super.o(viewGroup);
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).o(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(View view) {
        super.pause(view);
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).pause(view);
        }
    }

    @NonNull
    public TransitionSet removeTransition(@NonNull Transition transition) {
        this.f7750u0.remove(transition);
        transition.f7719r = null;
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(View view) {
        super.resume(view);
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).resume(view);
        }
    }

    @Override // androidx.transition.Transition
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        this.f7754y0 |= 8;
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).setEpicenterCallback(epicenterCallback);
        }
    }

    @NonNull
    public TransitionSet setOrdering(int i2) {
        if (i2 == 0) {
            this.f7751v0 = true;
        } else if (i2 == 1) {
            this.f7751v0 = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i2);
        }
        return this;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f7754y0 |= 4;
        if (this.f7750u0 != null) {
            for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
                this.f7750u0.get(i2).setPathMotion(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public void setPropagation(TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.f7754y0 |= 2;
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7750u0.get(i2).setPropagation(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    /* renamed from: clone */
    public Transition mo8clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo8clone();
        transitionSet.f7750u0 = new ArrayList<>();
        int size = this.f7750u0.size();
        for (int i2 = 0; i2 < size; i2++) {
            transitionSet.H(this.f7750u0.get(i2).mo8clone());
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setDuration(long j4) {
        ArrayList<Transition> arrayList;
        super.setDuration(j4);
        if (this.f7704c >= 0 && (arrayList = this.f7750u0) != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7750u0.get(i2).setDuration(j4);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f7754y0 |= 1;
        ArrayList<Transition> arrayList = this.f7750u0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7750u0.get(i2).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setStartDelay(long j4) {
        return (TransitionSet) super.setStartDelay(j4);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull Class cls) {
        return removeTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z3) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).excludeTarget(str, z3);
        }
        return super.excludeTarget(str, z3);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull View view) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@IdRes int i2) {
        for (int i4 = 0; i4 < this.f7750u0.size(); i4++) {
            this.f7750u0.get(i4).removeTarget(i2);
        }
        return (TransitionSet) super.removeTarget(i2);
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7750u0 = new ArrayList<>();
        this.f7751v0 = true;
        this.f7753x0 = false;
        this.f7754y0 = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7692i);
        setOrdering(TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(int i2, boolean z3) {
        for (int i4 = 0; i4 < this.f7750u0.size(); i4++) {
            this.f7750u0.get(i4).excludeTarget(i2, z3);
        }
        return super.excludeTarget(i2, z3);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@IdRes int i2) {
        for (int i4 = 0; i4 < this.f7750u0.size(); i4++) {
            this.f7750u0.get(i4).addTarget(i2);
        }
        return (TransitionSet) super.addTarget(i2);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull View view) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z3) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).excludeTarget(cls, z3);
        }
        return super.excludeTarget(cls, z3);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull String str) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull Class<?> cls) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull Class<?> cls) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull String str) {
        for (int i2 = 0; i2 < this.f7750u0.size(); i2++) {
            this.f7750u0.get(i2).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }
}
