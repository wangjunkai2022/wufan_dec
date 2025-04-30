package fm.jiecao.jcvideoplayer_lib;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
/* loaded from: classes3.dex */
public class JCResizeTextureView extends TextureView {

    /* renamed from: b  reason: collision with root package name */
    protected static final String f65538b = "JCResizeTextureView";

    /* renamed from: a  reason: collision with root package name */
    protected Point f65539a;

    public JCResizeTextureView(Context context) {
        super(context);
        a();
    }

    private void a() {
        this.f65539a = new Point(0, 0);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5;
        int i6;
        StringBuilder sb = new StringBuilder();
        sb.append("onMeasure  [");
        sb.append(hashCode());
        sb.append("] ");
        int rotation = (int) getRotation();
        Point point = this.f65539a;
        int i7 = point.x;
        int i8 = point.y;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("videoWidth = ");
        sb2.append(i7);
        sb2.append(", videoHeight = ");
        sb2.append(i8);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("viewRotation = ");
        sb3.append(rotation);
        if (rotation == 90 || rotation == 270) {
            i4 = i2;
            i2 = i4;
        }
        int defaultSize = TextureView.getDefaultSize(i7, i2);
        int defaultSize2 = TextureView.getDefaultSize(i8, i4);
        if (i7 > 0 && i8 > 0) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i4);
            int size2 = View.MeasureSpec.getSize(i4);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("widthMeasureSpec  [");
            sb4.append(View.MeasureSpec.toString(i2));
            sb4.append("]");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("heightMeasureSpec [");
            sb5.append(View.MeasureSpec.toString(i4));
            sb5.append("]");
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i9 = i7 * size2;
                int i10 = size * i8;
                if (i9 < i10) {
                    defaultSize = i9 / i8;
                } else if (i9 > i10) {
                    i6 = i10 / i7;
                    defaultSize = size;
                    defaultSize2 = i6;
                } else {
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                i6 = (size * i8) / i7;
                if (mode2 == Integer.MIN_VALUE && i6 > size2) {
                    defaultSize = (i7 * size2) / i8;
                    defaultSize2 = size2;
                }
                defaultSize = size;
                defaultSize2 = i6;
            } else if (mode2 == 1073741824) {
                i5 = (size2 * i7) / i8;
                if (mode == Integer.MIN_VALUE && i5 > size) {
                    i6 = (i8 * size) / i7;
                    defaultSize = size;
                    defaultSize2 = i6;
                }
                defaultSize = i5;
                defaultSize2 = size2;
            } else {
                if (mode2 != Integer.MIN_VALUE || i8 <= size2) {
                    size2 = i8;
                    i5 = i7;
                } else {
                    i5 = (size2 * i7) / i8;
                }
                if (mode == Integer.MIN_VALUE && i5 > size) {
                    i6 = (i8 * size) / i7;
                    defaultSize = size;
                    defaultSize2 = i6;
                }
                defaultSize = i5;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.view.View
    public void setRotation(float f4) {
        if (f4 != getRotation()) {
            super.setRotation(f4);
            requestLayout();
        }
    }

    public void setVideoSize(Point point) {
        if (point == null || this.f65539a.equals(point)) {
            return;
        }
        this.f65539a = point;
        requestLayout();
    }

    public JCResizeTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }
}
