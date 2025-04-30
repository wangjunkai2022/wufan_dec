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
/* compiled from: WhiteBackDialogBinding.java */
/* loaded from: classes3.dex */
public final class je0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21460a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21461b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21462c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f21463d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21464e;

    private je0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView2) {
        this.f21460a = linearLayout;
        this.f21461b = textView;
        this.f21462c = button;
        this.f21463d = button2;
        this.f21464e = textView2;
    }

    @NonNull
    public static je0 a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.dialog_button_cancel;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancel);
            if (button != null) {
                i2 = R.id.dialog_button_ok;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
                if (button2 != null) {
                    i2 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                    if (textView2 != null) {
                        return new je0((LinearLayout) view, textView, button, button2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static je0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static je0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.white_back_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21460a;
    }
}
