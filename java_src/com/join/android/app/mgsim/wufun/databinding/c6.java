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
/* compiled from: ChoiceTitleSearchBarBinding.java */
/* loaded from: classes3.dex */
public final class c6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18787a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18788b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18789c;

    private c6(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f18787a = linearLayout;
        this.f18788b = imageView;
        this.f18789c = textView;
    }

    @NonNull
    public static c6 a(@NonNull View view) {
        int i2 = R.id.imageView3;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView3);
        if (imageView != null) {
            i2 = R.id.searchContent;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.searchContent);
            if (textView != null) {
                return new c6((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_title_search_bar, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18787a;
    }
}
