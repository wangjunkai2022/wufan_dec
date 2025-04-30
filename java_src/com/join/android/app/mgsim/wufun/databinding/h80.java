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
/* compiled from: PlugUpdateDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class h80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20704a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckBox f20705b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20706c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f20707d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f20708e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20709f;

    private h80(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView2) {
        this.f20704a = linearLayout;
        this.f20705b = checkBox;
        this.f20706c = textView;
        this.f20707d = button;
        this.f20708e = button2;
        this.f20709f = textView2;
    }

    @NonNull
    public static h80 a(@NonNull View view) {
        int i2 = R.id.checkbox;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox);
        if (checkBox != null) {
            i2 = R.id.content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView != null) {
                i2 = R.id.dialog_button_cancle;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_cancle);
                if (button != null) {
                    i2 = R.id.dialog_button_ok;
                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
                    if (button2 != null) {
                        i2 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView2 != null) {
                            return new h80((LinearLayout) view, checkBox, textView, button, button2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static h80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.plug_update_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20704a;
    }
}
