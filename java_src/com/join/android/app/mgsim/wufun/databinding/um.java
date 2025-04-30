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
/* compiled from: GamelistListItemBinding.java */
/* loaded from: classes3.dex */
public final class um implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25549a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25550b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25551c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f25552d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25553e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25554f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25555g;

    private um(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f25549a = relativeLayout;
        this.f25550b = textView;
        this.f25551c = linearLayout;
        this.f25552d = relativeLayout2;
        this.f25553e = textView2;
        this.f25554f = textView3;
        this.f25555g = textView4;
    }

    @NonNull
    public static um a(@NonNull View view) {
        int i2 = R.id.follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.follow);
        if (textView != null) {
            i2 = R.id.iconLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iconLayout);
            if (linearLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView2 != null) {
                    i2 = R.id.number;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                    if (textView3 != null) {
                        i2 = R.id.title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView4 != null) {
                            return new um(relativeLayout, textView, linearLayout, relativeLayout, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static um c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static um d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25549a;
    }
}
