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
/* compiled from: ItemGameDetailSimilarGameTagBinding.java */
/* loaded from: classes3.dex */
public final class fq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20212a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20213b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20214c;

    private fq(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f20212a = linearLayout;
        this.f20213b = imageView;
        this.f20214c = textView;
    }

    @NonNull
    public static fq a(@NonNull View view) {
        int i2 = R.id.iv_label;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_label);
        if (imageView != null) {
            i2 = R.id.tv_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_text);
            if (textView != null) {
                return new fq((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_similar_game_tag, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20212a;
    }
}
