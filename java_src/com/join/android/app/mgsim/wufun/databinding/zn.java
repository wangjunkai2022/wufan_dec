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
/* compiled from: HeadListviewGameBinding.java */
/* loaded from: classes3.dex */
public final class zn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27299a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27300b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27301c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27302d;

    private zn(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f27299a = linearLayout;
        this.f27300b = linearLayout2;
        this.f27301c = textView;
        this.f27302d = textView2;
    }

    @NonNull
    public static zn a(@NonNull View view) {
        int i2 = R.id.ll_gameform_title;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_gameform_title);
        if (linearLayout != null) {
            i2 = R.id.tv_game_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_game_title);
            if (textView != null) {
                i2 = R.id.tv_modify;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_modify);
                if (textView2 != null) {
                    return new zn((LinearLayout) view, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.head_listview_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27299a;
    }
}
