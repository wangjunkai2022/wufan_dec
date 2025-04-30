package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogSimulatorNotifyBinding.java */
/* loaded from: classes3.dex */
public final class ed implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19717a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19718b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f19719c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19720d;

    private ed(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull CheckBox checkBox, @NonNull TextView textView) {
        this.f19717a = linearLayout;
        this.f19718b = button;
        this.f19719c = checkBox;
        this.f19720d = textView;
    }

    @NonNull
    public static ed a(@NonNull View view) {
        int i2 = R.id.btn_ok;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (button != null) {
            i2 = R.id.chk_notify;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.chk_notify);
            if (checkBox != null) {
                i2 = R.id.tv_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
                if (textView != null) {
                    return new ed((LinearLayout) view, button, checkBox, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ed c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ed d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_simulator_notify, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19717a;
    }
}
