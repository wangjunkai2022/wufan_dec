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
/* compiled from: MgFItemPostSubjectBinding.java */
/* loaded from: classes3.dex */
public final class ax implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18310a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18311b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f18312c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18313d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18314e;

    private ax(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull View view, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f18310a = linearLayout;
        this.f18311b = button;
        this.f18312c = view;
        this.f18313d = textView;
        this.f18314e = linearLayout2;
    }

    @NonNull
    public static ax a(@NonNull View view) {
        int i2 = R.id.best;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.best);
        if (button != null) {
            i2 = R.id.forum_post_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
            if (findChildViewById != null) {
                i2 = R.id.subject;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.subject);
                if (textView != null) {
                    i2 = R.id.subjectMain;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.subjectMain);
                    if (linearLayout != null) {
                        return new ax((LinearLayout) view, button, findChildViewById, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ax c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ax d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_f_item_post_subject, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18310a;
    }
}
