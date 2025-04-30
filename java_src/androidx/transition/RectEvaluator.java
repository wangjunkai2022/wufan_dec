package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
/* loaded from: classes2.dex */
class RectEvaluator implements TypeEvaluator<Rect> {

    /* renamed from: a  reason: collision with root package name */
    private Rect f7674a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectEvaluator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectEvaluator(Rect rect) {
        this.f7674a = rect;
    }

    @Override // android.animation.TypeEvaluator
    public Rect evaluate(float f4, Rect rect, Rect rect2) {
        int i2 = rect.left;
        int i4 = i2 + ((int) ((rect2.left - i2) * f4));
        int i5 = rect.top;
        int i6 = i5 + ((int) ((rect2.top - i5) * f4));
        int i7 = rect.right;
        int i8 = i7 + ((int) ((rect2.right - i7) * f4));
        int i9 = rect.bottom;
        int i10 = i9 + ((int) ((rect2.bottom - i9) * f4));
        Rect rect3 = this.f7674a;
        if (rect3 == null) {
            return new Rect(i4, i6, i8, i10);
        }
        rect3.set(i4, i6, i8, i10);
        return this.f7674a;
    }
}
