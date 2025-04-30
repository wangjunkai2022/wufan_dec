package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
class ViewUtilsBase {

    /* renamed from: b  reason: collision with root package name */
    private static final String f7808b = "ViewUtilsBase";

    /* renamed from: c  reason: collision with root package name */
    private static Method f7809c = null;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f7810d = false;

    /* renamed from: e  reason: collision with root package name */
    private static Field f7811e = null;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f7812f = false;

    /* renamed from: g  reason: collision with root package name */
    private static final int f7813g = 12;

    /* renamed from: a  reason: collision with root package name */
    private float[] f7814a;

    @SuppressLint({"PrivateApi"})
    private void a() {
        if (f7810d) {
            return;
        }
        try {
            Class cls = Integer.TYPE;
            Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
            f7809c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        f7810d = true;
    }

    public void clearNonTransitionAlpha(@NonNull View view) {
        if (view.getVisibility() == 0) {
            view.setTag(R.id.save_non_transition_alpha, null);
        }
    }

    public float getTransitionAlpha(@NonNull View view) {
        Float f4 = (Float) view.getTag(R.id.save_non_transition_alpha);
        if (f4 != null) {
            return view.getAlpha() / f4.floatValue();
        }
        return view.getAlpha();
    }

    public void saveNonTransitionAlpha(@NonNull View view) {
        int i2 = R.id.save_non_transition_alpha;
        if (view.getTag(i2) == null) {
            view.setTag(i2, Float.valueOf(view.getAlpha()));
        }
    }

    public void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        if (matrix != null && !matrix.isIdentity()) {
            float[] fArr = this.f7814a;
            if (fArr == null) {
                fArr = new float[9];
                this.f7814a = fArr;
            }
            matrix.getValues(fArr);
            float f4 = fArr[3];
            float sqrt = ((float) Math.sqrt(1.0f - (f4 * f4))) * (fArr[0] < 0.0f ? -1 : 1);
            float degrees = (float) Math.toDegrees(Math.atan2(f4, sqrt));
            float f5 = fArr[0] / sqrt;
            float f6 = fArr[4] / sqrt;
            float f7 = fArr[2];
            float f8 = fArr[5];
            view.setPivotX(0.0f);
            view.setPivotY(0.0f);
            view.setTranslationX(f7);
            view.setTranslationY(f8);
            view.setRotation(degrees);
            view.setScaleX(f5);
            view.setScaleY(f6);
            return;
        }
        view.setPivotX(view.getWidth() / 2);
        view.setPivotY(view.getHeight() / 2);
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setRotation(0.0f);
    }

    public void setLeftTopRightBottom(@NonNull View view, int i2, int i4, int i5, int i6) {
        a();
        Method method = f7809c;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(e4.getCause());
            }
        }
    }

    public void setTransitionAlpha(@NonNull View view, float f4) {
        Float f5 = (Float) view.getTag(R.id.save_non_transition_alpha);
        if (f5 != null) {
            view.setAlpha(f5.floatValue() * f4);
        } else {
            view.setAlpha(f4);
        }
    }

    public void setTransitionVisibility(@NonNull View view, int i2) {
        if (!f7812f) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f7811e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f7812f = true;
        }
        Field field = f7811e;
        if (field != null) {
            try {
                f7811e.setInt(view, i2 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            transformMatrixToGlobal(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    public void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            transformMatrixToLocal(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }
}
