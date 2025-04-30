package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogCloudShareBinding.java */
/* loaded from: classes3.dex */
public final class xa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26495a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26496b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26497c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f26498d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26499e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26500f;

    private xa(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull EditText editText, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26495a = linearLayout;
        this.f26496b = textView;
        this.f26497c = textView2;
        this.f26498d = editText;
        this.f26499e = textView3;
        this.f26500f = textView4;
    }

    @NonNull
    public static xa a(@NonNull View view) {
        int i2 = R.id.cancle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancle);
        if (textView != null) {
            i2 = R.id.content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
            if (textView2 != null) {
                i2 = R.id.name;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.name);
                if (editText != null) {
                    i2 = R.id.number;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                    if (textView3 != null) {
                        i2 = R.id.ok;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                        if (textView4 != null) {
                            return new xa((LinearLayout) view, textView, textView2, editText, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_cloud_share, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26495a;
    }
}
