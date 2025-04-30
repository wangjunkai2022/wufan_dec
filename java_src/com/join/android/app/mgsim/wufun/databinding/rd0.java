package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ViewActivityTabViewThreeBinding.java */
/* loaded from: classes3.dex */
public final class rd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24351a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24352b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24353c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24354d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24355e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24356f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24357g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24358h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24359i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24360j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24361k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24362l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f24363m;

    private rd0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f24351a = relativeLayout;
        this.f24352b = imageView;
        this.f24353c = imageView2;
        this.f24354d = imageView3;
        this.f24355e = linearLayout;
        this.f24356f = linearLayout2;
        this.f24357g = linearLayout3;
        this.f24358h = textView;
        this.f24359i = textView2;
        this.f24360j = textView3;
        this.f24361k = textView4;
        this.f24362l = textView5;
        this.f24363m = textView6;
    }

    @NonNull
    public static rd0 a(@NonNull View view) {
        int i2 = R.id.iv_icon_1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon_1);
        if (imageView != null) {
            i2 = R.id.iv_icon_2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon_2);
            if (imageView2 != null) {
                i2 = R.id.iv_icon_3;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon_3);
                if (imageView3 != null) {
                    i2 = R.id.ll_tab_1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab_1);
                    if (linearLayout != null) {
                        i2 = R.id.ll_tab_2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab_2);
                        if (linearLayout2 != null) {
                            i2 = R.id.ll_tab_3;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tab_3);
                            if (linearLayout3 != null) {
                                i2 = R.id.tv_desc_1;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc_1);
                                if (textView != null) {
                                    i2 = R.id.tv_desc_2;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc_2);
                                    if (textView2 != null) {
                                        i2 = R.id.tv_desc_3;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc_3);
                                        if (textView3 != null) {
                                            i2 = R.id.tv_title_1;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_1);
                                            if (textView4 != null) {
                                                i2 = R.id.tv_title_2;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_2);
                                                if (textView5 != null) {
                                                    i2 = R.id.tv_title_3;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_3);
                                                    if (textView6 != null) {
                                                        return new rd0((RelativeLayout) view, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6);
                                                    }
                                                }
                                            }
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
    public static rd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_activity_tab_view_three, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24351a;
    }
}
