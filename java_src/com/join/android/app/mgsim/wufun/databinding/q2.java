package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.AutoScrollViewPager;
/* compiled from: ActivtyGamePaiweiBinding.java */
/* loaded from: classes3.dex */
public final class q2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23793a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f23794b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23795c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final AutoScrollViewPager f23796d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f23797e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23798f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f23799g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23800h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23801i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23802j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23803k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ListView f23804l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f23805m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final Button f23806n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f23807o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f23808p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f23809q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f23810r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f23811s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final ListView f23812t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final LinearLayout f23813u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final TextView f23814v;

    private q2(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull AutoScrollViewPager autoScrollViewPager, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ListView listView, @NonNull TextView textView6, @NonNull Button button, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView3, @NonNull ListView listView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView10) {
        this.f23793a = relativeLayout;
        this.f23794b = relativeLayout2;
        this.f23795c = simpleDraweeView;
        this.f23796d = autoScrollViewPager;
        this.f23797e = imageView;
        this.f23798f = textView;
        this.f23799g = imageView2;
        this.f23800h = textView2;
        this.f23801i = textView3;
        this.f23802j = textView4;
        this.f23803k = textView5;
        this.f23804l = listView;
        this.f23805m = textView6;
        this.f23806n = button;
        this.f23807o = textView7;
        this.f23808p = textView8;
        this.f23809q = textView9;
        this.f23810r = relativeLayout3;
        this.f23811s = imageView3;
        this.f23812t = listView2;
        this.f23813u = linearLayout;
        this.f23814v = textView10;
    }

    @NonNull
    public static q2 a(@NonNull View view) {
        int i2 = R.id.info_rl;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.info_rl);
        if (relativeLayout != null) {
            i2 = R.id.paiwei_ad_iv;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.paiwei_ad_iv);
            if (simpleDraweeView != null) {
                i2 = R.id.paiwei_ad_viewpager;
                AutoScrollViewPager autoScrollViewPager = (AutoScrollViewPager) ViewBindings.findChildViewById(view, R.id.paiwei_ad_viewpager);
                if (autoScrollViewPager != null) {
                    i2 = R.id.paiwei_back_iv;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.paiwei_back_iv);
                    if (imageView != null) {
                        i2 = R.id.paiwei_cion_tv;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_cion_tv);
                        if (textView != null) {
                            i2 = R.id.paiwei_help_ib;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.paiwei_help_ib);
                            if (imageView2 != null) {
                                i2 = R.id.paiwei_info_tv1;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_info_tv1);
                                if (textView2 != null) {
                                    i2 = R.id.paiwei_info_tv2;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_info_tv2);
                                    if (textView3 != null) {
                                        i2 = R.id.paiwei_info_tv3;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_info_tv3);
                                        if (textView4 != null) {
                                            i2 = R.id.paiwei_info_tv4;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_info_tv4);
                                            if (textView5 != null) {
                                                i2 = R.id.paiwei_listview;
                                                ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.paiwei_listview);
                                                if (listView != null) {
                                                    i2 = R.id.paiwei_null_tv;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_null_tv);
                                                    if (textView6 != null) {
                                                        i2 = R.id.paiwei_start_bt;
                                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.paiwei_start_bt);
                                                        if (button != null) {
                                                            i2 = R.id.paiwei_start_name_tv;
                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_start_name_tv);
                                                            if (textView7 != null) {
                                                                i2 = R.id.paiwei_start_order_tv;
                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_start_order_tv);
                                                                if (textView8 != null) {
                                                                    i2 = R.id.paiwei_start_time_tv;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.paiwei_start_time_tv);
                                                                    if (textView9 != null) {
                                                                        i2 = R.id.paiwei_title_rl;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.paiwei_title_rl);
                                                                        if (relativeLayout2 != null) {
                                                                            i2 = R.id.select_rolo_iv;
                                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.select_rolo_iv);
                                                                            if (imageView3 != null) {
                                                                                i2 = R.id.select_rolo_listview;
                                                                                ListView listView2 = (ListView) ViewBindings.findChildViewById(view, R.id.select_rolo_listview);
                                                                                if (listView2 != null) {
                                                                                    i2 = R.id.select_rolo_ll;
                                                                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.select_rolo_ll);
                                                                                    if (linearLayout != null) {
                                                                                        i2 = R.id.select_rolo_tx;
                                                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.select_rolo_tx);
                                                                                        if (textView10 != null) {
                                                                                            return new q2((RelativeLayout) view, relativeLayout, simpleDraweeView, autoScrollViewPager, imageView, textView, imageView2, textView2, textView3, textView4, textView5, listView, textView6, button, textView7, textView8, textView9, relativeLayout2, imageView3, listView2, linearLayout, textView10);
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
    public static q2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activty_game_paiwei, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23793a;
    }
}
