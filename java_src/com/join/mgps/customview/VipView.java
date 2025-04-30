package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import m.framework.ui.widget.asyncview.AsyncImageView;
/* loaded from: classes3.dex */
public class VipView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    Context f46495a;

    /* renamed from: b  reason: collision with root package name */
    int f46496b;

    /* renamed from: c  reason: collision with root package name */
    int f46497c;

    public VipView(Context context) {
        super(context);
        this.f46495a = context;
    }

    private int a(int i2) {
        switch (i2) {
            case 2:
                return R.drawable.vip_gold_number_2;
            case 3:
                return R.drawable.vip_gold_number_3;
            case 4:
                return R.drawable.vip_gold_number_4;
            case 5:
                return R.drawable.vip_gold_number_5;
            case 6:
                return R.drawable.vip_gold_number_6;
            case 7:
                return R.drawable.vip_gold_number_7;
            case 8:
                return R.drawable.vip_gold_number_8;
            case 9:
                return R.drawable.vip_gold_number_9;
            default:
                return R.drawable.vip_gold_number_1;
        }
    }

    public void setSize(int i2, int i4) {
        this.f46496b = i2;
        this.f46497c = i4;
    }

    public void setVipData(int i2, int i4) {
        int i5;
        removeAllViewsInLayout();
        ImageView imageView = new ImageView(this.f46495a);
        addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.gravity = 16;
        int i6 = this.f46496b;
        if (i6 != 0 && (i5 = this.f46497c) != 0) {
            layoutParams.height = i5;
            layoutParams.width = i6;
        } else {
            layoutParams.height = this.f46495a.getResources().getDimensionPixelOffset(R.dimen.wdp24);
            layoutParams.width = this.f46495a.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        }
        imageView.setImageResource(AsyncImageView.DEFAULT_TRANSPARENT);
        if (i4 > 0) {
            setVisibility(0);
            imageView.setVisibility(0);
            imageView.setImageResource(a(i4));
        } else if (i2 > 0) {
            setVisibility(0);
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.vip_red_back);
            com.join.mgps.Util.i0.W0(imageView);
        } else {
            setVisibility(8);
            imageView.setVisibility(8);
        }
        invalidate();
    }

    public void setVipDataForUserCenter(int i2, int i4) {
        removeAllViewsInLayout();
        ImageView imageView = new ImageView(this.f46495a);
        addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.gravity = 16;
        layoutParams.height = this.f46495a.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        layoutParams.width = this.f46495a.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        if (i4 > 0) {
            imageView.setImageResource(a(i4));
        } else if (i2 > 0) {
            imageView.setImageResource(R.drawable.vip_red_back);
            com.join.mgps.Util.i0.W0(imageView);
        } else {
            imageView.setImageResource(R.drawable.vip_defalut_image);
        }
        invalidate();
    }

    public VipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46495a = context;
    }

    public VipView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46495a = context;
    }

    public void setVipDataForUserCenter(int i2, int i4, boolean z3) {
        removeAllViewsInLayout();
        ImageView imageView = new ImageView(this.f46495a);
        addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.gravity = 16;
        layoutParams.height = this.f46495a.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        layoutParams.width = this.f46495a.getResources().getDimensionPixelOffset(R.dimen.wdp24);
        if (i4 > 0) {
            imageView.setImageResource(a(i4));
        } else if (i2 > 0) {
            imageView.setImageResource(R.drawable.vip_red_back);
        } else {
            imageView.setImageResource(R.drawable.vip_defalut_image_god);
        }
        invalidate();
    }
}
