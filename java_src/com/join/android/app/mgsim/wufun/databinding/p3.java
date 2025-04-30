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
/* compiled from: BackupsNoticeDialogBinding.java */
/* loaded from: classes3.dex */
public final class p3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23453a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f23454b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23455c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23456d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23457e;

    private p3(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.f23453a = linearLayout;
        this.f23454b = button;
        this.f23455c = textView;
        this.f23456d = imageView;
        this.f23457e = textView2;
    }

    @NonNull
    public static p3 a(@NonNull View view) {
        int i2 = R.id.dialog_button_ok;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
        if (button != null) {
            i2 = R.id.dialog_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
            if (textView != null) {
                i2 = R.id.imageView;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
                if (imageView != null) {
                    i2 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                    if (textView2 != null) {
                        return new p3((LinearLayout) view, button, textView, imageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.backups_notice_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23453a;
    }
}
