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
/* compiled from: ItemSearchLabelBinding.java */
/* loaded from: classes3.dex */
public final class wr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26244a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26245b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26246c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26247d;

    private wr(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f26244a = linearLayout;
        this.f26245b = simpleDraweeView;
        this.f26246c = textView;
        this.f26247d = textView2;
    }

    @NonNull
    public static wr a(@NonNull View view) {
        int i2 = R.id.iv_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (simpleDraweeView != null) {
            i2 = R.id.tv_count;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_count);
            if (textView != null) {
                i2 = R.id.tv_label_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_label_name);
                if (textView2 != null) {
                    return new wr((LinearLayout) view, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_search_label, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26244a;
    }
}
