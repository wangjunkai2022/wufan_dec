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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameinformationCommentItemTitleBinding.java */
/* loaded from: classes3.dex */
public final class mm implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22555a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22556b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22557c;

    private mm(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22555a = linearLayout;
        this.f22556b = textView;
        this.f22557c = textView2;
    }

    @NonNull
    public static mm a(@NonNull View view) {
        int i2 = R.id.textView9;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
        if (textView != null) {
            i2 = R.id.title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
            if (textView2 != null) {
                return new mm((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mm c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mm d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameinformation_comment_item_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22555a;
    }
}
