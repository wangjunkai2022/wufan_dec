package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumSearchItemPostSubjectBinding.java */
/* loaded from: classes3.dex */
public final class e00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19548a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19549b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f19550c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19551d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19552e;

    private e00(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull View view, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f19548a = linearLayout;
        this.f19549b = button;
        this.f19550c = view;
        this.f19551d = textView;
        this.f19552e = linearLayout2;
    }

    @NonNull
    public static e00 a(@NonNull View view) {
        int i2 = R.id.forum_post_best;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_post_best);
        if (button != null) {
            i2 = R.id.forum_post_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
            if (findChildViewById != null) {
                i2 = R.id.forum_post_subject;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_subject);
                if (textView != null) {
                    i2 = R.id.subject_parent;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.subject_parent);
                    if (linearLayout != null) {
                        return new e00((LinearLayout) view, button, findChildViewById, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_search_item_post_subject, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19548a;
    }
}
