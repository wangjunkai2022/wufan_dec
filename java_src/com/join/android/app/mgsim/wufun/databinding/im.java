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
/* compiled from: GamedetialNoneCommentLayoutBinding.java */
/* loaded from: classes3.dex */
public final class im implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21194a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21195b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21196c;

    private im(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f21194a = linearLayout;
        this.f21195b = textView;
        this.f21196c = imageView;
    }

    @NonNull
    public static im a(@NonNull View view) {
        int i2 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editText5);
        if (textView != null) {
            i2 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView44);
            if (imageView != null) {
                return new im((LinearLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static im c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static im d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_none_comment_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21194a;
    }
}
