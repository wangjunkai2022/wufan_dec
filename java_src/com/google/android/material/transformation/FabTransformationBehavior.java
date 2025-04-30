package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.h;
import com.google.android.material.animation.i;
import com.google.android.material.animation.j;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes2.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: f  reason: collision with root package name */
    private final Rect f16319f;

    /* renamed from: g  reason: collision with root package name */
    private final RectF f16320g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f16321h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f16322i;

    /* renamed from: j  reason: collision with root package name */
    private float f16323j;

    /* renamed from: k  reason: collision with root package name */
    private float f16324k;

    /* loaded from: classes2.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f16325a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f16326b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f16327c;

        a(boolean z3, View view, View view2) {
            this.f16325a = z3;
            this.f16326b = view;
            this.f16327c = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f16325a) {
                return;
            }
            this.f16326b.setVisibility(4);
            this.f16327c.setAlpha(1.0f);
            this.f16327c.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f16325a) {
                this.f16326b.setVisibility(0);
                this.f16327c.setAlpha(0.0f);
                this.f16327c.setVisibility(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16329a;

        b(View view) {
            this.f16329a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f16329a.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.b f16331a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Drawable f16332b;

        c(com.google.android.material.circularreveal.b bVar, Drawable drawable) {
            this.f16331a = bVar;
            this.f16332b = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16331a.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f16331a.setCircularRevealOverlayDrawable(this.f16332b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.b f16334a;

        d(com.google.android.material.circularreveal.b bVar) {
            this.f16334a = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.e revealInfo = this.f16334a.getRevealInfo();
            revealInfo.f14488c = Float.MAX_VALUE;
            this.f16334a.setRevealInfo(revealInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class e {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public h f16336a;

        /* renamed from: b  reason: collision with root package name */
        public j f16337b;
    }

    public FabTransformationBehavior() {
        this.f16319f = new Rect();
        this.f16320g = new RectF();
        this.f16321h = new RectF();
        this.f16322i = new int[2];
    }

    private int A(@NonNull View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    @Nullable
    private ViewGroup C(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Nullable
    private ViewGroup h(@NonNull View view) {
        View findViewById = view.findViewById(R.id.mtrl_child_content_container);
        if (findViewById != null) {
            return C(findViewById);
        }
        if (!(view instanceof TransformationChildLayout) && !(view instanceof TransformationChildCard)) {
            return C(view);
        }
        return C(((ViewGroup) view).getChildAt(0));
    }

    private void i(@NonNull View view, @NonNull e eVar, @NonNull i iVar, @NonNull i iVar2, float f4, float f5, float f6, float f7, @NonNull RectF rectF) {
        float p3 = p(eVar, iVar, f4, f6);
        float p4 = p(eVar, iVar2, f5, f7);
        Rect rect = this.f16319f;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f16320g;
        rectF2.set(rect);
        RectF rectF3 = this.f16321h;
        q(view, rectF3);
        rectF3.offset(p3, p4);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void j(@NonNull View view, @NonNull RectF rectF) {
        q(view, rectF);
        rectF.offset(this.f16323j, this.f16324k);
    }

    @NonNull
    private Pair<i, i> k(float f4, float f5, boolean z3, @NonNull e eVar) {
        i h4;
        i h5;
        if (f4 == 0.0f || f5 == 0.0f) {
            h4 = eVar.f16336a.h("translationXLinear");
            h5 = eVar.f16336a.h("translationYLinear");
        } else if ((z3 && f5 < 0.0f) || (!z3 && f5 > 0.0f)) {
            h4 = eVar.f16336a.h("translationXCurveUpwards");
            h5 = eVar.f16336a.h("translationYCurveUpwards");
        } else {
            h4 = eVar.f16336a.h("translationXCurveDownwards");
            h5 = eVar.f16336a.h("translationYCurveDownwards");
        }
        return new Pair<>(h4, h5);
    }

    private float l(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        RectF rectF = this.f16320g;
        RectF rectF2 = this.f16321h;
        j(view, rectF);
        q(view2, rectF2);
        rectF2.offset(-n(view, view2, jVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float m(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        RectF rectF = this.f16320g;
        RectF rectF2 = this.f16321h;
        j(view, rectF);
        q(view2, rectF2);
        rectF2.offset(0.0f, -o(view, view2, jVar));
        return rectF.centerY() - rectF2.top;
    }

    private float n(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        float centerX;
        float centerX2;
        float f4;
        RectF rectF = this.f16320g;
        RectF rectF2 = this.f16321h;
        j(view, rectF);
        q(view2, rectF2);
        int i2 = jVar.f14025a & 7;
        if (i2 == 1) {
            centerX = rectF2.centerX();
            centerX2 = rectF.centerX();
        } else if (i2 == 3) {
            centerX = rectF2.left;
            centerX2 = rectF.left;
        } else if (i2 == 5) {
            centerX = rectF2.right;
            centerX2 = rectF.right;
        } else {
            f4 = 0.0f;
            return f4 + jVar.f14026b;
        }
        f4 = centerX - centerX2;
        return f4 + jVar.f14026b;
    }

    private float o(@NonNull View view, @NonNull View view2, @NonNull j jVar) {
        float centerY;
        float centerY2;
        float f4;
        RectF rectF = this.f16320g;
        RectF rectF2 = this.f16321h;
        j(view, rectF);
        q(view2, rectF2);
        int i2 = jVar.f14025a & 112;
        if (i2 == 16) {
            centerY = rectF2.centerY();
            centerY2 = rectF.centerY();
        } else if (i2 == 48) {
            centerY = rectF2.top;
            centerY2 = rectF.top;
        } else if (i2 == 80) {
            centerY = rectF2.bottom;
            centerY2 = rectF.bottom;
        } else {
            f4 = 0.0f;
            return f4 + jVar.f14027c;
        }
        f4 = centerY - centerY2;
        return f4 + jVar.f14027c;
    }

    private float p(@NonNull e eVar, @NonNull i iVar, float f4, float f5) {
        long c4 = iVar.c();
        long d4 = iVar.d();
        i h4 = eVar.f16336a.h("expansion");
        return com.google.android.material.animation.a.a(f4, f5, iVar.e().getInterpolation(((float) (((h4.c() + h4.d()) + 17) - c4)) / ((float) d4)));
    }

    private void q(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f16322i;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void r(View view, View view2, boolean z3, boolean z4, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup h4;
        ObjectAnimator ofFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.b) && CircularRevealHelper.f14467o == 0) || (h4 = h(view2)) == null) {
                return;
            }
            if (z3) {
                if (!z4) {
                    com.google.android.material.animation.d.f14010a.set(h4, Float.valueOf(0.0f));
                }
                ofFloat = ObjectAnimator.ofFloat(h4, com.google.android.material.animation.d.f14010a, 1.0f);
            } else {
                ofFloat = ObjectAnimator.ofFloat(h4, com.google.android.material.animation.d.f14010a, 0.0f);
            }
            eVar.f16336a.h("contentFade").a(ofFloat);
            list.add(ofFloat);
        }
    }

    private void s(@NonNull View view, View view2, boolean z3, boolean z4, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            int A = A(view);
            int i2 = 16777215 & A;
            if (z3) {
                if (!z4) {
                    bVar.setCircularRevealScrimColor(A);
                }
                ofInt = ObjectAnimator.ofInt(bVar, b.d.f14484a, i2);
            } else {
                ofInt = ObjectAnimator.ofInt(bVar, b.d.f14484a, A);
            }
            ofInt.setEvaluator(com.google.android.material.animation.c.b());
            eVar.f16336a.h(TypedValues.Custom.S_COLOR).a(ofInt);
            list.add(ofInt);
        }
    }

    private void t(@NonNull View view, @NonNull View view2, boolean z3, @NonNull e eVar, @NonNull List<Animator> list) {
        float n4 = n(view, view2, eVar.f16337b);
        float o3 = o(view, view2, eVar.f16337b);
        Pair<i, i> k4 = k(n4, o3, z3, eVar);
        i iVar = (i) k4.first;
        i iVar2 = (i) k4.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z3) {
            n4 = this.f16323j;
        }
        fArr[0] = n4;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z3) {
            o3 = this.f16324k;
        }
        fArr2[0] = o3;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, property2, fArr2);
        iVar.a(ofFloat);
        iVar2.a(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    @TargetApi(21)
    private void u(View view, @NonNull View view2, boolean z3, boolean z4, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z3) {
            if (!z4) {
                view2.setTranslationZ(-elevation);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, 0.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Z, -elevation);
        }
        eVar.f16336a.h("elevation").a(ofFloat);
        list.add(ofFloat);
    }

    private void v(@NonNull View view, View view2, boolean z3, boolean z4, @NonNull e eVar, float f4, float f5, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animator;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            float l4 = l(view, view2, eVar.f16337b);
            float m4 = m(view, view2, eVar.f16337b);
            ((FloatingActionButton) view).k(this.f16319f);
            float width = this.f16319f.width() / 2.0f;
            i h4 = eVar.f16336a.h("expansion");
            if (z3) {
                if (!z4) {
                    bVar.setRevealInfo(new b.e(l4, m4, width));
                }
                if (z4) {
                    width = bVar.getRevealInfo().f14488c;
                }
                animator = com.google.android.material.circularreveal.a.a(bVar, l4, m4, c1.a.b(l4, m4, 0.0f, 0.0f, f4, f5));
                animator.addListener(new d(bVar));
                y(view2, h4.c(), (int) l4, (int) m4, width, list);
            } else {
                float f6 = bVar.getRevealInfo().f14488c;
                Animator a4 = com.google.android.material.circularreveal.a.a(bVar, l4, m4, width);
                int i2 = (int) l4;
                int i4 = (int) m4;
                y(view2, h4.c(), i2, i4, f6, list);
                x(view2, h4.c(), h4.d(), eVar.f16336a.i(), i2, i4, width, list);
                animator = a4;
            }
            h4.a(animator);
            list.add(animator);
            list2.add(com.google.android.material.circularreveal.a.c(bVar));
        }
    }

    private void w(View view, View view2, boolean z3, boolean z4, @NonNull e eVar, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator ofInt;
        if ((view2 instanceof com.google.android.material.circularreveal.b) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z3) {
                if (!z4) {
                    drawable.setAlpha(255);
                }
                ofInt = ObjectAnimator.ofInt(drawable, com.google.android.material.animation.e.f14011b, 0);
            } else {
                ofInt = ObjectAnimator.ofInt(drawable, com.google.android.material.animation.e.f14011b, 255);
            }
            ofInt.addUpdateListener(new b(view2));
            eVar.f16336a.h("iconFade").a(ofInt);
            list.add(ofInt);
            list2.add(new c(bVar, drawable));
        }
    }

    private void x(View view, long j4, long j5, long j6, int i2, int i4, float f4, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j7 = j4 + j5;
            if (j7 < j6) {
                Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i2, i4, f4, f4);
                createCircularReveal.setStartDelay(j7);
                createCircularReveal.setDuration(j6 - j7);
                list.add(createCircularReveal);
            }
        }
    }

    private void y(View view, long j4, int i2, int i4, float f4, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j4 <= 0) {
            return;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i2, i4, f4, f4);
        createCircularReveal.setStartDelay(0L);
        createCircularReveal.setDuration(j4);
        list.add(createCircularReveal);
    }

    private void z(@NonNull View view, @NonNull View view2, boolean z3, boolean z4, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        float n4 = n(view, view2, eVar.f16337b);
        float o3 = o(view, view2, eVar.f16337b);
        Pair<i, i> k4 = k(n4, o3, z3, eVar);
        i iVar = (i) k4.first;
        i iVar2 = (i) k4.second;
        if (z3) {
            if (!z4) {
                view2.setTranslationX(-n4);
                view2.setTranslationY(-o3);
            }
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, 0.0f);
            ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, 0.0f);
            i(view2, eVar, iVar, iVar2, -n4, -o3, 0.0f, 0.0f, rectF);
        } else {
            ofFloat = ObjectAnimator.ofFloat(view2, View.TRANSLATION_X, -n4);
            ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -o3);
        }
        iVar.a(ofFloat);
        iVar2.a(ofFloat2);
        list.add(ofFloat);
        list.add(ofFloat2);
    }

    protected abstract e B(Context context, boolean z3);

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet g(@NonNull View view, @NonNull View view2, boolean z3, boolean z4) {
        e B = B(view2.getContext(), z3);
        if (z3) {
            this.f16323j = view.getTranslationX();
            this.f16324k = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            u(view, view2, z3, z4, B, arrayList, arrayList2);
        }
        RectF rectF = this.f16320g;
        z(view, view2, z3, z4, B, arrayList, arrayList2, rectF);
        float width = rectF.width();
        float height = rectF.height();
        t(view, view2, z3, B, arrayList);
        w(view, view2, z3, z4, B, arrayList, arrayList2);
        v(view, view2, z3, z4, B, width, height, arrayList, arrayList2);
        s(view, view2, z3, z4, B, arrayList, arrayList2);
        r(view, view2, z3, z4, B, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.animation.b.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z3, view2, view));
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            animatorSet.addListener(arrayList2.get(i2));
        }
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() != 8) {
            if (view2 instanceof FloatingActionButton) {
                int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
                return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
            }
            return false;
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16319f = new Rect();
        this.f16320g = new RectF();
        this.f16321h = new RectF();
        this.f16322i = new int[2];
    }
}
