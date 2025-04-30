package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ClassifyGameTypeLayout;
/* compiled from: LayoutClassifyGameItemBinding.java */
/* loaded from: classes3.dex */
public final class et implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ClassifyGameTypeLayout f19895a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19896b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19897c;

    private et(@NonNull ClassifyGameTypeLayout classifyGameTypeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f19895a = classifyGameTypeLayout;
        this.f19896b = simpleDraweeView;
        this.f19897c = textView;
    }

    @NonNull
    public static et a(@NonNull View view) {
        int i2 = R.id.classify_game_img;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.classify_game_img);
        if (simpleDraweeView != null) {
            i2 = R.id.classify_game_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.classify_game_name);
            if (textView != null) {
                return new et((ClassifyGameTypeLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static et c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static et d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_classify_game_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ClassifyGameTypeLayout getRoot() {
        return this.f19895a;
    }
}
