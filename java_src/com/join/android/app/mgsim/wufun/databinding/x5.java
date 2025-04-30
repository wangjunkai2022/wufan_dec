package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ChoiceItemGameClassifyItemBinding.java */
/* loaded from: classes3.dex */
public final class x5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26431a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26432b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26433c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26434d;

    private x5(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f26431a = linearLayout;
        this.f26432b = simpleDraweeView;
        this.f26433c = textView;
        this.f26434d = textView2;
    }

    @NonNull
    public static x5 a(@NonNull View view) {
        int i2 = R.id.cover;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.cover);
        if (simpleDraweeView != null) {
            i2 = R.id.desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
            if (textView != null) {
                i2 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView2 != null) {
                    return new x5((LinearLayout) view, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static x5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_item_game_classify_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26431a;
    }
}
