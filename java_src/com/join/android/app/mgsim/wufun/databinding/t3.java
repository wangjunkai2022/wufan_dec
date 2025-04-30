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
/* compiled from: BindDialogBinding.java */
/* loaded from: classes3.dex */
public final class t3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25069a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f25070b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f25071c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25072d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25073e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25074f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25075g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25076h;

    private t3(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView3) {
        this.f25069a = linearLayout;
        this.f25070b = button;
        this.f25071c = button2;
        this.f25072d = textView;
        this.f25073e = textView2;
        this.f25074f = view;
        this.f25075g = imageView;
        this.f25076h = textView3;
    }

    @NonNull
    public static t3 a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancel);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.dialog_desci;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_desci);
                    if (textView2 != null) {
                        i2 = R.id.divider;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                        if (findChildViewById != null) {
                            i2 = R.id.notice;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.notice);
                            if (imageView != null) {
                                i2 = R.id.tip_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                                if (textView3 != null) {
                                    return new t3((LinearLayout) view, button, button2, textView, textView2, findChildViewById, imageView, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.bind_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25069a;
    }
}
