package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemModChatTypeBinding.java */
/* loaded from: classes3.dex */
public final class br implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18636a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18637b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18638c;

    private br(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f18636a = linearLayout;
        this.f18637b = imageView;
        this.f18638c = textView;
    }

    @NonNull
    public static br a(@NonNull View view) {
        int i2 = R.id.iv_line;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_line);
        if (imageView != null) {
            i2 = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
            if (textView != null) {
                return new br((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static br c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static br d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_mod_chat_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18636a;
    }
}
