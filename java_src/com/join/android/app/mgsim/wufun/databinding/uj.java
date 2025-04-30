package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetailItemCommitFooterBinding.java */
/* loaded from: classes3.dex */
public final class uj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25535a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25536b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25537c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25538d;

    private uj(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f25535a = linearLayout;
        this.f25536b = relativeLayout;
        this.f25537c = textView;
        this.f25538d = textView2;
    }

    @NonNull
    public static uj a(@NonNull View view) {
        int i2 = R.id.commentFooterLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.commentFooterLayout);
        if (relativeLayout != null) {
            i2 = R.id.goforum;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.goforum);
            if (textView != null) {
                i2 = R.id.showAllCommit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.showAllCommit);
                if (textView2 != null) {
                    return new uj((LinearLayout) view, relativeLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_commit_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25535a;
    }
}
