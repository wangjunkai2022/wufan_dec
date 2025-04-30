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
/* compiled from: GamedetialBtServiceinfoItemBinding.java */
/* loaded from: classes3.dex */
public final class tl implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25255a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25256b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25257c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25258d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25259e;

    private tl(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f25255a = linearLayout;
        this.f25256b = textView;
        this.f25257c = textView2;
        this.f25258d = textView3;
        this.f25259e = textView4;
    }

    @NonNull
    public static tl a(@NonNull View view) {
        int i2 = R.id.day;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.day);
        if (textView != null) {
            i2 = R.id.serverName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.serverName);
            if (textView2 != null) {
                i2 = R.id.tag;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tag);
                if (textView3 != null) {
                    i2 = R.id.time;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                    if (textView4 != null) {
                        return new tl((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tl c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tl d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_bt_serviceinfo_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25255a;
    }
}
