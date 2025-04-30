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
/* compiled from: MgFragmentGameTopicHeaderBinding.java */
/* loaded from: classes3.dex */
public final class c10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18719a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f18720b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f18721c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18722d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18723e;

    private c10(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f18719a = linearLayout;
        this.f18720b = simpleDraweeView;
        this.f18721c = view;
        this.f18722d = textView;
        this.f18723e = linearLayout2;
    }

    @NonNull
    public static c10 a(@NonNull View view) {
        int i2 = R.id.forum_post_avatar_src;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_post_avatar_src);
        if (simpleDraweeView != null) {
            i2 = R.id.forum_post_divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
            if (findChildViewById != null) {
                i2 = R.id.forum_post_nickname;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_nickname);
                if (textView != null) {
                    i2 = R.id.layout_posts_top;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_posts_top);
                    if (linearLayout != null) {
                        return new c10((LinearLayout) view, simpleDraweeView, findChildViewById, textView, linearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_fragment_game_topic_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18719a;
    }
}
