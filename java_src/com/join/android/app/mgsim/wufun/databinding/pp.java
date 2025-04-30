package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemDiscoveryTopViewBinding.java */
/* loaded from: classes3.dex */
public final class pp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23713a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23714b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23715c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23716d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23717e;

    private pp(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23713a = relativeLayout;
        this.f23714b = simpleDraweeView;
        this.f23715c = imageView;
        this.f23716d = textView;
        this.f23717e = textView2;
    }

    @NonNull
    public static pp a(@NonNull View view) {
        int i2 = R.id.ItemIcon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ItemIcon);
        if (simpleDraweeView != null) {
            i2 = R.id.ItemMy;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ItemMy);
            if (imageView != null) {
                i2 = R.id.ItemName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ItemName);
                if (textView != null) {
                    i2 = R.id.ItemNum;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ItemNum);
                    if (textView2 != null) {
                        return new pp((RelativeLayout) view, simpleDraweeView, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_discovery_top_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23713a;
    }
}
