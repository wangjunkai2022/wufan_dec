package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: TopbarFilterTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class oc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23226a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23227b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23228c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23229d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ToggleButton f23230e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ToggleButton f23231f;

    private oc0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull ToggleButton toggleButton, @NonNull ToggleButton toggleButton2) {
        this.f23226a = relativeLayout;
        this.f23227b = textView;
        this.f23228c = textView2;
        this.f23229d = linearLayout;
        this.f23230e = toggleButton;
        this.f23231f = toggleButton2;
    }

    @NonNull
    public static oc0 a(@NonNull View view) {
        int i2 = R.id.backTextView;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.backTextView);
        if (textView != null) {
            i2 = R.id.romTypeTitle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.romTypeTitle);
            if (textView2 != null) {
                i2 = R.id.searchImage;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.searchImage);
                if (linearLayout != null) {
                    i2 = R.id.toggleButton;
                    ToggleButton toggleButton = (ToggleButton) ViewBindings.findChildViewById(view, R.id.toggleButton);
                    if (toggleButton != null) {
                        i2 = R.id.toggleButtonRom;
                        ToggleButton toggleButton2 = (ToggleButton) ViewBindings.findChildViewById(view, R.id.toggleButtonRom);
                        if (toggleButton2 != null) {
                            return new oc0((RelativeLayout) view, textView, textView2, linearLayout, toggleButton, toggleButton2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static oc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.topbar_filter_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23226a;
    }
}
