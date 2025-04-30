package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogExitlayoutBinding.java */
/* loaded from: classes3.dex */
public final class fb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20077a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20078b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f20079c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20080d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20081e;

    private fb(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f20077a = linearLayout;
        this.f20078b = button;
        this.f20079c = button2;
        this.f20080d = textView;
        this.f20081e = imageView;
    }

    @NonNull
    public static fb a(@NonNull View view) {
        int i2 = R.id.dialog_button_close;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_close);
        if (button != null) {
            i2 = R.id.dialog_button_keep;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_keep);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.dialog_title_image;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_title_image);
                    if (imageView != null) {
                        return new fb((LinearLayout) view, button, button2, textView, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_exitlayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20077a;
    }
}
