package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightTypeTitleBinding.java */
/* loaded from: classes3.dex */
public final class df implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19354a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19355b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19356c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19357d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19358e;

    private df(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3) {
        this.f19354a = relativeLayout;
        this.f19355b = textView;
        this.f19356c = textView2;
        this.f19357d = linearLayout;
        this.f19358e = textView3;
    }

    @NonNull
    public static df a(@NonNull View view) {
        int i2 = R.id.fightSubTitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.fightSubTitle);
        if (textView != null) {
            i2 = R.id.fightTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.fightTitle);
            if (textView2 != null) {
                i2 = R.id.linearLayoutMFight;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayoutMFight);
                if (linearLayout != null) {
                    i2 = R.id.textLine;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textLine);
                    if (textView3 != null) {
                        return new df((RelativeLayout) view, textView, textView2, linearLayout, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static df c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static df d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fight_type_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19354a;
    }
}
