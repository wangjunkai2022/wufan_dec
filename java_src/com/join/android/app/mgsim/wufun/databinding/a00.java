package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchItemFavoriteGameListBinding.java */
/* loaded from: classes3.dex */
public final class a00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f17938a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f17939b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f17940c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f17941d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f17942e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f17943f;

    private a00(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3) {
        this.f17938a = constraintLayout;
        this.f17939b = textView;
        this.f17940c = textView2;
        this.f17941d = view;
        this.f17942e = simpleDraweeView;
        this.f17943f = textView3;
    }

    @NonNull
    public static a00 a(@NonNull View view) {
        int i2 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.count);
        if (textView != null) {
            i2 = R.id.desc;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
            if (textView2 != null) {
                i2 = R.id.divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (findChildViewById != null) {
                    i2 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                        if (textView3 != null) {
                            return new a00((ConstraintLayout) view, textView, textView2, findChildViewById, simpleDraweeView, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static a00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_favorite_game_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f17938a;
    }
}
