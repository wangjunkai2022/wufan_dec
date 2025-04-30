package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumForumActivityTopBinding.java */
/* loaded from: classes3.dex */
public final class ox implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23373a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23374b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23375c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23376d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f23377e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23378f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23379g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23380h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23381i;

    private ox(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f23373a = relativeLayout;
        this.f23374b = textView;
        this.f23375c = button;
        this.f23376d = textView2;
        this.f23377e = simpleDraweeView;
        this.f23378f = textView3;
        this.f23379g = textView4;
        this.f23380h = textView5;
        this.f23381i = textView6;
    }

    @NonNull
    public static ox a(@NonNull View view) {
        int i2 = R.id.forumDescTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forumDescTv);
        if (textView != null) {
            i2 = R.id.forumFollowBtn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.forumFollowBtn);
            if (button != null) {
                i2 = R.id.forum_follow_tv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_follow_tv);
                if (textView2 != null) {
                    i2 = R.id.forum_icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.forum_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_name);
                        if (textView3 != null) {
                            i2 = R.id.forum_posts_tv;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_posts_tv);
                            if (textView4 != null) {
                                i2 = R.id.forum_users_tv;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_users_tv);
                                if (textView5 != null) {
                                    i2 = R.id.textView14;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView14);
                                    if (textView6 != null) {
                                        return new ox((RelativeLayout) view, textView, button, textView2, simpleDraweeView, textView3, textView4, textView5, textView6);
                                    }
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
    public static ox c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ox d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_activity_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23373a;
    }
}
