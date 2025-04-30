package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
/* compiled from: LayoutGameDetailSheetProfileBinding.java */
/* loaded from: classes3.dex */
public final class nt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22965a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22966b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22967c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22968d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22969e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22970f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final FlowLayout f22971g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22972h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ScrollView f22973i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Group f22974j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22975k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22976l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22977m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f22978n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f22979o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f22980p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f22981q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f22982r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f22983s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f22984t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f22985u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f22986v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final Group f22987w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final TextView f22988x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final View f22989y;

    private nt(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull FlowLayout flowLayout, @NonNull TextView textView5, @NonNull ScrollView scrollView, @NonNull Group group, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12, @NonNull TextView textView13, @NonNull TextView textView14, @NonNull TextView textView15, @NonNull TextView textView16, @NonNull TextView textView17, @NonNull Group group2, @NonNull TextView textView18, @NonNull View view) {
        this.f22965a = linearLayout;
        this.f22966b = textView;
        this.f22967c = imageView;
        this.f22968d = textView2;
        this.f22969e = textView3;
        this.f22970f = textView4;
        this.f22971g = flowLayout;
        this.f22972h = textView5;
        this.f22973i = scrollView;
        this.f22974j = group;
        this.f22975k = textView6;
        this.f22976l = textView7;
        this.f22977m = textView8;
        this.f22978n = textView9;
        this.f22979o = textView10;
        this.f22980p = textView11;
        this.f22981q = textView12;
        this.f22982r = textView13;
        this.f22983s = textView14;
        this.f22984t = textView15;
        this.f22985u = textView16;
        this.f22986v = textView17;
        this.f22987w = group2;
        this.f22988x = textView18;
        this.f22989y = view;
    }

    @NonNull
    public static nt a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView != null) {
                i2 = R.id.date;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.date);
                if (textView2 != null) {
                    i2 = R.id.desc;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.desc);
                    if (textView3 != null) {
                        i2 = R.id.downloadCount;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.downloadCount);
                        if (textView4 != null) {
                            i2 = R.id.flowLayout;
                            FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.flowLayout);
                            if (flowLayout != null) {
                                i2 = R.id.gameFrom;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.gameFrom);
                                if (textView5 != null) {
                                    i2 = R.id.scrollView;
                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                    if (scrollView != null) {
                                        i2 = R.id.sourceGroup;
                                        Group group = (Group) ViewBindings.findChildViewById(view, R.id.sourceGroup);
                                        if (group != null) {
                                            i2 = R.id.textView101;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView101);
                                            if (textView6 != null) {
                                                i2 = R.id.textView103;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView103);
                                                if (textView7 != null) {
                                                    i2 = R.id.textView104;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView104);
                                                    if (textView8 != null) {
                                                        i2 = R.id.textView108;
                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.textView108);
                                                        if (textView9 != null) {
                                                            i2 = R.id.textView110;
                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.textView110);
                                                            if (textView10 != null) {
                                                                i2 = R.id.textView112;
                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.textView112);
                                                                if (textView11 != null) {
                                                                    i2 = R.id.textView114;
                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.textView114);
                                                                    if (textView12 != null) {
                                                                        i2 = R.id.textView93;
                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(view, R.id.textView93);
                                                                        if (textView13 != null) {
                                                                            i2 = R.id.updateMessage;
                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(view, R.id.updateMessage);
                                                                            if (textView14 != null) {
                                                                                i2 = R.id.updateMessageTitle;
                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(view, R.id.updateMessageTitle);
                                                                                if (textView15 != null) {
                                                                                    i2 = R.id.uploadGame;
                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(view, R.id.uploadGame);
                                                                                    if (textView16 != null) {
                                                                                        i2 = R.id.vendor;
                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(view, R.id.vendor);
                                                                                        if (textView17 != null) {
                                                                                            i2 = R.id.vendorGroup;
                                                                                            Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.vendorGroup);
                                                                                            if (group2 != null) {
                                                                                                i2 = R.id.versionName;
                                                                                                TextView textView18 = (TextView) ViewBindings.findChildViewById(view, R.id.versionName);
                                                                                                if (textView18 != null) {
                                                                                                    i2 = R.id.view17;
                                                                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view17);
                                                                                                    if (findChildViewById != null) {
                                                                                                        return new nt((LinearLayout) view, textView, imageView, textView2, textView3, textView4, flowLayout, textView5, scrollView, group, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, group2, textView18, findChildViewById);
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
    public static nt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_game_detail_sheet_profile, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22965a;
    }
}
