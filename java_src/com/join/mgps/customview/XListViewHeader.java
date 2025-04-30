package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class XListViewHeader extends LinearLayout {

    /* renamed from: i  reason: collision with root package name */
    public static final int f46688i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f46689j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f46690k = 2;

    /* renamed from: l  reason: collision with root package name */
    public static final int f46691l = 3;

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f46692a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f46693b;

    /* renamed from: c  reason: collision with root package name */
    private ProgressBar f46694c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f46695d;

    /* renamed from: e  reason: collision with root package name */
    private int f46696e;

    /* renamed from: f  reason: collision with root package name */
    private Animation f46697f;

    /* renamed from: g  reason: collision with root package name */
    private Animation f46698g;

    /* renamed from: h  reason: collision with root package name */
    private final int f46699h;

    public XListViewHeader(Context context) {
        super(context);
        this.f46696e = 0;
        this.f46699h = 180;
        a(context);
    }

    private void a(Context context) {
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.xlistview_header, (ViewGroup) null);
        this.f46692a = linearLayout;
        addView(linearLayout, layoutParams);
        setGravity(80);
        this.f46693b = (ImageView) findViewById(R.id.xlistview_header_arrow);
        this.f46695d = (TextView) findViewById(R.id.xlistview_header_hint_textview);
        this.f46694c = (ProgressBar) findViewById(R.id.xlistview_header_progressbar);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f46697f = rotateAnimation;
        rotateAnimation.setDuration(180L);
        this.f46697f.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f46698g = rotateAnimation2;
        rotateAnimation2.setDuration(180L);
        this.f46698g.setFillAfter(true);
    }

    public int getVisibleHeight() {
        return this.f46692a.getHeight();
    }

    public void setState(int i2) {
        if (i2 == this.f46696e) {
            return;
        }
        if (i2 == 2) {
            this.f46693b.clearAnimation();
            this.f46693b.setVisibility(4);
            this.f46694c.setVisibility(0);
        } else {
            this.f46693b.setVisibility(4);
            this.f46694c.setVisibility(4);
        }
        if (i2 == 0) {
            this.f46695d.setText(R.string.xlistview_header_hint_normal);
        } else if (i2 != 1) {
            if (i2 == 2) {
                this.f46695d.setText(R.string.xlistview_header_hint_loading);
            } else if (i2 == 3) {
                this.f46695d.setText(R.string.xlistview_header_nomore);
            }
        } else if (this.f46696e != 1) {
            this.f46695d.setText(R.string.xlistview_header_hint_ready);
        }
        this.f46696e = i2;
    }

    public void setVisibleHeight(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f46692a.getLayoutParams();
        layoutParams.height = i2;
        this.f46692a.setLayoutParams(layoutParams);
    }

    public void setmState(int i2) {
        this.f46696e = i2;
    }

    public XListViewHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46696e = 0;
        this.f46699h = 180;
        a(context);
    }
}
