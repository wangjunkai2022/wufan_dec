package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SimpleListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class pb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23571a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23572b;

    private pb0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f23571a = relativeLayout;
        this.f23572b = textView;
    }

    @NonNull
    public static pb0 a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.lv_tv_title);
        if (textView != null) {
            return new pb0((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lv_tv_title)));
    }

    @NonNull
    public static pb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.simple_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23571a;
    }
}
