package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.BitmapCompat;
import androidx.core.view.GravityCompat;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class RoundedBitmapDrawableFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4345a = "RoundedBitmapDrawableFa";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DefaultRoundedBitmapDrawable extends RoundedBitmapDrawable {
        DefaultRoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
            super(resources, bitmap);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        void b(int i2, int i4, int i5, Rect rect, Rect rect2) {
            GravityCompat.apply(i2, i4, i5, rect, rect2, 0);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public boolean hasMipMap() {
            Bitmap bitmap = this.f4332a;
            return bitmap != null && BitmapCompat.hasMipMap(bitmap);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public void setMipMap(boolean z3) {
            Bitmap bitmap = this.f4332a;
            if (bitmap != null) {
                BitmapCompat.setHasMipMap(bitmap, z3);
                invalidateSelf();
            }
        }
    }

    private RoundedBitmapDrawableFactory() {
    }

    @NonNull
    public static RoundedBitmapDrawable create(@NonNull Resources resources, @Nullable Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new RoundedBitmapDrawable21(resources, bitmap);
        }
        return new DefaultRoundedBitmapDrawable(resources, bitmap);
    }

    @NonNull
    public static RoundedBitmapDrawable create(@NonNull Resources resources, @NonNull String str) {
        RoundedBitmapDrawable create = create(resources, BitmapFactory.decodeFile(str));
        if (create.getBitmap() == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("RoundedBitmapDrawable cannot decode ");
            sb.append(str);
        }
        return create;
    }

    @NonNull
    public static RoundedBitmapDrawable create(@NonNull Resources resources, @NonNull InputStream inputStream) {
        RoundedBitmapDrawable create = create(resources, BitmapFactory.decodeStream(inputStream));
        if (create.getBitmap() == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("RoundedBitmapDrawable cannot decode ");
            sb.append(inputStream);
        }
        return create;
    }
}
