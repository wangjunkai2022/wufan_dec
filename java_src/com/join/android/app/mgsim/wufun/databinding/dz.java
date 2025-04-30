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
/* compiled from: MgForumPostActivityItemPostSubjectBinding.java */
/* loaded from: classes3.dex */
public final class dz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19528a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19529b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19530c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19531d;

    private dz(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f19528a = linearLayout;
        this.f19529b = button;
        this.f19530c = textView;
        this.f19531d = linearLayout2;
    }

    @NonNull
    public static dz a(@NonNull View view) {
        int i2 = R.id.forum_post_best;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_post_best);
        if (button != null) {
            i2 = R.id.forum_post_subject;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_subject);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new dz(linearLayout, button, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_subject, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19528a;
    }
}
