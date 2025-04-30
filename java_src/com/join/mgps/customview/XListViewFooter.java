package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class XListViewFooter extends LinearLayout {

    /* renamed from: g  reason: collision with root package name */
    public static final int f46674g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f46675h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f46676i = 2;

    /* renamed from: j  reason: collision with root package name */
    public static final int f46677j = 3;

    /* renamed from: k  reason: collision with root package name */
    public static final int f46678k = 4;

    /* renamed from: l  reason: collision with root package name */
    public static final int f46679l = 5;

    /* renamed from: m  reason: collision with root package name */
    public static final int f46680m = 6;

    /* renamed from: n  reason: collision with root package name */
    public static final int f46681n = 7;

    /* renamed from: a  reason: collision with root package name */
    private Context f46682a;

    /* renamed from: b  reason: collision with root package name */
    private View f46683b;

    /* renamed from: c  reason: collision with root package name */
    private View f46684c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f46685d;

    /* renamed from: e  reason: collision with root package name */
    private int f46686e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f46687f;

    public XListViewFooter(Context context) {
        super(context);
        c(context);
    }

    private void c(Context context) {
        this.f46682a = context;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.xlistview_footer, (ViewGroup) null);
        addView(linearLayout);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f46683b = linearLayout.findViewById(R.id.xlistview_footer_content);
        this.f46684c = linearLayout.findViewById(R.id.xlistview_footer_progressbar);
        this.f46685d = (TextView) linearLayout.findViewById(R.id.xlistview_footer_hint_textview);
        this.f46687f = (TextView) linearLayout.findViewById(R.id.xlistview_footer_refresh_textview);
    }

    public void a() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f46683b.getLayoutParams();
        layoutParams.height = 0;
        this.f46683b.setLayoutParams(layoutParams);
    }

    public void b() {
        this.f46685d.setVisibility(8);
    }

    public void d() {
        this.f46685d.setVisibility(8);
        this.f46684c.setVisibility(0);
    }

    public void e() {
        this.f46685d.setVisibility(0);
        this.f46684c.setVisibility(8);
    }

    public void f() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f46683b.getLayoutParams();
        layoutParams.height = -2;
        this.f46683b.setLayoutParams(layoutParams);
    }

    public int getBottomMargin() {
        return ((LinearLayout.LayoutParams) this.f46683b.getLayoutParams()).bottomMargin;
    }

    public int getState() {
        return this.f46686e;
    }

    public void setBottomMargin(int i2) {
        if (i2 < 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f46683b.getLayoutParams();
        layoutParams.bottomMargin = i2;
        this.f46683b.setLayoutParams(layoutParams);
    }

    public void setState(int i2) {
        this.f46685d.setVisibility(4);
        this.f46684c.setVisibility(4);
        this.f46685d.setVisibility(4);
        this.f46687f.setVisibility(8);
        if (i2 == 3) {
            this.f46685d.setVisibility(0);
            this.f46685d.setText(R.string.xlistview_header_nomore);
        } else if (i2 == 7) {
            this.f46685d.setVisibility(0);
            this.f46685d.setText("请继续探索更多游戏以获得精准推荐");
            this.f46687f.setVisibility(0);
        } else if (i2 == 1) {
            this.f46685d.setVisibility(0);
            this.f46685d.setText(R.string.xlistview_footer_hint_ready);
        } else if (i2 == 2) {
            this.f46684c.setVisibility(0);
        } else if (i2 == 4) {
            this.f46685d.setVisibility(4);
            this.f46685d.setText(R.string.xlistview_footer_hint_normal);
        } else if (i2 == 5) {
            this.f46685d.setVisibility(0);
            this.f46685d.setText(R.string.xlistview_footer_hint_normal);
        } else {
            this.f46685d.setVisibility(0);
            this.f46685d.setText(R.string.xlistview_footer_hint_normal);
        }
        if (i2 == 6) {
            this.f46685d.setVisibility(8);
        }
    }

    public XListViewFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c(context);
    }
}
