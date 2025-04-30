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
/* compiled from: MyDialogBinding.java */
/* loaded from: classes3.dex */
public final class t40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25088a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f25089b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f25090c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25091d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25092e;

    private t40(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f25088a = linearLayout;
        this.f25089b = button;
        this.f25090c = button2;
        this.f25091d = textView;
        this.f25092e = imageView;
    }

    @NonNull
    public static t40 a(@NonNull View view) {
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
                        return new t40((LinearLayout) view, button, button2, textView, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25088a;
    }
}
