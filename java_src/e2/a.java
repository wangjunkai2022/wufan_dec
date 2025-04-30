package e2;

import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
/* compiled from: SmallVideoTouch.java */
/* loaded from: classes4.dex */
public class a implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f65150a;

    /* renamed from: b  reason: collision with root package name */
    private int f65151b;

    /* renamed from: c  reason: collision with root package name */
    private int f65152c;

    /* renamed from: d  reason: collision with root package name */
    private int f65153d;

    /* renamed from: e  reason: collision with root package name */
    private int f65154e;

    /* renamed from: f  reason: collision with root package name */
    private int f65155f;

    /* renamed from: g  reason: collision with root package name */
    private GSYBaseVideoPlayer f65156g;

    public a(GSYBaseVideoPlayer gSYBaseVideoPlayer, int i2, int i4) {
        this.f65152c = i2;
        this.f65153d = i4;
        this.f65156g = gSYBaseVideoPlayer;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f65150a = rawX;
            this.f65151b = rawY;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f65156g.getLayoutParams();
            this.f65154e = rawX - layoutParams.leftMargin;
            this.f65155f = rawY - layoutParams.topMargin;
        } else if (action == 1) {
            return Math.abs(this.f65151b - rawY) >= 5 || Math.abs(this.f65150a - rawX) >= 5;
        } else if (action == 2) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f65156g.getLayoutParams();
            int i2 = rawX - this.f65154e;
            layoutParams2.leftMargin = i2;
            int i4 = rawY - this.f65155f;
            layoutParams2.topMargin = i4;
            int i5 = this.f65152c;
            if (i2 >= i5) {
                layoutParams2.leftMargin = i5;
            }
            int i6 = this.f65153d;
            if (i4 >= i6) {
                layoutParams2.topMargin = i6;
            }
            if (layoutParams2.leftMargin <= 0) {
                layoutParams2.leftMargin = 0;
            }
            if (layoutParams2.topMargin <= 0) {
                layoutParams2.topMargin = 0;
            }
            this.f65156g.setLayoutParams(layoutParams2);
        }
        return false;
    }
}
