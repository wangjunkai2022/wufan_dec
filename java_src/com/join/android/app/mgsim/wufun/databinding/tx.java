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
/* compiled from: MgForumForumTMemberItemBinding.java */
/* loaded from: classes3.dex */
public final class tx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25323a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25324b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25325c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f25326d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f25327e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f25328f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25329g;

    private tx(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView2) {
        this.f25323a = linearLayout;
        this.f25324b = simpleDraweeView;
        this.f25325c = textView;
        this.f25326d = relativeLayout;
        this.f25327e = button;
        this.f25328f = button2;
        this.f25329g = textView2;
    }

    @NonNull
    public static tx a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.desc;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
            if (textView != null) {
                i2 = R.id.follow;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.follow);
                if (relativeLayout != null) {
                    i2 = R.id.followImg;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.followImg);
                    if (button != null) {
                        i2 = R.id.followedImg;
                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.followedImg);
                        if (button2 != null) {
                            i2 = R.id.nickName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nickName);
                            if (textView2 != null) {
                                return new tx((LinearLayout) view, simpleDraweeView, textView, relativeLayout, button, button2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_t_member_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25323a;
    }
}
