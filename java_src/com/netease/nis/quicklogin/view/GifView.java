package com.netease.nis.quicklogin.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.widget.ImageView;
import com.netease.nis.basesdk.Logger;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes4.dex */
public class GifView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Movie f54343a;

    /* renamed from: b  reason: collision with root package name */
    private Canvas f54344b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f54345c;

    /* renamed from: d  reason: collision with root package name */
    private BitmapDrawable f54346d;

    /* renamed from: e  reason: collision with root package name */
    private long f54347e;

    public GifView(Context context) {
        super(context);
        this.f54347e = 0L;
    }

    private void a() {
        if (this.f54343a != null) {
            this.f54344b.save();
            long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            if (this.f54347e == 0) {
                this.f54347e = currentThreadTimeMillis;
            }
            this.f54343a.setTime((int) ((currentThreadTimeMillis - this.f54347e) % this.f54343a.duration()));
            this.f54343a.draw(this.f54344b, 0.0f, 0.0f);
            if (Build.VERSION.SDK_INT >= 16) {
                setBackground(this.f54346d);
            } else {
                setBackgroundDrawable(this.f54346d);
            }
            this.f54344b.restore();
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a();
    }

    public void setGifDrawable(Drawable drawable) {
        Movie movie;
        if (drawable == null || (movie = this.f54343a) == null) {
            return;
        }
        this.f54345c = Bitmap.createBitmap(movie.width(), this.f54343a.height(), Bitmap.Config.RGB_565);
        this.f54344b = new Canvas(this.f54345c);
        this.f54346d = new BitmapDrawable(this.f54345c);
    }

    public void setGifResId(int i2) {
        if (i2 == 0) {
            Logger.e("[GifView#setGifResId] 0 is not a valid resource id,please check your gif resource name");
            return;
        }
        Movie decodeStream = Movie.decodeStream(getResources().openRawResource(i2));
        this.f54343a = decodeStream;
        this.f54345c = Bitmap.createBitmap(decodeStream.width(), this.f54343a.height(), Bitmap.Config.RGB_565);
        this.f54344b = new Canvas(this.f54345c);
        this.f54346d = new BitmapDrawable(this.f54345c);
    }
}
