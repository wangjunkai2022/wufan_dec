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
/* compiled from: GamelistListItemhomeBinding.java */
/* loaded from: classes3.dex */
public final class wm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26216a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26217b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26218c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26219d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f26220e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26221f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26222g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26223h;

    private wm(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26216a = relativeLayout;
        this.f26217b = textView;
        this.f26218c = linearLayout;
        this.f26219d = linearLayout2;
        this.f26220e = relativeLayout2;
        this.f26221f = textView2;
        this.f26222g = textView3;
        this.f26223h = textView4;
    }

    @NonNull
    public static wm a(@NonNull View view) {
        int i2 = R.id.follow;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.follow);
        if (textView != null) {
            i2 = R.id.iconLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iconLayout);
            if (linearLayout != null) {
                i2 = R.id.iconLayout2;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iconLayout2);
                if (linearLayout2 != null) {
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
                                return new wm(relativeLayout, textView, linearLayout, linearLayout2, relativeLayout, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamelist_list_itemhome, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26216a;
    }
}
