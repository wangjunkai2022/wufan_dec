package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CopyTextView;
import com.join.mgps.customview.CopyTextViewNew;
import com.join.mgps.customview.ExpandLayout;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
/* compiled from: ItemGameDetailCommentListItemViewBinding.java */
/* loaded from: classes3.dex */
public final class dq implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final TextView B;
    @NonNull
    public final SimpleDraweeView C;
    @NonNull
    public final View D;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19461a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19462b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MStarBar f19463c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19464d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ExpandLayout f19465e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CopyTextView f19466f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final CopyTextViewNew f19467g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19468h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f19469i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19470j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f19471k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f19472l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f19473m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19474n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f19475o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19476p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final View f19477q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final VipView f19478r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f19479s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19480t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ImageView f19481u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f19482v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f19483w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final LinearLayout f19484x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final LinearLayout f19485y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final RelativeLayout f19486z;

    private dq(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MStarBar mStarBar, @NonNull TextView textView, @NonNull ExpandLayout expandLayout, @NonNull CopyTextView copyTextView, @NonNull CopyTextViewNew copyTextViewNew, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull ImageView imageView2, @NonNull TextView textView5, @NonNull ImageView imageView3, @NonNull TextView textView6, @NonNull View view, @NonNull VipView vipView, @NonNull ImageView imageView4, @NonNull TextView textView7, @NonNull ImageView imageView5, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view2) {
        this.f19461a = linearLayout;
        this.f19462b = linearLayout2;
        this.f19463c = mStarBar;
        this.f19464d = textView;
        this.f19465e = expandLayout;
        this.f19466f = copyTextView;
        this.f19467g = copyTextViewNew;
        this.f19468h = textView2;
        this.f19469i = imageView;
        this.f19470j = textView3;
        this.f19471k = linearLayout3;
        this.f19472l = textView4;
        this.f19473m = imageView2;
        this.f19474n = textView5;
        this.f19475o = imageView3;
        this.f19476p = textView6;
        this.f19477q = view;
        this.f19478r = vipView;
        this.f19479s = imageView4;
        this.f19480t = textView7;
        this.f19481u = imageView5;
        this.f19482v = textView8;
        this.f19483w = textView9;
        this.f19484x = linearLayout4;
        this.f19485y = linearLayout5;
        this.f19486z = relativeLayout;
        this.A = textView10;
        this.B = textView11;
        this.C = simpleDraweeView;
        this.D = view2;
    }

    @NonNull
    public static dq a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i2 = R.id.comment_head_num_tx;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_num_tx);
            if (textView != null) {
                i2 = R.id.content;
                ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(view, R.id.content);
                if (expandLayout != null) {
                    i2 = R.id.content2;
                    CopyTextView copyTextView = (CopyTextView) ViewBindings.findChildViewById(view, R.id.content2);
                    if (copyTextView != null) {
                        i2 = R.id.contentWeb;
                        CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(view, R.id.contentWeb);
                        if (copyTextViewNew != null) {
                            i2 = R.id.deleteTx;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.deleteTx);
                            if (textView2 != null) {
                                i2 = R.id.down;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.down);
                                if (imageView != null) {
                                    i2 = R.id.downNumber;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.downNumber);
                                    if (textView3 != null) {
                                        i2 = R.id.editLl;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editLl);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.editTx;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.editTx);
                                            if (textView4 != null) {
                                                i2 = R.id.isAuth;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.isAuth);
                                                if (imageView2 != null) {
                                                    i2 = R.id.isConnoisseurs;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.isConnoisseurs);
                                                    if (textView5 != null) {
                                                        i2 = R.id.isGood;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.isGood);
                                                        if (imageView3 != null) {
                                                            i2 = R.id.isMe;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.isMe);
                                                            if (textView6 != null) {
                                                                i2 = R.id.layoutTop;
                                                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.layoutTop);
                                                                if (findChildViewById != null) {
                                                                    i2 = R.id.levelTv;
                                                                    VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.levelTv);
                                                                    if (vipView != null) {
                                                                        i2 = R.id.message;
                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.message);
                                                                        if (imageView4 != null) {
                                                                            i2 = R.id.messageNumber;
                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.messageNumber);
                                                                            if (textView7 != null) {
                                                                                i2 = R.id.parise;
                                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.parise);
                                                                                if (imageView5 != null) {
                                                                                    i2 = R.id.pariseNumber;
                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.pariseNumber);
                                                                                    if (textView8 != null) {
                                                                                        i2 = R.id.phoneModle;
                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.phoneModle);
                                                                                        if (textView9 != null) {
                                                                                            i2 = R.id.tbl_1_ll;
                                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tbl_1_ll);
                                                                                            if (linearLayout3 != null) {
                                                                                                i2 = R.id.tbl_2_ll;
                                                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tbl_2_ll);
                                                                                                if (linearLayout4 != null) {
                                                                                                    i2 = R.id.tbl_3_rl;
                                                                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.tbl_3_rl);
                                                                                                    if (relativeLayout != null) {
                                                                                                        i2 = R.id.time;
                                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                                                                                        if (textView10 != null) {
                                                                                                            i2 = R.id.userName;
                                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                                                                                            if (textView11 != null) {
                                                                                                                i2 = R.id.usericon;
                                                                                                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.usericon);
                                                                                                                if (simpleDraweeView != null) {
                                                                                                                    i2 = R.id.v_divider;
                                                                                                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.v_divider);
                                                                                                                    if (findChildViewById2 != null) {
                                                                                                                        return new dq(linearLayout, linearLayout, mStarBar, textView, expandLayout, copyTextView, copyTextViewNew, textView2, imageView, textView3, linearLayout2, textView4, imageView2, textView5, imageView3, textView6, findChildViewById, vipView, imageView4, textView7, imageView5, textView8, textView9, linearLayout3, linearLayout4, relativeLayout, textView10, textView11, simpleDraweeView, findChildViewById2);
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
    public static dq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_comment_list_item_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19461a;
    }
}
