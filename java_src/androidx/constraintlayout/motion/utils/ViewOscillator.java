package androidx.constraintlayout.motion.utils;

import android.os.Build;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class ViewOscillator extends KeyCycleOscillator {

    /* renamed from: h  reason: collision with root package name */
    private static final String f2693h = "ViewOscillator";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AlphaSet extends ViewOscillator {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setAlpha(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CustomSet extends ViewOscillator {

        /* renamed from: i  reason: collision with root package name */
        float[] f2694i = new float[1];

        /* renamed from: j  reason: collision with root package name */
        protected ConstraintAttribute f2695j;

        CustomSet() {
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        protected void a(Object custom) {
            this.f2695j = (ConstraintAttribute) custom;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            this.f2694i[0] = get(t3);
            CustomSupport.setInterpolatedValue(this.f2695j, view, this.f2694i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ElevationSet extends ViewOscillator {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(t3));
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotateSet extends ViewOscillator {
        public void setPathRotate(View view, float t3, double dx, double dy) {
            view.setRotation(get(t3) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ProgressSet extends ViewOscillator {

        /* renamed from: i  reason: collision with root package name */
        boolean f2696i = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t3));
            } else if (this.f2696i) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f2696i = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(get(t3)));
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationSet extends ViewOscillator {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setRotation(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationXset extends ViewOscillator {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setRotationX(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationYset extends ViewOscillator {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setRotationY(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ScaleXset extends ViewOscillator {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setScaleX(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ScaleYset extends ViewOscillator {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setScaleY(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationXset extends ViewOscillator {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setTranslationX(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationYset extends ViewOscillator {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            view.setTranslationY(get(t3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationZset extends ViewOscillator {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t3) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(t3));
            }
        }
    }

    public static ViewOscillator makeSpline(String str) {
        if (str.startsWith("CUSTOM")) {
            return new CustomSet();
        }
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c4 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c4 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c4 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c4 = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c4 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c4 = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    c4 = '\b';
                    break;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c4 = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c4 = '\n';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c4 = 11;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c4 = '\r';
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case '\b':
                return new AlphaSet();
            case '\t':
                return new RotationSet();
            case '\n':
                return new ElevationSet();
            case 11:
                return new PathRotateSet();
            case '\f':
                return new AlphaSet();
            case '\r':
                return new AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float t3);
}
