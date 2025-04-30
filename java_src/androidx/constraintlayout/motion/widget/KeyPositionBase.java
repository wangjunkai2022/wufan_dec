package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.view.View;
import java.util.HashSet;
/* loaded from: classes.dex */
abstract class KeyPositionBase extends Key {

    /* renamed from: g  reason: collision with root package name */
    protected static final float f2839g = 20.0f;

    /* renamed from: f  reason: collision with root package name */
    int f2840f = Key.UNSET;

    abstract void e(int layoutWidth, int layoutHeight, float start_x, float start_y, float end_x, float end_y);

    abstract float f();

    abstract float g();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
    }

    public abstract boolean intersects(int layoutWidth, int layoutHeight, RectF start, RectF end, float x3, float y3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void positionAttributes(View view, RectF start, RectF end, float x3, float y3, String[] attribute, float[] value);
}
