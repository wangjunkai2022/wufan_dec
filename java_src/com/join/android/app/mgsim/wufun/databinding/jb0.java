package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SharePostsPicItemBinding.java */
/* loaded from: classes3.dex */
public final class jb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21430a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21431b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21432c;

    private jb0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f21430a = relativeLayout;
        this.f21431b = imageView;
        this.f21432c = imageView2;
    }

    @NonNull
    public static jb0 a(@NonNull View view) {
        int i2 = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
        if (imageView != null) {
            i2 = R.id.image_delete;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.image_delete);
            if (imageView2 != null) {
                return new jb0((RelativeLayout) view, imageView, imageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.share_posts_pic_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21430a;
    }
}
