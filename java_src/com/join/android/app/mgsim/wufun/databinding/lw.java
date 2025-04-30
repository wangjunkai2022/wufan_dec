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
/* compiled from: ManageContentItemBinding.java */
/* loaded from: classes3.dex */
public final class lw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22220a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22221b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22222c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f22223d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f22224e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22225f;

    private lw(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2) {
        this.f22220a = linearLayout;
        this.f22221b = imageView;
        this.f22222c = textView;
        this.f22223d = imageView2;
        this.f22224e = relativeLayout;
        this.f22225f = textView2;
    }

    @NonNull
    public static lw a(@NonNull View view) {
        int i2 = R.id.arrowImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImage);
        if (imageView != null) {
            i2 = R.id.itemCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemCount);
            if (textView != null) {
                i2 = R.id.itemImage;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.itemImage);
                if (imageView2 != null) {
                    i2 = R.id.itemLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.itemLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.itemTitle;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.itemTitle);
                        if (textView2 != null) {
                            return new lw((LinearLayout) view, imageView, textView, imageView2, relativeLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.manage_content_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22220a;
    }
}
