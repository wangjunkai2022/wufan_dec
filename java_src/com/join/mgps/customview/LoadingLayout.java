package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
/* loaded from: classes3.dex */
public class LoadingLayout extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f45756a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f45757b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f45758c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f45759d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f45760e;

    /* renamed from: f  reason: collision with root package name */
    private LinearLayout f45761f;

    /* renamed from: g  reason: collision with root package name */
    private LinearLayout f45762g;

    /* renamed from: h  reason: collision with root package name */
    private LinearLayout f45763h;

    /* renamed from: i  reason: collision with root package name */
    private LinearLayout f45764i;

    /* renamed from: j  reason: collision with root package name */
    private ImageView f45765j;

    /* renamed from: k  reason: collision with root package name */
    private b f45766k;

    /* renamed from: l  reason: collision with root package name */
    private a f45767l;

    /* loaded from: classes3.dex */
    public interface a {
        void noDataCallBack();
    }

    /* loaded from: classes3.dex */
    public interface b {
        void callBack();
    }

    public LoadingLayout(Context context) {
        super(context);
    }

    public void a(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(16908290);
        View childAt = viewGroup.getChildAt(0);
        viewGroup.removeView(childAt);
        addView(childAt, 0);
        viewGroup.addView(this);
    }

    public void b(View view, int i2) {
        try {
            View findViewById = view.findViewById(i2);
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            if (viewGroup != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= viewGroup.getChildCount()) {
                        break;
                    } else if (viewGroup.getChildAt(i4).getId() == i2) {
                        viewGroup.removeView(findViewById);
                        viewGroup.addView(this, i4, findViewById.getLayoutParams());
                        break;
                    } else {
                        i4++;
                    }
                }
                addView(findViewById, 0);
                return;
            }
            throw new Exception("the view must has a parent");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void c(View view, int i2) {
        try {
            View findViewById = view.findViewById(i2);
            if (findViewById == null) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            if (viewGroup == null) {
                addView(findViewById, 0);
                return;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= viewGroup.getChildCount()) {
                    break;
                } else if (viewGroup.getChildAt(i4).getId() == i2) {
                    viewGroup.removeView(findViewById);
                    viewGroup.addView(this, i4, findViewById.getLayoutParams());
                    break;
                } else {
                    i4++;
                }
            }
            addView(findViewById, 0);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void d() {
        this.f45761f.setVisibility(8);
        this.f45762g.setVisibility(8);
        this.f45763h.setVisibility(8);
        this.f45764i.setVisibility(8);
    }

    public boolean e() {
        return this.f45761f.getVisibility() == 8;
    }

    public void f(int i2) {
        this.f45765j.setVisibility(i2);
    }

    public void g() {
        d();
        this.f45762g.setVisibility(0);
    }

    public void h() {
        d();
        this.f45761f.setVisibility(0);
    }

    public void i() {
        d();
        this.f45763h.setVisibility(0);
    }

    public void j() {
        d();
        this.f45764i.setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.relodingimag /* 2131299601 */:
                b bVar = this.f45766k;
                if (bVar != null) {
                    bVar.callBack();
                    return;
                }
                return;
            case R.id.setAll /* 2131299872 */:
                a aVar = this.f45767l;
                if (aVar != null) {
                    aVar.noDataCallBack();
                    return;
                }
                return;
            case R.id.setNetwork /* 2131299873 */:
                UtilsMy.I2(getContext());
                return;
            default:
                return;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.setNetwork).setOnClickListener(this);
        findViewById(R.id.relodingimag).setOnClickListener(this);
        this.f45756a = (TextView) findViewById(R.id.failedMessage);
        this.f45761f = (LinearLayout) findViewById(R.id.loding_layout);
        this.f45764i = (LinearLayout) findViewById(R.id.nodata_layout);
        this.f45762g = (LinearLayout) findViewById(R.id.loding_faile);
        this.f45763h = (LinearLayout) findViewById(R.id.loading_none);
        this.f45765j = (ImageView) findViewById(R.id.noneReloadImage);
        this.f45757b = (TextView) findViewById(R.id.noneMessage);
        this.f45758c = (TextView) findViewById(R.id.setAll);
        this.f45760e = (TextView) findViewById(R.id.textView2);
        this.f45759d = (TextView) findViewById(R.id.textView_nodata);
        this.f45758c.setOnClickListener(this);
        this.f45761f.setOnClickListener(null);
        this.f45762g.setOnClickListener(null);
        this.f45763h.setOnClickListener(null);
    }

    public void setFailLayoutBgAlpha(float f4) {
        this.f45762g.setAlpha(f4);
    }

    public void setFailedMessage(String str) {
        this.f45756a.setText(str);
    }

    public void setLoadingHintMsg(String str) {
        this.f45760e.setText(str);
    }

    public void setLoadingLayoutBGColor(int i2) {
        this.f45761f.setBackgroundColor(i2);
    }

    public void setLoadingLayoutBgAlpha(float f4) {
        this.f45761f.setAlpha(f4);
    }

    public void setLoadingLayoutMarginTop(int i2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45761f.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f45762g.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f45762g.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f45762g.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams2.topMargin = i2;
        layoutParams3.topMargin = i2;
        layoutParams4.topMargin = i2;
        this.f45761f.setLayoutParams(layoutParams);
        this.f45762g.setLayoutParams(layoutParams2);
        this.f45764i.setLayoutParams(layoutParams4);
        this.f45763h.setLayoutParams(layoutParams3);
    }

    public void setNoDataAll(String str) {
        this.f45758c.setText(str);
    }

    public void setNoDataCallBackListener(a aVar) {
        this.f45767l = aVar;
    }

    public void setNoDataImage(int i2) {
        this.f45765j.setImageResource(i2);
    }

    public void setNoDataMsg(String str) {
        this.f45757b.setText(str);
    }

    public void setRefreshCallBackListener(b bVar) {
        this.f45766k = bVar;
    }

    public void setTextViewNoData(String str) {
        this.f45759d.setText(str);
    }

    public LoadingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setNoDataImage(Bitmap bitmap) {
        this.f45765j.setImageBitmap(bitmap);
    }

    public LoadingLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
