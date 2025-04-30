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
/* compiled from: AndroidPermissDialogBinding.java */
/* loaded from: classes3.dex */
public final class a3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f17993a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f17994b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f17995c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f17996d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f17997e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f17998f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f17999g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f18000h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f18001i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f18002j;

    private a3(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.f17993a = linearLayout;
        this.f17994b = imageView;
        this.f17995c = button;
        this.f17996d = button2;
        this.f17997e = button3;
        this.f17998f = textView;
        this.f17999g = textView2;
        this.f18000h = imageView2;
        this.f18001i = linearLayout2;
        this.f18002j = linearLayout3;
    }

    @NonNull
    public static a3 a(@NonNull View view) {
        int i2 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
        if (imageView != null) {
            i2 = R.id.dialog_button_close;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_close);
            if (button != null) {
                i2 = R.id.dialog_button_i_know;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_i_know);
                if (button2 != null) {
                    i2 = R.id.dialog_button_keep;
                    Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_keep);
                    if (button3 != null) {
                        i2 = R.id.dialog_content;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                        if (textView != null) {
                            i2 = R.id.dialog_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_title);
                            if (textView2 != null) {
                                i2 = R.id.dialog_title_image;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.dialog_title_image);
                                if (imageView2 != null) {
                                    i2 = R.id.llBtn;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llBtn);
                                    if (linearLayout != null) {
                                        i2 = R.id.llBtnIKnow;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llBtnIKnow);
                                        if (linearLayout2 != null) {
                                            return new a3((LinearLayout) view, imageView, button, button2, button3, textView, textView2, imageView2, linearLayout, linearLayout2);
                                        }
                                    }
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
    public static a3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.android_permiss_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f17993a;
    }
}
