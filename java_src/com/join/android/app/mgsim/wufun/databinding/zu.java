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
/* compiled from: ListItemGameBinding.java */
/* loaded from: classes3.dex */
public final class zu implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27328a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f27329b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f27330c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27331d;

    private zu(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f27328a = linearLayout;
        this.f27329b = simpleDraweeView;
        this.f27330c = linearLayout2;
        this.f27331d = textView;
    }

    @NonNull
    public static zu a(@NonNull View view) {
        int i2 = R.id.game_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.game_icon);
        if (simpleDraweeView != null) {
            i2 = R.id.ll_content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_content);
            if (linearLayout != null) {
                i2 = R.id.tv_gamenmae;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gamenmae);
                if (textView != null) {
                    return new zu((LinearLayout) view, simpleDraweeView, linearLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zu c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zu d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.list_item_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27328a;
    }
}
