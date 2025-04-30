package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* loaded from: classes2.dex */
public interface Animatable2Compat extends Animatable {

    /* loaded from: classes2.dex */
    public static abstract class AnimationCallback {

        /* renamed from: a  reason: collision with root package name */
        Animatable2.AnimationCallback f7867a;

        /* JADX INFO: Access modifiers changed from: package-private */
        @RequiresApi(23)
        public Animatable2.AnimationCallback a() {
            if (this.f7867a == null) {
                this.f7867a = new Animatable2.AnimationCallback() { // from class: androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback.1
                    @Override // android.graphics.drawable.Animatable2.AnimationCallback
                    public void onAnimationEnd(Drawable drawable) {
                        AnimationCallback.this.onAnimationEnd(drawable);
                    }

                    @Override // android.graphics.drawable.Animatable2.AnimationCallback
                    public void onAnimationStart(Drawable drawable) {
                        AnimationCallback.this.onAnimationStart(drawable);
                    }
                };
            }
            return this.f7867a;
        }

        public void onAnimationEnd(Drawable drawable) {
        }

        public void onAnimationStart(Drawable drawable) {
        }
    }

    void clearAnimationCallbacks();

    void registerAnimationCallback(@NonNull AnimationCallback animationCallback);

    boolean unregisterAnimationCallback(@NonNull AnimationCallback animationCallback);
}
