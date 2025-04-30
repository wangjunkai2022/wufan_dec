package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogAreaErrorHintBinding.java */
/* loaded from: classes3.dex */
public final class na implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22819a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f22820b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f22821c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f22822d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22823e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f22824f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22825g;

    private na(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.f22819a = relativeLayout;
        this.f22820b = button;
        this.f22821c = button2;
        this.f22822d = button3;
        this.f22823e = textView;
        this.f22824f = linearLayout;
        this.f22825g = textView2;
    }

    @NonNull
    public static na a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_button_sure;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_sure);
                if (button3 != null) {
                    i2 = R.id.dialog_content;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                    if (textView != null) {
                        i2 = R.id.iv_close;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                        if (linearLayout != null) {
                            i2 = R.id.tip_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                            if (textView2 != null) {
                                return new na((RelativeLayout) view, button, button2, button3, textView, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static na c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static na d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_area_error_hint, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22819a;
    }
}
