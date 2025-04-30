package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityFriendInviteBinding.java */
/* loaded from: classes3.dex */
public final class d0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19132a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19133b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f19134c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19135d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19136e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19137f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f19138g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f19139h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19140i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19141j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f19142k;

    private d0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull View view, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f19132a = relativeLayout;
        this.f19133b = textView;
        this.f19134c = simpleDraweeView;
        this.f19135d = textView2;
        this.f19136e = textView3;
        this.f19137f = imageView;
        this.f19138g = imageView2;
        this.f19139h = view;
        this.f19140i = textView4;
        this.f19141j = textView5;
        this.f19142k = textView6;
    }

    @NonNull
    public static d0 a(@NonNull View view) {
        int i2 = R.id.accept;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.accept);
        if (textView != null) {
            i2 = R.id.avatar;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
            if (simpleDraweeView != null) {
                i2 = R.id.decline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.decline);
                if (textView2 != null) {
                    i2 = R.id.gameName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                    if (textView3 != null) {
                        i2 = R.id.imageView66;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView66);
                        if (imageView != null) {
                            i2 = R.id.imageView68;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView68);
                            if (imageView2 != null) {
                                i2 = R.id.iv_close;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.iv_close);
                                if (findChildViewById != null) {
                                    i2 = R.id.name;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                    if (textView4 != null) {
                                        i2 = R.id.textView84;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView84);
                                        if (textView5 != null) {
                                            i2 = R.id.textView97;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView97);
                                            if (textView6 != null) {
                                                return new d0((RelativeLayout) view, textView, simpleDraweeView, textView2, textView3, imageView, imageView2, findChildViewById, textView4, textView5, textView6);
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
    public static d0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_friend_invite, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19132a;
    }
}
