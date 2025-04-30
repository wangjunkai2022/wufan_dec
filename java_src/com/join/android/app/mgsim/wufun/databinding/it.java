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
/* compiled from: LayoutEmuKayMapCommonPsBinding.java */
/* loaded from: classes3.dex */
public final class it implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21251a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21252b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21253c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f21254d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21255e;

    private it(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2) {
        this.f21251a = relativeLayout;
        this.f21252b = button;
        this.f21253c = textView;
        this.f21254d = button2;
        this.f21255e = textView2;
    }

    @NonNull
    public static it a(@NonNull View view) {
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
                        return new it((RelativeLayout) view, button, textView, button2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static it c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static it d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_emu_kay_map_common_ps, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21251a;
    }
}
