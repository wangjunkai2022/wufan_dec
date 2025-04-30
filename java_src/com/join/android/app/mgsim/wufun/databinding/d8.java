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
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.VipView;
/* compiled from: CommentListItemViewBinding.java */
/* loaded from: classes3.dex */
public final class d8 implements ViewBinding {
    @NonNull
    public final RelativeLayout A;
    @NonNull
    public final TextView B;
    @NonNull
    public final TextView C;
    @NonNull
    public final SimpleDraweeView D;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19239a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19240b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MStarBar f19241c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19242d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19243e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final CopyTextView f19244f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final CopyTextViewNew f19245g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19246h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f19247i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19248j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f19249k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f19250l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f19251m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19252n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f19253o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f19254p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final View f19255q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final VipView f19256r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f19257s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f19258t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f19259u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final ImageView f19260v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f19261w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f19262x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final LinearLayout f19263y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final LinearLayout f19264z;

    private d8(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull MStarBar mStarBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CopyTextView copyTextView, @NonNull CopyTextViewNew copyTextViewNew, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull TextView textView6, @NonNull ImageView imageView3, @NonNull TextView textView7, @NonNull View view, @NonNull VipView vipView, @NonNull ImageView imageView4, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull ImageView imageView5, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f19239a = linearLayout;
        this.f19240b = linearLayout2;
        this.f19241c = mStarBar;
        this.f19242d = textView;
        this.f19243e = textView2;
        this.f19244f = copyTextView;
        this.f19245g = copyTextViewNew;
        this.f19246h = textView3;
        this.f19247i = imageView;
        this.f19248j = textView4;
        this.f19249k = linearLayout3;
        this.f19250l = textView5;
        this.f19251m = imageView2;
        this.f19252n = textView6;
        this.f19253o = imageView3;
        this.f19254p = textView7;
        this.f19255q = view;
        this.f19256r = vipView;
        this.f19257s = imageView4;
        this.f19258t = textView8;
        this.f19259u = textView9;
        this.f19260v = imageView5;
        this.f19261w = textView10;
        this.f19262x = textView11;
        this.f19263y = linearLayout4;
        this.f19264z = linearLayout5;
        this.A = relativeLayout;
        this.B = textView12;
        this.C = textView13;
        this.D = simpleDraweeView;
    }

    @NonNull
    public static d8 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.comment_head_mstarBar;
        MStarBar mStarBar = (MStarBar) ViewBindings.findChildViewById(view, R.id.comment_head_mstarBar);
        if (mStarBar != null) {
            i2 = R.id.comment_head_num_tx;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_head_num_tx);
            if (textView != null) {
                i2 = R.id.content;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                if (textView2 != null) {
                    i2 = R.id.content2;
                    CopyTextView copyTextView = (CopyTextView) ViewBindings.findChildViewById(view, R.id.content2);
                    if (copyTextView != null) {
                        i2 = R.id.contentWeb;
                        CopyTextViewNew copyTextViewNew = (CopyTextViewNew) ViewBindings.findChildViewById(view, R.id.contentWeb);
                        if (copyTextViewNew != null) {
                            i2 = R.id.deleteTx;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.deleteTx);
                            if (textView3 != null) {
                                i2 = R.id.down;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.down);
                                if (imageView != null) {
                                    i2 = R.id.downNumber;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.downNumber);
                                    if (textView4 != null) {
                                        i2 = R.id.editLl;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editLl);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.editTx;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.editTx);
                                            if (textView5 != null) {
                                                i2 = R.id.isAuth;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.isAuth);
                                                if (imageView2 != null) {
                                                    i2 = R.id.isConnoisseurs;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.isConnoisseurs);
                                                    if (textView6 != null) {
                                                        i2 = R.id.isGood;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.isGood);
                                                        if (imageView3 != null) {
                                                            i2 = R.id.isMe;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.isMe);
                                                            if (textView7 != null) {
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
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.messageNumber);
                                                                            if (textView8 != null) {
                                                                                i2 = R.id.more;
                                                                                TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.more);
                                                                                if (textView9 != null) {
                                                                                    i2 = R.id.parise;
                                                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.parise);
                                                                                    if (imageView5 != null) {
                                                                                        i2 = R.id.pariseNumber;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.pariseNumber);
                                                                                        if (textView10 != null) {
                                                                                            i2 = R.id.phoneModle;
                                                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.phoneModle);
                                                                                            if (textView11 != null) {
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
                                                                                                            TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                                                                                            if (textView12 != null) {
                                                                                                                i2 = R.id.userName;
                                                                                                                TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.userName);
                                                                                                                if (textView13 != null) {
                                                                                                                    i2 = R.id.usericon;
                                                                                                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.usericon);
                                                                                                                    if (simpleDraweeView != null) {
                                                                                                                        return new d8(linearLayout, linearLayout, mStarBar, textView, textView2, copyTextView, copyTextViewNew, textView3, imageView, textView4, linearLayout2, textView5, imageView2, textView6, imageView3, textView7, findChildViewById, vipView, imageView4, textView8, textView9, imageView5, textView10, textView11, linearLayout3, linearLayout4, relativeLayout, textView12, textView13, simpleDraweeView);
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
    public static d8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.comment_list_item_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19239a;
    }
}
