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
/* compiled from: PapamainGuessyoulikeTopLayoutBinding.java */
/* loaded from: classes3.dex */
public final class g70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20346a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20347b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20348c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f20349d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20350e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20351f;

    private g70(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f20346a = relativeLayout;
        this.f20347b = textView;
        this.f20348c = textView2;
        this.f20349d = relativeLayout2;
        this.f20350e = textView3;
        this.f20351f = textView4;
    }

    @NonNull
    public static g70 a(@NonNull View view) {
        int i2 = R.id.guessyoulikeTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.guessyoulikeTitle);
        if (textView != null) {
            i2 = R.id.hideh5;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.hideh5);
            if (textView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.textView3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                if (textView3 != null) {
                    i2 = R.id.textView5;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView5);
                    if (textView4 != null) {
                        return new g70(relativeLayout, textView, textView2, relativeLayout, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_guessyoulike_top_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20346a;
    }
}
