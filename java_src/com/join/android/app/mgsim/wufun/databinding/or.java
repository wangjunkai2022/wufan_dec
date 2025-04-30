package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClouldItemView;
/* compiled from: ItemRcyArchiveBinding.java */
/* loaded from: classes3.dex */
public final class or implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23343a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ClouldItemView f23344b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23345c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23346d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23347e;

    private or(@NonNull LinearLayout linearLayout, @NonNull ClouldItemView clouldItemView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout) {
        this.f23343a = linearLayout;
        this.f23344b = clouldItemView;
        this.f23345c = imageView;
        this.f23346d = imageView2;
        this.f23347e = relativeLayout;
    }

    @NonNull
    public static or a(@NonNull View view) {
        int i2 = R.id.coulditem;
        ClouldItemView clouldItemView = (ClouldItemView) ViewBindings.findChildViewById(view, R.id.coulditem);
        if (clouldItemView != null) {
            i2 = R.id.iv_nor;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_nor);
            if (imageView != null) {
                i2 = R.id.iv_select;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_select);
                if (imageView2 != null) {
                    i2 = R.id.rl_image;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_image);
                    if (relativeLayout != null) {
                        return new or((LinearLayout) view, clouldItemView, imageView, imageView2, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static or c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static or d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_rcy_archive, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23343a;
    }
}
