package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumGroupMemberItemBinding.java */
/* loaded from: classes3.dex */
public final class cy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19117a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19118b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f19119c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19120d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19121e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19122f;

    private cy(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f19117a = relativeLayout;
        this.f19118b = textView;
        this.f19119c = simpleDraweeView;
        this.f19120d = textView2;
        this.f19121e = textView3;
        this.f19122f = textView4;
    }

    @NonNull
    public static cy a(@NonNull View view) {
        int i2 = R.id.addTime;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.addTime);
        if (textView != null) {
            i2 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.grade;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.grade);
                if (textView2 != null) {
                    i2 = R.id.groupAction;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.groupAction);
                    if (textView3 != null) {
                        i2 = R.id.nickName;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.nickName);
                        if (textView4 != null) {
                            return new cy((RelativeLayout) view, textView, simpleDraweeView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_group_member_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19117a;
    }
}
