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
/* compiled from: MgFragmentGameTopicTitleBinding.java */
/* loaded from: classes3.dex */
public final class d10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19153a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19154b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19155c;

    private d10(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f19153a = linearLayout;
        this.f19154b = textView;
        this.f19155c = linearLayout2;
    }

    @NonNull
    public static d10 a(@NonNull View view) {
        int i2 = R.id.forum_post_subject;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_subject);
        if (textView != null) {
            i2 = R.id.subject_parent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.subject_parent);
            if (linearLayout != null) {
                return new d10((LinearLayout) view, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_fragment_game_topic_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19153a;
    }
}
