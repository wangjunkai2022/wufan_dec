package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.os.BuildCompat;
/* loaded from: classes.dex */
public final class EdgeEffectCompat {

    /* renamed from: a  reason: collision with root package name */
    private EdgeEffect f5092a;

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        public static EdgeEffect create(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        @DoNotInline
        public static float getDistance(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable unused) {
                return 0.0f;
            }
        }

        @DoNotInline
        public static float onPullDistance(EdgeEffect edgeEffect, float f4, float f5) {
            try {
                return edgeEffect.onPullDistance(f4, f5);
            } catch (Throwable unused) {
                edgeEffect.onPull(f4, f5);
                return 0.0f;
            }
        }
    }

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.f5092a = new EdgeEffect(context);
    }

    @NonNull
    public static EdgeEffect create(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        if (BuildCompat.isAtLeastS()) {
            return Api31Impl.create(context, attributeSet);
        }
        return new EdgeEffect(context);
    }

    public static float getDistance(@NonNull EdgeEffect edgeEffect) {
        if (BuildCompat.isAtLeastS()) {
            return Api31Impl.getDistance(edgeEffect);
        }
        return 0.0f;
    }

    public static float onPullDistance(@NonNull EdgeEffect edgeEffect, float f4, float f5) {
        if (BuildCompat.isAtLeastS()) {
            return Api31Impl.onPullDistance(edgeEffect, f4, f5);
        }
        onPull(edgeEffect, f4, f5);
        return f4;
    }

    @Deprecated
    public boolean draw(Canvas canvas) {
        return this.f5092a.draw(canvas);
    }

    @Deprecated
    public void finish() {
        this.f5092a.finish();
    }

    @Deprecated
    public boolean isFinished() {
        return this.f5092a.isFinished();
    }

    @Deprecated
    public boolean onAbsorb(int i2) {
        this.f5092a.onAbsorb(i2);
        return true;
    }

    @Deprecated
    public boolean onPull(float f4) {
        this.f5092a.onPull(f4);
        return true;
    }

    @Deprecated
    public boolean onRelease() {
        this.f5092a.onRelease();
        return this.f5092a.isFinished();
    }

    @Deprecated
    public void setSize(int i2, int i4) {
        this.f5092a.setSize(i2, i4);
    }

    @Deprecated
    public boolean onPull(float f4, float f5) {
        onPull(this.f5092a, f4, f5);
        return true;
    }

    public static void onPull(@NonNull EdgeEffect edgeEffect, float f4, float f5) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f4, f5);
        } else {
            edgeEffect.onPull(f4);
        }
    }
}
