package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentFriendCardBinding.java */
/* loaded from: classes3.dex */
public final class ng implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f22891a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22892b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22893c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f22894d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22895e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final GridView f22896f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f22897g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f22898h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f22899i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22900j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22901k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final Group f22902l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22903m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22904n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f22905o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f22906p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f22907q;

    private ng(@NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull View view, @NonNull TextView textView2, @NonNull GridView gridView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Group group, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9) {
        this.f22891a = constraintLayout;
        this.f22892b = simpleDraweeView;
        this.f22893c = textView;
        this.f22894d = view;
        this.f22895e = textView2;
        this.f22896f = gridView;
        this.f22897g = imageView;
        this.f22898h = imageView2;
        this.f22899i = imageView3;
        this.f22900j = textView3;
        this.f22901k = textView4;
        this.f22902l = group;
        this.f22903m = textView5;
        this.f22904n = textView6;
        this.f22905o = textView7;
        this.f22906p = textView8;
        this.f22907q = textView9;
    }

    @NonNull
    public static ng a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.button;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.button);
            if (textView != null) {
                i2 = R.id.close;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.close);
                if (findChildViewById != null) {
                    i2 = R.id.desc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
                    if (textView2 != null) {
                        i2 = R.id.gridView;
                        GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.gridView);
                        if (gridView != null) {
                            i2 = R.id.icLike;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icLike);
                            if (imageView != null) {
                                i2 = R.id.icVip;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icVip);
                                if (imageView2 != null) {
                                    i2 = R.id.iv1;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
                                    if (imageView3 != null) {
                                        i2 = R.id.lbLevel;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.lbLevel);
                                        if (textView3 != null) {
                                            i2 = R.id.likeCount;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.likeCount);
                                            if (textView4 != null) {
                                                i2 = R.id.main;
                                                Group group = (Group) ViewBindings.findChildViewById(view, R.id.main);
                                                if (group != null) {
                                                    i2 = R.id.name;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                                    if (textView5 != null) {
                                                        i2 = R.id.netFailed;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.netFailed);
                                                        if (textView6 != null) {
                                                            i2 = R.id.noRecord;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.noRecord);
                                                            if (textView7 != null) {
                                                                i2 = R.id.state;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.state);
                                                                if (textView8 != null) {
                                                                    i2 = R.id.textView48;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.textView48);
                                                                    if (textView9 != null) {
                                                                        return new ng((ConstraintLayout) view, simpleDraweeView, textView, findChildViewById, textView2, gridView, imageView, imageView2, imageView3, textView3, textView4, group, textView5, textView6, textView7, textView8, textView9);
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
    public static ng c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ng d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_friend_card, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f22891a;
    }
}
