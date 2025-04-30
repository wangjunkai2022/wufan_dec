package cn.sharesdk.onekeyshare.themes.classic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
/* loaded from: classes2.dex */
public class IndicatorView extends View {
    private static final int DESIGN_BOTTOM_HEIGHT = 52;
    private static final int DESIGN_INDICATOR_DISTANCE = 14;
    private static final int DESIGN_INDICATOR_RADIUS = 6;
    private int count;
    private int current;

    public IndicatorView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i2;
        if (this.count <= 1) {
            setVisibility(8);
            return;
        }
        float height = getHeight();
        float f4 = (6.0f * height) / 52.0f;
        float f5 = (14.0f * height) / 52.0f;
        float f6 = f4 * 2.0f;
        float width = (getWidth() - ((this.count * f6) + ((i2 - 1) * f5))) / 2.0f;
        float f7 = height / 2.0f;
        canvas.drawColor(-1);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        for (int i4 = 0; i4 < this.count; i4++) {
            if (i4 == this.current) {
                paint.setColor(-10653280);
            } else {
                paint.setColor(-5262921);
            }
            canvas.drawCircle(((f6 + f5) * i4) + width, f7, f4, paint);
        }
    }

    public void onScreenChange(int i2, int i4) {
        if (i2 != this.current) {
            this.current = i2;
            postInvalidate();
        }
    }

    public void setScreenCount(int i2) {
        this.count = i2;
    }
}
