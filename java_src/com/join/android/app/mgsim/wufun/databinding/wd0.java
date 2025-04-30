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
/* compiled from: ViewGameDetailEntranceBinding.java */
/* loaded from: classes3.dex */
public final class wd0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26164a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26165b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26166c;

    private wd0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f26164a = linearLayout;
        this.f26165b = imageView;
        this.f26166c = textView;
    }

    @NonNull
    public static wd0 a(@NonNull View view) {
        int i2 = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i2 = R.id.tv_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_text);
            if (textView != null) {
                return new wd0((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wd0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wd0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_game_detail_entrance, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26164a;
    }
}
