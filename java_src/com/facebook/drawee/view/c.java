package com.facebook.drawee.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.PointF;
import android.graphics.Rect;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.view.ViewGroup;
import com.facebook.drawee.drawable.r;
import javax.annotation.Nullable;
/* compiled from: DraweeTransition.java */
@TargetApi(19)
/* loaded from: classes.dex */
public class c extends Transition {

    /* renamed from: e  reason: collision with root package name */
    private static final String f12218e = "draweeTransition:bounds";

    /* renamed from: a  reason: collision with root package name */
    private final r.c f12219a;

    /* renamed from: b  reason: collision with root package name */
    private final r.c f12220b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final PointF f12221c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final PointF f12222d;

    /* compiled from: DraweeTransition.java */
    /* loaded from: classes2.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.b f12223a;

        a(r.b bVar) {
            this.f12223a = bVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f12223a.i(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* compiled from: DraweeTransition.java */
    /* loaded from: classes2.dex */
    class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GenericDraweeView f12225a;

        b(GenericDraweeView genericDraweeView) {
            this.f12225a = genericDraweeView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f12225a.getHierarchy().x(c.this.f12220b);
            if (c.this.f12222d != null) {
                this.f12225a.getHierarchy().w(c.this.f12222d);
            }
        }
    }

    public c(r.c cVar, r.c cVar2, @Nullable PointF pointF, @Nullable PointF pointF2) {
        this.f12219a = cVar;
        this.f12220b = cVar2;
        this.f12221c = pointF;
        this.f12222d = pointF2;
    }

    private void c(TransitionValues transitionValues) {
        if (transitionValues.view instanceof GenericDraweeView) {
            transitionValues.values.put(f12218e, new Rect(0, 0, transitionValues.view.getWidth(), transitionValues.view.getHeight()));
        }
    }

    public static TransitionSet d(r.c cVar, r.c cVar2) {
        return e(cVar, cVar2, null, null);
    }

    public static TransitionSet e(r.c cVar, r.c cVar2, @Nullable PointF pointF, @Nullable PointF pointF2) {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(new ChangeBounds());
        transitionSet.addTransition(new c(cVar, cVar2, pointF, pointF2));
        return transitionSet;
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        c(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        c(transitionValues);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null && transitionValues2 != null) {
            Rect rect = (Rect) transitionValues.values.get(f12218e);
            Rect rect2 = (Rect) transitionValues2.values.get(f12218e);
            if (rect != null && rect2 != null) {
                r.c cVar = this.f12219a;
                r.c cVar2 = this.f12220b;
                if (cVar == cVar2 && this.f12221c == this.f12222d) {
                    return null;
                }
                GenericDraweeView genericDraweeView = (GenericDraweeView) transitionValues.view;
                r.b bVar = new r.b(cVar, cVar2, rect, rect2, this.f12221c, this.f12222d);
                genericDraweeView.getHierarchy().x(bVar);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new a(bVar));
                ofFloat.addListener(new b(genericDraweeView));
                return ofFloat;
            }
        }
        return null;
    }

    public c(r.c cVar, r.c cVar2) {
        this(cVar, cVar2, null, null);
    }
}
