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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumWelcomeItemHotForumHeaderBinding.java */
/* loaded from: classes3.dex */
public final class q00 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23778a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23779b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23780c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f23781d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23782e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f23783f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f23784g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23785h;

    private q00(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2) {
        this.f23778a = linearLayout;
        this.f23779b = linearLayout2;
        this.f23780c = textView;
        this.f23781d = view;
        this.f23782e = linearLayout3;
        this.f23783f = imageView;
        this.f23784g = linearLayout4;
        this.f23785h = textView2;
    }

    @NonNull
    public static q00 a(@NonNull View view) {
        int i2 = R.id.forumMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forumMore);
        if (linearLayout != null) {
            i2 = R.id.forumMoreTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forumMoreTitle);
            if (textView != null) {
                i2 = R.id.forum_post_divider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.forum_post_divider);
                if (findChildViewById != null) {
                    i2 = R.id.forums_hot_item_container;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forums_hot_item_container);
                    if (linearLayout2 != null) {
                        i2 = R.id.imageViewMore;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageViewMore);
                        if (imageView != null) {
                            i2 = R.id.layout_hot_title;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_hot_title);
                            if (linearLayout3 != null) {
                                i2 = R.id.sectionTitle;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sectionTitle);
                                if (textView2 != null) {
                                    return new q00((LinearLayout) view, linearLayout, textView, findChildViewById, linearLayout2, imageView, linearLayout3, textView2);
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
    public static q00 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q00 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_welcome_item_hot_forum_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23778a;
    }
}
