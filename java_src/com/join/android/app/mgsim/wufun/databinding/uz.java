package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumProfileReplyHeaderBinding.java */
/* loaded from: classes3.dex */
public final class uz implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25631a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25632b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f25633c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25634d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f25635e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25636f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25637g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f25638h;

    private uz(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3) {
        this.f25631a = linearLayout;
        this.f25632b = textView;
        this.f25633c = simpleDraweeView;
        this.f25634d = view;
        this.f25635e = linearLayout2;
        this.f25636f = textView2;
        this.f25637g = imageView;
        this.f25638h = linearLayout3;
    }

    @NonNull
    public static uz a(@NonNull View view) {
        int i2 = R.id.forum_post_add_time;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_add_time);
        if (textView != null) {
            i2 = R.id.forum_post_avatar_src;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_post_avatar_src);
            if (simpleDraweeView != null) {
                i2 = R.id.forum_post_divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
                if (findChildViewById != null) {
                    i2 = R.id.forum_post_func_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_post_func_container);
                    if (linearLayout != null) {
                        i2 = R.id.forum_post_nickname;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_post_nickname);
                        if (textView2 != null) {
                            i2 = R.id.forum_post_reply;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.forum_post_reply);
                            if (imageView != null) {
                                i2 = R.id.layout_posts_top;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_posts_top);
                                if (linearLayout2 != null) {
                                    return new uz((LinearLayout) view, textView, simpleDraweeView, findChildViewById, linearLayout, textView2, imageView, linearLayout2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uz c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uz d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_profile_reply_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25631a;
    }
}
