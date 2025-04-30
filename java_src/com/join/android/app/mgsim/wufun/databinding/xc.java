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
/* compiled from: DialogPostingSelectGameBinding.java */
/* loaded from: classes3.dex */
public final class xc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26533a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26534b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26535c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26536d;

    private xc(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26533a = relativeLayout;
        this.f26534b = textView;
        this.f26535c = textView2;
        this.f26536d = textView3;
    }

    @NonNull
    public static xc a(@NonNull View view) {
        int i2 = R.id.tv_collection;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_collection);
        if (textView != null) {
            i2 = R.id.tv_local;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_local);
            if (textView2 != null) {
                i2 = R.id.tv_papaku;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_papaku);
                if (textView3 != null) {
                    return new xc((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_posting_select_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26533a;
    }
}
