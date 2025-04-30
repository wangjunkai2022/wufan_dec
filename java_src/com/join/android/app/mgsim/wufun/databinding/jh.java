package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FragmentMyGameItemPlugBinding.java */
/* loaded from: classes3.dex */
public final class jh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21468a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21469b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21470c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21471d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21472e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f21473f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f21474g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21475h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f21476i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21477j;

    private jh(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull View view, @NonNull View view2, @NonNull TextView textView3, @NonNull ProgressBar progressBar, @NonNull TextView textView4) {
        this.f21468a = constraintLayout;
        this.f21469b = textView;
        this.f21470c = simpleDraweeView;
        this.f21471d = imageView;
        this.f21472e = textView2;
        this.f21473f = view;
        this.f21474g = view2;
        this.f21475h = textView3;
        this.f21476i = progressBar;
        this.f21477j = textView4;
    }

    @NonNull
    public static jh a(@NonNull View view) {
        int i2 = R.id.desc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
        if (textView != null) {
            i2 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
            if (simpleDraweeView != null) {
                i2 = R.id.imageView61;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView61);
                if (imageView != null) {
                    i2 = R.id.install;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.install);
                    if (textView2 != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.more;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.more);
                            if (findChildViewById2 != null) {
                                i2 = R.id.name;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                if (textView3 != null) {
                                    i2 = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                    if (progressBar != null) {
                                        i2 = R.id.speedUp;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.speedUp);
                                        if (textView4 != null) {
                                            return new jh((ConstraintLayout) view, textView, simpleDraweeView, imageView, textView2, findChildViewById, findChildViewById2, textView3, progressBar, textView4);
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
    public static jh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game_item_plug, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21468a;
    }
}
