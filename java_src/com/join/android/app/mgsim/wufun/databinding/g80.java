package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PlatGridviewItemBinding.java */
/* loaded from: classes3.dex */
public final class g80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20356a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20357b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20358c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20359d;

    private g80(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f20356a = relativeLayout;
        this.f20357b = button;
        this.f20358c = imageView;
        this.f20359d = textView;
    }

    @NonNull
    public static g80 a(@NonNull View view) {
        int i2 = R.id.checkButton;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.checkButton);
        if (button != null) {
            i2 = R.id.imgIconCategory;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imgIconCategory);
            if (imageView != null) {
                i2 = R.id.textViewCategory;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewCategory);
                if (textView != null) {
                    return new g80((RelativeLayout) view, button, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.plat_gridview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20356a;
    }
}
