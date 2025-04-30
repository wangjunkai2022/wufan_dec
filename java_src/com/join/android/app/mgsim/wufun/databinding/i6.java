package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ClassifyGameiconItemBinding.java */
/* loaded from: classes3.dex */
public final class i6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21069a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21070b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21071c;

    private i6(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f21069a = linearLayout;
        this.f21070b = simpleDraweeView;
        this.f21071c = textView;
    }

    @NonNull
    public static i6 a(@NonNull View view) {
        int i2 = R.id.recomGameImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.recomGameImage);
        if (simpleDraweeView != null) {
            i2 = R.id.recomGameTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.recomGameTv);
            if (textView != null) {
                return new i6((LinearLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classify_gameicon_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21069a;
    }
}
