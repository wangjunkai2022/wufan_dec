package androidx.core.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class SharedElementCallback {

    /* renamed from: b  reason: collision with root package name */
    private static final int f4106b = 1048576;

    /* renamed from: c  reason: collision with root package name */
    private static final String f4107c = "sharedElement:snapshot:bitmap";

    /* renamed from: d  reason: collision with root package name */
    private static final String f4108d = "sharedElement:snapshot:imageScaleType";

    /* renamed from: e  reason: collision with root package name */
    private static final String f4109e = "sharedElement:snapshot:imageMatrix";

    /* renamed from: a  reason: collision with root package name */
    private Matrix f4110a;

    /* loaded from: classes.dex */
    public interface OnSharedElementsReadyListener {
        void onSharedElementsReady();
    }

    private static Bitmap a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return null;
        }
        float min = Math.min(1.0f, 1048576.0f / (intrinsicWidth * intrinsicHeight));
        if ((drawable instanceof BitmapDrawable) && min == 1.0f) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int i2 = (int) (intrinsicWidth * min);
        int i4 = (int) (intrinsicHeight * min);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Rect bounds = drawable.getBounds();
        int i5 = bounds.left;
        int i6 = bounds.top;
        int i7 = bounds.right;
        int i8 = bounds.bottom;
        drawable.setBounds(0, 0, i2, i4);
        drawable.draw(canvas);
        drawable.setBounds(i5, i6, i7, i8);
        return createBitmap;
    }

    public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
        Bitmap a4;
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            Drawable drawable = imageView.getDrawable();
            Drawable background = imageView.getBackground();
            if (drawable != null && background == null && (a4 = a(drawable)) != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(f4107c, a4);
                bundle.putString(f4108d, imageView.getScaleType().toString());
                if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                    float[] fArr = new float[9];
                    imageView.getImageMatrix().getValues(fArr);
                    bundle.putFloatArray(f4109e, fArr);
                }
                return bundle;
            }
        }
        int round = Math.round(rectF.width());
        int round2 = Math.round(rectF.height());
        if (round <= 0 || round2 <= 0) {
            return null;
        }
        float min = Math.min(1.0f, 1048576.0f / (round * round2));
        int i2 = (int) (round * min);
        int i4 = (int) (round2 * min);
        if (this.f4110a == null) {
            this.f4110a = new Matrix();
        }
        this.f4110a.set(matrix);
        this.f4110a.postTranslate(-rectF.left, -rectF.top);
        this.f4110a.postScale(min, min);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.concat(this.f4110a);
        view.draw(canvas);
        return createBitmap;
    }

    public View onCreateSnapshotView(Context context, Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            Bitmap bitmap = (Bitmap) bundle.getParcelable(f4107c);
            if (bitmap == null) {
                return null;
            }
            ImageView imageView = new ImageView(context);
            imageView.setImageBitmap(bitmap);
            imageView.setScaleType(ImageView.ScaleType.valueOf(bundle.getString(f4108d)));
            if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                float[] floatArray = bundle.getFloatArray(f4109e);
                Matrix matrix = new Matrix();
                matrix.setValues(floatArray);
                imageView.setImageMatrix(matrix);
                return imageView;
            }
            return imageView;
        } else if (parcelable instanceof Bitmap) {
            ImageView imageView2 = new ImageView(context);
            imageView2.setImageBitmap((Bitmap) parcelable);
            return imageView2;
        } else {
            return null;
        }
    }

    public void onMapSharedElements(List<String> list, Map<String, View> map) {
    }

    public void onRejectSharedElements(List<View> list) {
    }

    public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
    }

    public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
    }

    public void onSharedElementsArrived(List<String> list, List<View> list2, OnSharedElementsReadyListener onSharedElementsReadyListener) {
        onSharedElementsReadyListener.onSharedElementsReady();
    }
}
