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
/* compiled from: UpdateChoiceDialogBinding.java */
/* loaded from: classes3.dex */
public final class ad0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18124a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f18125b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18126c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18127d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18128e;

    private ad0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f18124a = linearLayout;
        this.f18125b = textView;
        this.f18126c = textView2;
        this.f18127d = textView3;
        this.f18128e = textView4;
    }

    @NonNull
    public static ad0 a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_button_cancel);
        if (textView != null) {
            i2 = R.id.dialog_button_ok;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (textView2 != null) {
                i2 = R.id.dialog_content;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView3 != null) {
                    i2 = R.id.tip_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                    if (textView4 != null) {
                        return new ad0((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ad0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ad0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.update_choice_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18124a;
    }
}
