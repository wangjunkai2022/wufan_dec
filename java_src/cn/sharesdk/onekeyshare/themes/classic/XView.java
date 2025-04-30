package cn.sharesdk.onekeyshare.themes.classic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
/* loaded from: classes2.dex */
public class XView extends View {
    private float ratio;

    public XView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(-6250336);
        float width = getWidth() / 2;
        canvas.drawRect(width, 0.0f, getWidth(), getHeight() / 2, paint);
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStrokeWidth(this.ratio * 3.0f);
        paint2.setColor(-1);
        float f4 = this.ratio * 8.0f;
        float f5 = width + f4;
        float f6 = width - f4;
        canvas.drawLine(f5, f4, getWidth() - f4, f6, paint2);
        canvas.drawLine(f5, f6, getWidth() - f4, f4, paint2);
    }

    public void setRatio(float f4) {
        this.ratio = f4;
    }
}
