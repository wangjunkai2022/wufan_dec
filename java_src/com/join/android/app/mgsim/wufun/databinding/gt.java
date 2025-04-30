package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutEmuKayMapCommonBinding.java */
/* loaded from: classes3.dex */
public final class gt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20583a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20584b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20585c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f20586d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20587e;

    private gt(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2) {
        this.f20583a = relativeLayout;
        this.f20584b = button;
        this.f20585c = textView;
        this.f20586d = button2;
        this.f20587e = textView2;
    }

    @NonNull
    public static gt a(@NonNull View view) {
        int i2 = R.id.select;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.select);
        if (button != null) {
            i2 = R.id.select_tv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.select_tv);
            if (textView != null) {
                i2 = R.id.start;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.start);
                if (button2 != null) {
                    i2 = R.id.start_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.start_tv);
                    if (textView2 != null) {
                        return new gt((RelativeLayout) view, button, textView, button2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_emu_kay_map_common, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20583a;
    }
}
