package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
class ActionBarBackgroundDrawable extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final ActionBarContainer f761a;

    public ActionBarBackgroundDrawable(ActionBarContainer actionBarContainer) {
        this.f761a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f761a;
        if (actionBarContainer.f769h) {
            Drawable drawable = actionBarContainer.f768g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f766e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f761a;
        Drawable drawable3 = actionBarContainer2.f767f;
        if (drawable3 == null || !actionBarContainer2.f770i) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        ActionBarContainer actionBarContainer = this.f761a;
        if (actionBarContainer.f769h) {
            Drawable drawable = actionBarContainer.f768g;
            if (drawable != null) {
                drawable.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f766e;
        if (drawable2 != null) {
            drawable2.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
