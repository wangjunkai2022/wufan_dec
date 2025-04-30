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
/* compiled from: VipCenterTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ee0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19751a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f19752b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19753c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19754d;

    private ee0(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f19751a = relativeLayout;
        this.f19752b = view;
        this.f19753c = textView;
        this.f19754d = textView2;
    }

    @NonNull
    public static ee0 a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.more;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.more);
            if (textView != null) {
                i2 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                if (textView2 != null) {
                    return new ee0((RelativeLayout) view, findChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ee0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ee0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_center_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19751a;
    }
}
