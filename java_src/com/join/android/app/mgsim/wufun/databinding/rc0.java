package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: TopbarPostingLayoutBinding.java */
/* loaded from: classes3.dex */
public final class rc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24337a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24338b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24339c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24340d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24341e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24342f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24343g;

    private rc0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f24337a = relativeLayout;
        this.f24338b = imageView;
        this.f24339c = button;
        this.f24340d = imageView2;
        this.f24341e = imageView3;
        this.f24342f = linearLayout;
        this.f24343g = textView;
    }

    @NonNull
    public static rc0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.btnSubmit;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnSubmit);
            if (button != null) {
                i2 = R.id.iv_posting_location;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_posting_location);
                if (imageView2 != null) {
                    i2 = R.id.iv_posting_select;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_posting_select);
                    if (imageView3 != null) {
                        i2 = R.id.ll_top_center;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_top_center);
                        if (linearLayout != null) {
                            i2 = R.id.tv_posting_group;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_posting_group);
                            if (textView != null) {
                                return new rc0((RelativeLayout) view, imageView, button, imageView2, imageView3, linearLayout, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_posting_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24337a;
    }
}
