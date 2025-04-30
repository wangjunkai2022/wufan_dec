package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SimpleListviewItem1Binding.java */
/* loaded from: classes3.dex */
public final class ob0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23214a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23215b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23216c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f23217d;

    private ob0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2) {
        this.f23214a = relativeLayout;
        this.f23215b = imageView;
        this.f23216c = textView;
        this.f23217d = relativeLayout2;
    }

    @NonNull
    public static ob0 a(@NonNull View view) {
        int i2 = R.id.dotHistory;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dotHistory);
        if (imageView != null) {
            i2 = R.id.lv_tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.lv_tv_title);
            if (textView != null) {
                i2 = R.id.rlClearHistory;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlClearHistory);
                if (relativeLayout != null) {
                    return new ob0((RelativeLayout) view, imageView, textView, relativeLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ob0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ob0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simple_listview_item1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23214a;
    }
}
