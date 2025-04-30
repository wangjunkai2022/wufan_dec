package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentFriendMyBinding.java */
/* loaded from: classes3.dex */
public final class rg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24409a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24410b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f24411c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f24412d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24413e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f24414f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f24415g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24416h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24417i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f24418j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24419k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f24420l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f24421m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RecyclerView f24422n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f24423o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f24424p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f24425q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f24426r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f24427s;

    private rg(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView6, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ImageView imageView7) {
        this.f24409a = constraintLayout;
        this.f24410b = simpleDraweeView;
        this.f24411c = constraintLayout2;
        this.f24412d = constraintLayout3;
        this.f24413e = imageView;
        this.f24414f = imageView2;
        this.f24415g = imageView3;
        this.f24416h = textView;
        this.f24417i = textView2;
        this.f24418j = linearLayout;
        this.f24419k = textView3;
        this.f24420l = imageView4;
        this.f24421m = imageView5;
        this.f24422n = recyclerView;
        this.f24423o = imageView6;
        this.f24424p = textView4;
        this.f24425q = textView5;
        this.f24426r = textView6;
        this.f24427s = imageView7;
    }

    @NonNull
    public static rg a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.bottom;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.bottom);
            if (constraintLayout != null) {
                i2 = R.id.constraintLayout7;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout7);
                if (constraintLayout2 != null) {
                    i2 = R.id.icVip;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icVip);
                    if (imageView != null) {
                        i2 = R.id.inviteFriend;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.inviteFriend);
                        if (imageView2 != null) {
                            i2 = R.id.msg;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.msg);
                            if (imageView3 != null) {
                                i2 = R.id.msgCount;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.msgCount);
                                if (textView != null) {
                                    i2 = R.id.nickname;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.nickname);
                                    if (textView2 != null) {
                                        i2 = R.id.noRecord;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.noRecord);
                                        if (linearLayout != null) {
                                            i2 = R.id.onlineState;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.onlineState);
                                            if (textView3 != null) {
                                                i2 = R.id.onlineStateArr;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.onlineStateArr);
                                                if (imageView4 != null) {
                                                    i2 = R.id.qq;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.qq);
                                                    if (imageView5 != null) {
                                                        i2 = R.id.recyclerView;
                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                                                        if (recyclerView != null) {
                                                            i2 = R.id.searchFriend;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.searchFriend);
                                                            if (imageView6 != null) {
                                                                i2 = R.id.textView89;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView89);
                                                                if (textView4 != null) {
                                                                    i2 = R.id.textView90;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView90);
                                                                    if (textView5 != null) {
                                                                        i2 = R.id.unlogin;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.unlogin);
                                                                        if (textView6 != null) {
                                                                            i2 = R.id.wechat;
                                                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.wechat);
                                                                            if (imageView7 != null) {
                                                                                return new rg((ConstraintLayout) view, simpleDraweeView, constraintLayout, constraintLayout2, imageView, imageView2, imageView3, textView, textView2, linearLayout, textView3, imageView4, imageView5, recyclerView, imageView6, textView4, textView5, textView6, imageView7);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_friend_my, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24409a;
    }
}
