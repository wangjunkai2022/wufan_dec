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
/* compiled from: DialogShowBottomViewBinding.java */
/* loaded from: classes3.dex */
public final class dd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19325a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19326b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19327c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19328d;

    private dd(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f19325a = relativeLayout;
        this.f19326b = textView;
        this.f19327c = textView2;
        this.f19328d = textView3;
    }

    @NonNull
    public static dd a(@NonNull View view) {
        int i2 = R.id.showAddShortcutTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.showAddShortcutTv);
        if (textView != null) {
            i2 = R.id.showDeleteGameTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.showDeleteGameTv);
            if (textView2 != null) {
                i2 = R.id.showGameDetailTv;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.showGameDetailTv);
                if (textView3 != null) {
                    return new dd((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_show_bottom_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19325a;
    }
}
