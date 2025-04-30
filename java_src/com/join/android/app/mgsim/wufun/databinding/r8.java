package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClipImageLayout;
import com.join.mgps.customview.LoadingImageView;
/* compiled from: CropPicLayoutBinding.java */
/* loaded from: classes3.dex */
public final class r8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24264a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ClipImageLayout f24265b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LoadingImageView f24266c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24267d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24268e;

    private r8(@NonNull LinearLayout linearLayout, @NonNull ClipImageLayout clipImageLayout, @NonNull LoadingImageView loadingImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f24264a = linearLayout;
        this.f24265b = clipImageLayout;
        this.f24266c = loadingImageView;
        this.f24267d = linearLayout2;
        this.f24268e = textView;
    }

    @NonNull
    public static r8 a(@NonNull View view) {
        int i2 = R.id.id_clipImageLayout;
        ClipImageLayout clipImageLayout = (ClipImageLayout) ViewBindings.findChildViewById(view, R.id.id_clipImageLayout);
        if (clipImageLayout != null) {
            i2 = R.id.loading_view;
            LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(view, R.id.loading_view);
            if (loadingImageView != null) {
                i2 = R.id.loding_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_layout);
                if (linearLayout != null) {
                    i2 = R.id.textView2;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                    if (textView != null) {
                        return new r8((LinearLayout) view, clipImageLayout, loadingImageView, linearLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.crop_pic_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24264a;
    }
}
