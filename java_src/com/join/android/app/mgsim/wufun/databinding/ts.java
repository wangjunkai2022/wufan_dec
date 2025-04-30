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
/* compiled from: ItemTagReportReasonBinding.java */
/* loaded from: classes3.dex */
public final class ts implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25299a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25300b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25301c;

    private ts(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f25299a = linearLayout;
        this.f25300b = imageView;
        this.f25301c = textView;
    }

    @NonNull
    public static ts a(@NonNull View view) {
        int i2 = R.id.iv_check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_check);
        if (imageView != null) {
            i2 = R.id.tv_reason_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reason_text);
            if (textView != null) {
                return new ts((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ts c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ts d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_tag_report_reason, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25299a;
    }
}
