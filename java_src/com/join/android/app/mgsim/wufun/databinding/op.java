package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemDiscoveryBottomViewBinding.java */
/* loaded from: classes3.dex */
public final class op implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23333a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23334b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23335c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23336d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23337e;

    private op(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23333a = linearLayout;
        this.f23334b = simpleDraweeView;
        this.f23335c = imageView;
        this.f23336d = textView;
        this.f23337e = textView2;
    }

    @NonNull
    public static op a(@NonNull View view) {
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
                        return new op((LinearLayout) view, simpleDraweeView, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static op c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static op d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_discovery_bottom_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23333a;
    }
}
