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
/* compiled from: LayoutSimpleAlertDialogBinding.java */
/* loaded from: classes3.dex */
public final class iu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21256a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f21257b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f21258c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21259d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21260e;

    private iu(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21256a = linearLayout;
        this.f21257b = button;
        this.f21258c = checkBox;
        this.f21259d = textView;
        this.f21260e = textView2;
    }

    @NonNull
    public static iu a(@NonNull View view) {
        int i2 = R.id.dialog_button_ok;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
        if (button != null) {
            i2 = R.id.dialogCb;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.dialogCb);
            if (checkBox != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                    if (textView2 != null) {
                        return new iu((LinearLayout) view, button, checkBox, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static iu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static iu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_simple_alert_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21256a;
    }
}
