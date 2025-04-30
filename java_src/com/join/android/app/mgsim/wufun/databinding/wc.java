package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogPostingSelectCoinsBinding.java */
/* loaded from: classes3.dex */
public final class wc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26155a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26156b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GridView f26157c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26158d;

    private wc(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull GridView gridView, @NonNull TextView textView) {
        this.f26155a = relativeLayout;
        this.f26156b = linearLayout;
        this.f26157c = gridView;
        this.f26158d = textView;
    }

    @NonNull
    public static wc a(@NonNull View view) {
        int i2 = R.id.iv_close;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (linearLayout != null) {
            i2 = R.id.mGridView;
            GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.mGridView);
            if (gridView != null) {
                i2 = R.id.tv_current_copper;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_current_copper);
                if (textView != null) {
                    return new wc((RelativeLayout) view, linearLayout, gridView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_posting_select_coins, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26155a;
    }
}
