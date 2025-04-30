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
/* compiled from: PopMyGameSettingsBinding.java */
/* loaded from: classes3.dex */
public final class w80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26091a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26092b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26093c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26094d;

    private w80(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26091a = linearLayout;
        this.f26092b = textView;
        this.f26093c = textView2;
        this.f26094d = textView3;
    }

    @NonNull
    public static w80 a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.scan;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.scan);
            if (textView2 != null) {
                i2 = R.id.settings;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.settings);
                if (textView3 != null) {
                    return new w80((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_settings, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26091a;
    }
}
