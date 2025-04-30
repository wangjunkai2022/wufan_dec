package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CopyTextViewNew;
/* compiled from: MgForumPostCopyActivityBinding.java */
/* loaded from: classes3.dex */
public final class iz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21295a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f21296b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CopyTextViewNew f21297c;

    private iz(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull CopyTextViewNew copyTextViewNew) {
        this.f21295a = linearLayout;
        this.f21296b = j00Var;
        this.f21297c = copyTextViewNew;
    }

    @NonNull
    public static iz a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(view, R.id.forum_post_message);
            if (copyTextViewNew != null) {
                return new iz((LinearLayout) view, a4, copyTextViewNew);
            }
            i2 = R.id.forum_post_message;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static iz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static iz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_copy_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21295a;
    }
}
