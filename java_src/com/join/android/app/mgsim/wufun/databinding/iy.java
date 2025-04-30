package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumItemForWelcomeBinding.java */
/* loaded from: classes3.dex */
public final class iy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21280a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21281b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21282c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21283d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21284e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21285f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f21286g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21287h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f21288i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21289j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f21290k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f21291l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f21292m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f21293n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f21294o;

    private iy(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView4, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView5, @NonNull LinearLayout linearLayout5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f21280a = linearLayout;
        this.f21281b = textView;
        this.f21282c = button;
        this.f21283d = linearLayout2;
        this.f21284e = textView2;
        this.f21285f = linearLayout3;
        this.f21286g = simpleDraweeView;
        this.f21287h = textView3;
        this.f21288i = linearLayout4;
        this.f21289j = textView4;
        this.f21290k = relativeLayout;
        this.f21291l = textView5;
        this.f21292m = linearLayout5;
        this.f21293n = textView6;
        this.f21294o = textView7;
    }

    @NonNull
    public static iy a(@NonNull View view) {
        int i2 = R.id.forum_desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_desc);
        if (textView != null) {
            i2 = R.id.forum_follow;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.forum_follow);
            if (button != null) {
                i2 = R.id.forum_follow_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forum_follow_layout);
                if (linearLayout != null) {
                    i2 = R.id.forum_follow_tv;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_follow_tv);
                    if (textView2 != null) {
                        i2 = R.id.forumFollowsParent;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forumFollowsParent);
                        if (linearLayout2 != null) {
                            i2 = R.id.forum_icon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.forum_icon);
                            if (simpleDraweeView != null) {
                                i2 = R.id.forum_name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_name);
                                if (textView3 != null) {
                                    i2 = R.id.forumPostsParent;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forumPostsParent);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.forum_posts_tv;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_posts_tv);
                                        if (textView4 != null) {
                                            i2 = R.id.forumTodayPostsParent;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.forumTodayPostsParent);
                                            if (relativeLayout != null) {
                                                i2 = R.id.forum_today_posts_tv;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_today_posts_tv);
                                                if (textView5 != null) {
                                                    i2 = R.id.forumUsersParent;
                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forumUsersParent);
                                                    if (linearLayout4 != null) {
                                                        i2 = R.id.forum_users_tv;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.forum_users_tv);
                                                        if (textView6 != null) {
                                                            i2 = R.id.textView14;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView14);
                                                            if (textView7 != null) {
                                                                return new iy((LinearLayout) view, textView, button, linearLayout, textView2, linearLayout2, simpleDraweeView, textView3, linearLayout3, textView4, relativeLayout, textView5, linearLayout4, textView6, textView7);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
    public static iy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static iy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_item_for_welcome, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21280a;
    }
}
