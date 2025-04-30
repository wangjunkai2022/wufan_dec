package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(21)
/* loaded from: classes.dex */
class RoundedBitmapDrawable21 extends RoundedBitmapDrawable {
    /* JADX INFO: Access modifiers changed from: protected */
    public RoundedBitmapDrawable21(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
    }

    @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
    void b(int i2, int i4, int i5, Rect rect, Rect rect2) {
        Gravity.apply(i2, i4, i5, rect, rect2, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        e();
        outline.setRoundRect(this.f4339h, getCornerRadius());
    }

    @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
    public boolean hasMipMap() {
        Bitmap bitmap = this.f4332a;
        return bitmap != null && bitmap.hasMipMap();
    }

    @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
    public void setMipMap(boolean z3) {
        Bitmap bitmap = this.f4332a;
        if (bitmap != null) {
            bitmap.setHasMipMap(z3);
            invalidateSelf();
        }
    }
}
