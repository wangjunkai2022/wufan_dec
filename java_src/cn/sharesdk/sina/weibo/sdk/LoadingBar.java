package cn.sharesdk.sina.weibo.sdk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes2.dex */
public class LoadingBar extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private int f8965a;

    /* renamed from: b  reason: collision with root package name */
    private int f8966b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f8967c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f8968d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f8969e;

    public LoadingBar(Context context) {
        super(context);
        this.f8969e = new Runnable() { // from class: cn.sharesdk.sina.weibo.sdk.LoadingBar.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingBar.this.f8965a++;
                LoadingBar loadingBar = LoadingBar.this;
                loadingBar.a(loadingBar.f8965a);
            }
        };
        a(context);
    }

    private Rect b() {
        int left = getLeft();
        int top = getTop();
        return new Rect(0, 0, (getLeft() + (((getRight() - getLeft()) * this.f8965a) / 100)) - left, getBottom() - top);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f8967c.setColor(this.f8966b);
        canvas.drawRect(b(), this.f8967c);
    }

    private void a(Context context) {
        this.f8968d = new Handler();
        this.f8967c = new Paint();
        a();
    }

    public LoadingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public LoadingBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }

    public void a() {
        this.f8966b = -11693826;
    }

    public void a(int i2) {
        if (i2 < 7) {
            this.f8968d.postDelayed(this.f8969e, 70L);
        } else {
            this.f8968d.removeCallbacks(this.f8969e);
            this.f8965a = i2;
        }
        invalidate();
    }
}
