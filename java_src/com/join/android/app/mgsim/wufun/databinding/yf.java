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
/* compiled from: FragmentCheckLocalGameBinding.java */
/* loaded from: classes3.dex */
public final class yf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26927a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26928b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26929c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26930d;

    private yf(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2) {
        this.f26927a = linearLayout;
        this.f26928b = textView;
        this.f26929c = simpleDraweeView;
        this.f26930d = textView2;
    }

    @NonNull
    public static yf a(@NonNull View view) {
        int i2 = R.id.afterNameTx;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.afterNameTx);
        if (textView != null) {
            i2 = R.id.appIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
            if (simpleDraweeView != null) {
                i2 = R.id.beforNameTx;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.beforNameTx);
                if (textView2 != null) {
                    return new yf((LinearLayout) view, textView, simpleDraweeView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_check_local_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26927a;
    }
}
