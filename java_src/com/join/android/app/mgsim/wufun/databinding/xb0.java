package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SlidingTabItemGameDetailImageV1Binding.java */
/* loaded from: classes3.dex */
public final class xb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f26527a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26528b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26529c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26530d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26531e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26532f;

    private xb0(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.f26527a = constraintLayout;
        this.f26528b = textView;
        this.f26529c = simpleDraweeView;
        this.f26530d = linearLayout;
        this.f26531e = textView2;
        this.f26532f = imageView;
    }

    @NonNull
    public static xb0 a(@NonNull View view) {
        int i2 = R.id.bg;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.bg);
        if (textView != null) {
            i2 = R.id.image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
            if (simpleDraweeView != null) {
                i2 = R.id.indicator;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.indicator);
                if (linearLayout != null) {
                    i2 = R.id.name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView2 != null) {
                        i2 = R.id.play;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
                        if (imageView != null) {
                            return new xb0((ConstraintLayout) view, textView, simpleDraweeView, linearLayout, textView2, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sliding_tab_item_game_detail_image_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f26527a;
    }
}
