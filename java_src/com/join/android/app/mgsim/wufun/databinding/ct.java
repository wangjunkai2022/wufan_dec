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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LatestGameItemBinding.java */
/* loaded from: classes3.dex */
public final class ct implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19061a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19062b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19063c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19064d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19065e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19066f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19067g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19068h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19069i;

    private ct(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f19061a = linearLayout;
        this.f19062b = imageView;
        this.f19063c = imageView2;
        this.f19064d = linearLayout2;
        this.f19065e = linearLayout3;
        this.f19066f = textView;
        this.f19067g = textView2;
        this.f19068h = textView3;
        this.f19069i = textView4;
    }

    @NonNull
    public static ct a(@NonNull View view) {
        int i2 = R.id.latestImgLeft;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.latestImgLeft);
        if (imageView != null) {
            i2 = R.id.latestImgRight;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.latestImgRight);
            if (imageView2 != null) {
                i2 = R.id.latestLayoutLeft;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.latestLayoutLeft);
                if (linearLayout != null) {
                    i2 = R.id.latestLayoutRight;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.latestLayoutRight);
                    if (linearLayout2 != null) {
                        i2 = R.id.latestNameLeft;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.latestNameLeft);
                        if (textView != null) {
                            i2 = R.id.latestNameRight;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.latestNameRight);
                            if (textView2 != null) {
                                i2 = R.id.latestTimeLeft;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.latestTimeLeft);
                                if (textView3 != null) {
                                    i2 = R.id.latestTimeRight;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.latestTimeRight);
                                    if (textView4 != null) {
                                        return new ct((LinearLayout) view, imageView, imageView2, linearLayout, linearLayout2, textView, textView2, textView3, textView4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ct c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ct d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.latest_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19061a;
    }
}
