package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.AnimationHandler;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class DynamicAnimation<T extends DynamicAnimation<T>> implements AnimationHandler.AnimationFrameCallback {
    public static final float MIN_VISIBLE_CHANGE_ALPHA = 0.00390625f;
    public static final float MIN_VISIBLE_CHANGE_PIXELS = 1.0f;
    public static final float MIN_VISIBLE_CHANGE_ROTATION_DEGREES = 0.1f;
    public static final float MIN_VISIBLE_CHANGE_SCALE = 0.002f;

    /* renamed from: m  reason: collision with root package name */
    private static final float f5446m = Float.MAX_VALUE;

    /* renamed from: n  reason: collision with root package name */
    private static final float f5447n = 0.75f;

    /* renamed from: a  reason: collision with root package name */
    float f5448a;

    /* renamed from: b  reason: collision with root package name */
    float f5449b;

    /* renamed from: c  reason: collision with root package name */
    boolean f5450c;

    /* renamed from: d  reason: collision with root package name */
    final Object f5451d;

    /* renamed from: e  reason: collision with root package name */
    final FloatPropertyCompat f5452e;

    /* renamed from: f  reason: collision with root package name */
    boolean f5453f;

    /* renamed from: g  reason: collision with root package name */
    float f5454g;

    /* renamed from: h  reason: collision with root package name */
    float f5455h;

    /* renamed from: i  reason: collision with root package name */
    private long f5456i;

    /* renamed from: j  reason: collision with root package name */
    private float f5457j;

    /* renamed from: k  reason: collision with root package name */
    private final ArrayList<OnAnimationEndListener> f5458k;

    /* renamed from: l  reason: collision with root package name */
    private final ArrayList<OnAnimationUpdateListener> f5459l;
    public static final ViewProperty TRANSLATION_X = new ViewProperty("translationX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getTranslationX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setTranslationX(f4);
        }
    };
    public static final ViewProperty TRANSLATION_Y = new ViewProperty("translationY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.2
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getTranslationY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setTranslationY(f4);
        }
    };
    public static final ViewProperty TRANSLATION_Z = new ViewProperty("translationZ") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.3
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return ViewCompat.getTranslationZ(view);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            ViewCompat.setTranslationZ(view, f4);
        }
    };
    public static final ViewProperty SCALE_X = new ViewProperty("scaleX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.4
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScaleX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setScaleX(f4);
        }
    };
    public static final ViewProperty SCALE_Y = new ViewProperty("scaleY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.5
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScaleY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setScaleY(f4);
        }
    };
    public static final ViewProperty ROTATION = new ViewProperty(Key.ROTATION) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.6
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotation();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setRotation(f4);
        }
    };
    public static final ViewProperty ROTATION_X = new ViewProperty("rotationX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.7
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotationX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setRotationX(f4);
        }
    };
    public static final ViewProperty ROTATION_Y = new ViewProperty("rotationY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.8
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getRotationY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setRotationY(f4);
        }
    };
    public static final ViewProperty X = new ViewProperty("x") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.9
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setX(f4);
        }
    };
    public static final ViewProperty Y = new ViewProperty("y") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.10
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setY(f4);
        }
    };
    public static final ViewProperty Z = new ViewProperty(ai.aB) { // from class: androidx.dynamicanimation.animation.DynamicAnimation.11
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return ViewCompat.getZ(view);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            ViewCompat.setZ(view, f4);
        }
    };
    public static final ViewProperty ALPHA = new ViewProperty("alpha") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.12
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getAlpha();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setAlpha(f4);
        }
    };
    public static final ViewProperty SCROLL_X = new ViewProperty("scrollX") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.13
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScrollX();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setScrollX((int) f4);
        }
    };
    public static final ViewProperty SCROLL_Y = new ViewProperty("scrollY") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.14
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(View view) {
            return view.getScrollY();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(View view, float f4) {
            view.setScrollY((int) f4);
        }
    };

    /* loaded from: classes.dex */
    static class MassState {

        /* renamed from: a  reason: collision with root package name */
        float f5462a;

        /* renamed from: b  reason: collision with root package name */
        float f5463b;
    }

    /* loaded from: classes.dex */
    public interface OnAnimationEndListener {
        void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z3, float f4, float f5);
    }

    /* loaded from: classes.dex */
    public interface OnAnimationUpdateListener {
        void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f4, float f5);
    }

    /* loaded from: classes.dex */
    public static abstract class ViewProperty extends FloatPropertyCompat<View> {
        private ViewProperty(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicAnimation(final FloatValueHolder floatValueHolder) {
        this.f5448a = 0.0f;
        this.f5449b = Float.MAX_VALUE;
        this.f5450c = false;
        this.f5453f = false;
        this.f5454g = Float.MAX_VALUE;
        this.f5455h = -Float.MAX_VALUE;
        this.f5456i = 0L;
        this.f5458k = new ArrayList<>();
        this.f5459l = new ArrayList<>();
        this.f5451d = null;
        this.f5452e = new FloatPropertyCompat("FloatValueHolder") { // from class: androidx.dynamicanimation.animation.DynamicAnimation.15
            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(Object obj) {
                return floatValueHolder.getValue();
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(Object obj, float f4) {
                floatValueHolder.setValue(f4);
            }
        };
        this.f5457j = 1.0f;
    }

    private void a(boolean z3) {
        this.f5453f = false;
        AnimationHandler.getInstance().removeCallback(this);
        this.f5456i = 0L;
        this.f5450c = false;
        for (int i2 = 0; i2 < this.f5458k.size(); i2++) {
            if (this.f5458k.get(i2) != null) {
                this.f5458k.get(i2).onAnimationEnd(this, z3, this.f5449b, this.f5448a);
            }
        }
        g(this.f5458k);
    }

    private float c() {
        return this.f5452e.getValue(this.f5451d);
    }

    private static <T> void f(ArrayList<T> arrayList, T t3) {
        int indexOf = arrayList.indexOf(t3);
        if (indexOf >= 0) {
            arrayList.set(indexOf, null);
        }
    }

    private static <T> void g(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void j() {
        if (this.f5453f) {
            return;
        }
        this.f5453f = true;
        if (!this.f5450c) {
            this.f5449b = c();
        }
        float f4 = this.f5449b;
        if (f4 <= this.f5454g && f4 >= this.f5455h) {
            AnimationHandler.getInstance().addAnimationFrameCallback(this, 0L);
            return;
        }
        throw new IllegalArgumentException("Starting value need to be in between min value and max value");
    }

    public T addEndListener(OnAnimationEndListener onAnimationEndListener) {
        if (!this.f5458k.contains(onAnimationEndListener)) {
            this.f5458k.add(onAnimationEndListener);
        }
        return this;
    }

    public T addUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        if (!isRunning()) {
            if (!this.f5459l.contains(onAnimationUpdateListener)) {
                this.f5459l.add(onAnimationUpdateListener);
            }
            return this;
        }
        throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
    }

    abstract float b(float f4, float f5);

    public void cancel() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f5453f) {
                a(true);
                return;
            }
            return;
        }
        throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.f5457j * 0.75f;
    }

    @Override // androidx.dynamicanimation.animation.AnimationHandler.AnimationFrameCallback
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean doAnimationFrame(long j4) {
        long j5 = this.f5456i;
        if (j5 == 0) {
            this.f5456i = j4;
            h(this.f5449b);
            return false;
        }
        this.f5456i = j4;
        boolean k4 = k(j4 - j5);
        float min = Math.min(this.f5449b, this.f5454g);
        this.f5449b = min;
        float max = Math.max(min, this.f5455h);
        this.f5449b = max;
        h(max);
        if (k4) {
            a(false);
        }
        return k4;
    }

    abstract boolean e(float f4, float f5);

    public float getMinimumVisibleChange() {
        return this.f5457j;
    }

    void h(float f4) {
        this.f5452e.setValue(this.f5451d, f4);
        for (int i2 = 0; i2 < this.f5459l.size(); i2++) {
            if (this.f5459l.get(i2) != null) {
                this.f5459l.get(i2).onAnimationUpdate(this, this.f5449b, this.f5448a);
            }
        }
        g(this.f5459l);
    }

    abstract void i(float f4);

    public boolean isRunning() {
        return this.f5453f;
    }

    abstract boolean k(long j4);

    public void removeEndListener(OnAnimationEndListener onAnimationEndListener) {
        f(this.f5458k, onAnimationEndListener);
    }

    public void removeUpdateListener(OnAnimationUpdateListener onAnimationUpdateListener) {
        f(this.f5459l, onAnimationUpdateListener);
    }

    public T setMaxValue(float f4) {
        this.f5454g = f4;
        return this;
    }

    public T setMinValue(float f4) {
        this.f5455h = f4;
        return this;
    }

    public T setMinimumVisibleChange(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        if (f4 > 0.0f) {
            this.f5457j = f4;
            i(f4 * 0.75f);
            return this;
        }
        throw new IllegalArgumentException("Minimum visible change must be positive.");
    }

    public T setStartValue(float f4) {
        this.f5449b = f4;
        this.f5450c = true;
        return this;
    }

    public T setStartVelocity(float f4) {
        this.f5448a = f4;
        return this;
    }

    public void start() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f5453f) {
                return;
            }
            j();
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K> DynamicAnimation(K k4, FloatPropertyCompat<K> floatPropertyCompat) {
        this.f5448a = 0.0f;
        this.f5449b = Float.MAX_VALUE;
        this.f5450c = false;
        this.f5453f = false;
        this.f5454g = Float.MAX_VALUE;
        this.f5455h = -Float.MAX_VALUE;
        this.f5456i = 0L;
        this.f5458k = new ArrayList<>();
        this.f5459l = new ArrayList<>();
        this.f5451d = k4;
        this.f5452e = floatPropertyCompat;
        if (floatPropertyCompat != ROTATION && floatPropertyCompat != ROTATION_X && floatPropertyCompat != ROTATION_Y) {
            if (floatPropertyCompat == ALPHA) {
                this.f5457j = 0.00390625f;
                return;
            } else if (floatPropertyCompat != SCALE_X && floatPropertyCompat != SCALE_Y) {
                this.f5457j = 1.0f;
                return;
            } else {
                this.f5457j = 0.00390625f;
                return;
            }
        }
        this.f5457j = 0.1f;
    }
}
