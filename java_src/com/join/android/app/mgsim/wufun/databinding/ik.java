package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemImageBinding.java */
/* loaded from: classes3.dex */
public final class ik implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21187a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21188b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21189c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f21190d;

    private ik(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2) {
        this.f21187a = constraintLayout;
        this.f21188b = textView;
        this.f21189c = simpleDraweeView;
        this.f21190d = simpleDraweeView2;
    }

    @NonNull
    public static ik a(@NonNull View view) {
        int i2 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i2 = R.id.image;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
            if (simpleDraweeView != null) {
                i2 = R.id.image_blur;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image_blur);
                if (simpleDraweeView2 != null) {
                    return new ik((ConstraintLayout) view, textView, simpleDraweeView, simpleDraweeView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ik c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ik d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_image, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21187a;
    }
}
