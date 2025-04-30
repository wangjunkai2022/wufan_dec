package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ChioceItemOrderTopBinding.java */
/* loaded from: classes3.dex */
public final class m5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22341a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22342b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22343c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f22344d;

    private m5(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2) {
        this.f22341a = linearLayout;
        this.f22342b = imageView;
        this.f22343c = imageView2;
        this.f22344d = linearLayout2;
    }

    @NonNull
    public static m5 a(@NonNull View view) {
        int i2 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrow);
        if (imageView != null) {
            i2 = R.id.icon;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView2 != null) {
                i2 = R.id.more;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.more);
                if (linearLayout != null) {
                    return new m5((LinearLayout) view, imageView, imageView2, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static m5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.chioce_item_order_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22341a;
    }
}
