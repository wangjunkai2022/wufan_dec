package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RuleItemBinding.java */
/* loaded from: classes3.dex */
public final class v90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f25785a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25786b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25787c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25788d;

    private v90(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25785a = frameLayout;
        this.f25786b = textView;
        this.f25787c = textView2;
        this.f25788d = textView3;
    }

    @NonNull
    public static v90 a(@NonNull View view) {
        int i2 = R.id.txt_1;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_1);
        if (textView != null) {
            i2 = R.id.txt_2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_2);
            if (textView2 != null) {
                i2 = R.id.txt_3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_3);
                if (textView3 != null) {
                    return new v90((FrameLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.rule_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f25785a;
    }
}
