package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SquareLayout;
/* compiled from: MyAlbumItemBinding.java */
/* loaded from: classes3.dex */
public final class s40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SquareLayout f24702a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24703b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24704c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SquareLayout f24705d;

    private s40(@NonNull SquareLayout squareLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull SquareLayout squareLayout2) {
        this.f24702a = squareLayout;
        this.f24703b = simpleDraweeView;
        this.f24704c = imageView;
        this.f24705d = squareLayout2;
    }

    @NonNull
    public static s40 a(@NonNull View view) {
        int i2 = R.id.image;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
        if (simpleDraweeView != null) {
            i2 = R.id.image_flag;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_flag);
            if (imageView != null) {
                SquareLayout squareLayout = (SquareLayout) view;
                return new s40(squareLayout, simpleDraweeView, imageView, squareLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_album_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public SquareLayout getRoot() {
        return this.f24702a;
    }
}
