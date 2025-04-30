package com.google.android.material.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.PathParser;
import androidx.transition.PathMotion;
import androidx.transition.PatternPathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import com.google.android.material.shape.m;
/* compiled from: TransitionUtils.java */
/* loaded from: classes2.dex */
class r {

    /* renamed from: a  reason: collision with root package name */
    static final int f16631a = -1;
    @AttrRes

    /* renamed from: b  reason: collision with root package name */
    static final int f16632b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f16633c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final int f16634d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final RectF f16635e = new RectF();

    /* compiled from: TransitionUtils.java */
    /* loaded from: classes2.dex */
    class a implements m.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RectF f16636a;

        a(RectF rectF) {
            this.f16636a = rectF;
        }

        @Override // com.google.android.material.shape.m.c
        @NonNull
        public com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar) {
            return cVar instanceof com.google.android.material.shape.k ? cVar : new com.google.android.material.shape.k(cVar.a(this.f16636a) / this.f16636a.height());
        }
    }

    /* compiled from: TransitionUtils.java */
    /* loaded from: classes2.dex */
    class b implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RectF f16637a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RectF f16638b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f16639c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f16640d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f16641e;

        b(RectF rectF, RectF rectF2, float f4, float f5, float f6) {
            this.f16637a = rectF;
            this.f16638b = rectF2;
            this.f16639c = f4;
            this.f16640d = f5;
            this.f16641e = f6;
        }

        @Override // com.google.android.material.transition.r.d
        @NonNull
        public com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar, @NonNull com.google.android.material.shape.c cVar2) {
            return new com.google.android.material.shape.a(r.l(cVar.a(this.f16637a), cVar2.a(this.f16638b), this.f16639c, this.f16640d, this.f16641e));
        }
    }

    /* compiled from: TransitionUtils.java */
    /* loaded from: classes2.dex */
    interface c {
        void a(Canvas canvas);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransitionUtils.java */
    /* loaded from: classes2.dex */
    public interface d {
        @NonNull
        com.google.android.material.shape.c a(@NonNull com.google.android.material.shape.c cVar, @NonNull com.google.android.material.shape.c cVar2);
    }

    private r() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(@NonNull RectF rectF) {
        return rectF.width() * rectF.height();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.material.shape.m b(com.google.android.material.shape.m mVar, RectF rectF) {
        return mVar.y(new a(rectF));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Shader c(@ColorInt int i2) {
        return new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, i2, i2, Shader.TileMode.CLAMP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static <T> T d(@Nullable T t3, @NonNull T t4) {
        return t3 != null ? t3 : t4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View e(View view, @IdRes int i2) {
        String resourceName = view.getResources().getResourceName(i2);
        while (view != null) {
            if (view.getId() != i2) {
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static View f(View view, @IdRes int i2) {
        View findViewById = view.findViewById(i2);
        return findViewById != null ? findViewById : e(view, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF g(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i4 = iArr[1];
        return new RectF(i2, i4, view.getWidth() + i2, view.getHeight() + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RectF h(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    static Rect i(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private static boolean j(com.google.android.material.shape.m mVar, RectF rectF) {
        return (mVar.r().a(rectF) == 0.0f && mVar.t().a(rectF) == 0.0f && mVar.l().a(rectF) == 0.0f && mVar.j().a(rectF) == 0.0f) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float k(float f4, float f5, float f6) {
        return f4 + (f6 * (f5 - f4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float l(float f4, float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6, @FloatRange(from = 0.0d, to = 1.0d) float f7, @FloatRange(from = 0.0d, to = 1.0d) float f8) {
        return m(f4, f5, f6, f7, f8, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float m(float f4, float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6, @FloatRange(from = 0.0d, to = 1.0d) float f7, @FloatRange(from = 0.0d) float f8, boolean z3) {
        if (!z3 || (f8 >= 0.0f && f8 <= 1.0f)) {
            return f8 < f6 ? f4 : f8 > f7 ? f5 : k(f4, f5, (f8 - f6) / (f7 - f6));
        }
        return k(f4, f5, f8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(int i2, int i4, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6) {
        return f6 < f4 ? i2 : f6 > f5 ? i4 : (int) k(i2, i4, (f6 - f4) / (f5 - f4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.material.shape.m o(com.google.android.material.shape.m mVar, com.google.android.material.shape.m mVar2, RectF rectF, RectF rectF2, @FloatRange(from = 0.0d, to = 1.0d) float f4, @FloatRange(from = 0.0d, to = 1.0d) float f5, @FloatRange(from = 0.0d, to = 1.0d) float f6) {
        return f6 < f4 ? mVar : f6 > f5 ? mVar2 : x(mVar, mVar2, rectF, new b(rectF, rectF2, f4, f5, f6));
    }

    static void p(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean q(Transition transition, Context context, @AttrRes int i2) {
        int d4;
        if (i2 == 0 || transition.getDuration() != -1 || (d4 = d1.a.d(context, i2, -1)) == -1) {
            return false;
        }
        transition.setDuration(d4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(Transition transition, Context context, @AttrRes int i2, TimeInterpolator timeInterpolator) {
        if (i2 == 0 || transition.getInterpolator() != null) {
            return false;
        }
        transition.setInterpolator(d1.a.e(context, i2, timeInterpolator));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean s(Transition transition, Context context, @AttrRes int i2) {
        PathMotion u3;
        if (i2 == 0 || (u3 = u(context, i2)) == null) {
            return false;
        }
        transition.setPathMotion(u3);
        return true;
    }

    static void t(TransitionSet transitionSet, @Nullable Transition transition) {
        if (transition != null) {
            transitionSet.removeTransition(transition);
        }
    }

    @Nullable
    static PathMotion u(Context context, @AttrRes int i2) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            int i4 = typedValue.type;
            if (i4 != 16) {
                if (i4 == 3) {
                    return new PatternPathMotion(PathParser.createPathFromPathData(String.valueOf(typedValue.string)));
                }
                throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
            }
            int i5 = typedValue.data;
            if (i5 == 0) {
                return null;
            }
            if (i5 == 1) {
                return new k();
            }
            throw new IllegalArgumentException("Invalid motion path type: " + i5);
        }
        return null;
    }

    private static int v(Canvas canvas, Rect rect, int i2) {
        RectF rectF = f16635e;
        rectF.set(rect);
        if (Build.VERSION.SDK_INT >= 21) {
            return canvas.saveLayerAlpha(rectF, i2);
        }
        return canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i2, 31);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(Canvas canvas, Rect rect, float f4, float f5, float f6, int i2, c cVar) {
        if (i2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f4, f5);
        canvas.scale(f6, f6);
        if (i2 < 255) {
            v(canvas, rect, i2);
        }
        cVar.a(canvas);
        canvas.restoreToCount(save);
    }

    static com.google.android.material.shape.m x(com.google.android.material.shape.m mVar, com.google.android.material.shape.m mVar2, RectF rectF, d dVar) {
        return (j(mVar, rectF) ? mVar : mVar2).v().L(dVar.a(mVar.r(), mVar2.r())).Q(dVar.a(mVar.t(), mVar2.t())).y(dVar.a(mVar.j(), mVar2.j())).D(dVar.a(mVar.l(), mVar2.l())).m();
    }
}
