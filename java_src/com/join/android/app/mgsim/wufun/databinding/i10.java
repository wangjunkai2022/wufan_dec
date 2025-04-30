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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailGiftsBinding.java */
/* loaded from: classes3.dex */
public final class i10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21002a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21003b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21004c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f21005d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f21006e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21007f;

    private i10(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2) {
        this.f21002a = linearLayout;
        this.f21003b = imageView;
        this.f21004c = textView;
        this.f21005d = simpleDraweeView;
        this.f21006e = relativeLayout;
        this.f21007f = textView2;
    }

    @NonNull
    public static i10 a(@NonNull View view) {
        int i2 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImage);
        if (imageView != null) {
            i2 = R.id.giftsCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftsCount);
            if (textView != null) {
                i2 = R.id.giftsImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.giftsImage);
                if (simpleDraweeView != null) {
                    i2 = R.id.giftsLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.giftsLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.giftsTitle;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.giftsTitle);
                        if (textView2 != null) {
                            return new i10((LinearLayout) view, imageView, textView, simpleDraweeView, relativeLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_gifts, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21002a;
    }
}
