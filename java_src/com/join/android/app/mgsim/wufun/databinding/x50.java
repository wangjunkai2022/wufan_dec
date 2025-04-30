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
/* compiled from: NonticeTopAnimDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class x50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26435a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f26436b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26437c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26438d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f26439e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26440f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26441g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26442h;

    private x50(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26435a = relativeLayout;
        this.f26436b = button;
        this.f26437c = textView;
        this.f26438d = relativeLayout2;
        this.f26439e = linearLayout;
        this.f26440f = textView2;
        this.f26441g = textView3;
        this.f26442h = textView4;
    }

    @NonNull
    public static x50 a(@NonNull View view) {
        int i2 = R.id.dialog_button_ok;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
        if (button != null) {
            i2 = R.id.dialog_content;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_content);
            if (textView != null) {
                i2 = R.id.dialogLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.dialogLayout);
                if (relativeLayout != null) {
                    i2 = R.id.iv_close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (linearLayout != null) {
                        i2 = R.id.nonticeText;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nonticeText);
                        if (textView2 != null) {
                            i2 = R.id.sub_content;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.sub_content);
                            if (textView3 != null) {
                                i2 = R.id.tv_position;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_position);
                                if (textView4 != null) {
                                    return new x50((RelativeLayout) view, button, textView, relativeLayout, linearLayout, textView2, textView3, textView4);
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
    public static x50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.nontice_top_anim_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26435a;
    }
}
