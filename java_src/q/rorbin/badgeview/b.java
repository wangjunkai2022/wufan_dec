package q.rorbin.badgeview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.Random;
/* compiled from: BadgeAnimator.java */
/* loaded from: classes5.dex */
public class b extends ValueAnimator {

    /* renamed from: a  reason: collision with root package name */
    private c[][] f73991a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<QBadgeView> f73992b;

    /* compiled from: BadgeAnimator.java */
    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            QBadgeView qBadgeView = (QBadgeView) b.this.f73992b.get();
            if (qBadgeView != null && qBadgeView.isShown()) {
                qBadgeView.invalidate();
            } else {
                b.this.cancel();
            }
        }
    }

    /* compiled from: BadgeAnimator.java */
    /* renamed from: q.rorbin.badgeview.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0497b extends AnimatorListenerAdapter {
        C0497b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            QBadgeView qBadgeView = (QBadgeView) b.this.f73992b.get();
            if (qBadgeView != null) {
                qBadgeView.L();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BadgeAnimator.java */
    /* loaded from: classes5.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        Random f73995a;

        /* renamed from: b  reason: collision with root package name */
        float f73996b;

        /* renamed from: c  reason: collision with root package name */
        float f73997c;

        /* renamed from: d  reason: collision with root package name */
        float f73998d;

        /* renamed from: e  reason: collision with root package name */
        int f73999e;

        /* renamed from: f  reason: collision with root package name */
        int f74000f;

        /* renamed from: g  reason: collision with root package name */
        Paint f74001g;

        public c() {
            Paint paint = new Paint();
            this.f74001g = paint;
            paint.setAntiAlias(true);
            this.f74001g.setStyle(Paint.Style.FILL);
            this.f73995a = new Random();
        }

        public void a(float f4, Canvas canvas) {
            this.f74001g.setColor(this.f73999e);
            this.f73996b += this.f73995a.nextInt(this.f74000f) * 0.1f * (this.f73995a.nextFloat() - 0.5f);
            float nextInt = this.f73997c + (this.f73995a.nextInt(this.f74000f) * 0.1f * (this.f73995a.nextFloat() - 0.5f));
            this.f73997c = nextInt;
            float f5 = this.f73996b;
            float f6 = this.f73998d;
            canvas.drawCircle(f5, nextInt, f6 - (f4 * f6), this.f74001g);
        }
    }

    public b(Bitmap bitmap, PointF pointF, QBadgeView qBadgeView) {
        this.f73992b = new WeakReference<>(qBadgeView);
        setFloatValues(0.0f, 1.0f);
        setDuration(500L);
        this.f73991a = c(bitmap, pointF);
        addUpdateListener(new a());
        addListener(new C0497b());
    }

    private c[][] c(Bitmap bitmap, PointF pointF) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float min = Math.min(width, height) / 6.0f;
        float width2 = pointF.x - (bitmap.getWidth() / 2.0f);
        float height2 = pointF.y - (bitmap.getHeight() / 2.0f);
        c[][] cVarArr = (c[][]) Array.newInstance(c.class, (int) (height / min), (int) (width / min));
        for (int i2 = 0; i2 < cVarArr.length; i2++) {
            for (int i4 = 0; i4 < cVarArr[i2].length; i4++) {
                c cVar = new c();
                float f4 = i4 * min;
                float f5 = i2 * min;
                cVar.f73999e = bitmap.getPixel((int) f4, (int) f5);
                cVar.f73996b = f4 + width2;
                cVar.f73997c = f5 + height2;
                cVar.f73998d = min;
                cVar.f74000f = Math.max(width, height);
                cVarArr[i2][i4] = cVar;
            }
        }
        bitmap.recycle();
        return cVarArr;
    }

    public void b(Canvas canvas) {
        for (int i2 = 0; i2 < this.f73991a.length; i2++) {
            int i4 = 0;
            while (true) {
                c[][] cVarArr = this.f73991a;
                if (i4 < cVarArr[i2].length) {
                    cVarArr[i2][i4].a(Float.parseFloat(getAnimatedValue().toString()), canvas);
                    i4++;
                }
            }
        }
    }
}
