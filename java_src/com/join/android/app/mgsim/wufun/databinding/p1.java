package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
/* compiled from: ActivityPayStartBinding.java */
/* loaded from: classes3.dex */
public final class p1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23407a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23408b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23409c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FlowLayout f23410d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23411e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23412f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23413g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23414h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23415i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f23416j;

    private p1(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FlowLayout flowLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull Button button) {
        this.f23407a = linearLayout;
        this.f23408b = imageView;
        this.f23409c = textView;
        this.f23410d = flowLayout;
        this.f23411e = textView2;
        this.f23412f = textView3;
        this.f23413g = textView4;
        this.f23414h = textView5;
        this.f23415i = textView6;
        this.f23416j = button;
    }

    @NonNull
    public static p1 a(@NonNull View view) {
        int i2 = R.id.checkBoxPay;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.checkBoxPay);
        if (imageView != null) {
            i2 = R.id.openTalk;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.openTalk);
            if (textView != null) {
                i2 = R.id.papa_top_layout;
                FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.papa_top_layout);
                if (flowLayout != null) {
                    i2 = R.id.papa_top_number;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.papa_top_number);
                    if (textView2 != null) {
                        i2 = R.id.papa_top_oto;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.papa_top_oto);
                        if (textView3 != null) {
                            i2 = R.id.papaTopPriceBig;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.papaTopPriceBig);
                            if (textView4 != null) {
                                i2 = R.id.readMsg;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.readMsg);
                                if (textView5 != null) {
                                    i2 = R.id.showPrice;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.showPrice);
                                    if (textView6 != null) {
                                        i2 = R.id.startPay;
                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.startPay);
                                        if (button != null) {
                                            return new p1((LinearLayout) view, imageView, textView, flowLayout, textView2, textView3, textView4, textView5, textView6, button);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_pay_start, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23407a;
    }
}
