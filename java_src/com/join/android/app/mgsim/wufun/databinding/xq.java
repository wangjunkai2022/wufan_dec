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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemIntroductionCommontReplayBinding.java */
/* loaded from: classes3.dex */
public final class xq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26642a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26643b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26644c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26645d;

    private xq(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull View view) {
        this.f26642a = linearLayout;
        this.f26643b = linearLayout2;
        this.f26644c = textView;
        this.f26645d = view;
    }

    @NonNull
    public static xq a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.layoutTop;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
            if (findChildViewById != null) {
                return new xq(linearLayout, linearLayout, textView, findChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_introduction_commont_replay, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26642a;
    }
}
