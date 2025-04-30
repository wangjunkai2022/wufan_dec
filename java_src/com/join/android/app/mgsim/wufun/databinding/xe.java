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
/* compiled from: FcNoticeDialogBinding.java */
/* loaded from: classes3.dex */
public final class xe implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26556a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f26557b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f26558c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26559d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26560e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26561f;

    private xe(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26556a = linearLayout;
        this.f26557b = button;
        this.f26558c = button2;
        this.f26559d = textView;
        this.f26560e = textView2;
        this.f26561f = textView3;
    }

    @NonNull
    public static xe a(@NonNull View view) {
        int i2 = R.id.dialog_button_cancle;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
        if (button != null) {
            i2 = R.id.dialog_button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button2 != null) {
                i2 = R.id.dialog_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
                if (textView != null) {
                    i2 = R.id.textView;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                    if (textView2 != null) {
                        i2 = R.id.tip_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                        if (textView3 != null) {
                            return new xe((LinearLayout) view, button, button2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xe c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xe d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fc_notice_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26556a;
    }
}
