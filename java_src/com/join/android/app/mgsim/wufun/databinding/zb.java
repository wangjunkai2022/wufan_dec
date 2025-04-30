package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogInviteFightErrorBinding.java */
/* loaded from: classes3.dex */
public final class zb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27195a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f27196b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f27197c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f27198d;

    private zb(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2) {
        this.f27195a = linearLayout;
        this.f27196b = button;
        this.f27197c = textView;
        this.f27198d = button2;
    }

    @NonNull
    public static zb a(@NonNull View view) {
        int i2 = R.id.cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.cancel);
        if (button != null) {
            i2 = R.id.info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
            if (textView != null) {
                i2 = R.id.rebuild;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.rebuild);
                if (button2 != null) {
                    return new zb((LinearLayout) view, button, textView, button2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_invite_fight_error, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27195a;
    }
}
