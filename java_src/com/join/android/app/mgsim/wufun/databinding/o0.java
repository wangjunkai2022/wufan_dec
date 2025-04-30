package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityGameTransferBinding.java */
/* loaded from: classes3.dex */
public final class o0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23036a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23037b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23038c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23039d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23040e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23041f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f23042g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f23043h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23044i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RecyclerView f23045j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f23046k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f23047l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f23048m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RecyclerView f23049n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final Button f23050o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f23051p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f23052q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f23053r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final RelativeLayout f23054s;

    private o0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView3, @NonNull RecyclerView recyclerView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ImageView imageView3, @NonNull RecyclerView recyclerView2, @NonNull Button button, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull RelativeLayout relativeLayout4) {
        this.f23036a = relativeLayout;
        this.f23037b = imageView;
        this.f23038c = imageView2;
        this.f23039d = linearLayout;
        this.f23040e = textView;
        this.f23041f = textView2;
        this.f23042g = relativeLayout2;
        this.f23043h = relativeLayout3;
        this.f23044i = textView3;
        this.f23045j = recyclerView;
        this.f23046k = textView4;
        this.f23047l = textView5;
        this.f23048m = imageView3;
        this.f23049n = recyclerView2;
        this.f23050o = button;
        this.f23051p = textView6;
        this.f23052q = textView7;
        this.f23053r = textView8;
        this.f23054s = relativeLayout4;
    }

    @NonNull
    public static o0 a(@NonNull View view) {
        int i2 = R.id.game_transfer_back_img;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.game_transfer_back_img);
        if (imageView != null) {
            i2 = R.id.game_transfer_bar_img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.game_transfer_bar_img);
            if (imageView2 != null) {
                i2 = R.id.game_transfer_bottom_navigation_bar_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.game_transfer_bottom_navigation_bar_ll);
                if (linearLayout != null) {
                    i2 = R.id.game_transfer_bottom_navigation_left_txt;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_bottom_navigation_left_txt);
                    if (textView != null) {
                        i2 = R.id.game_transfer_bottom_navigation_right_txt;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_bottom_navigation_right_txt);
                        if (textView2 != null) {
                            i2 = R.id.game_transfer_bottom_rl;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.game_transfer_bottom_rl);
                            if (relativeLayout != null) {
                                i2 = R.id.game_transfer_history_hint_rl;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.game_transfer_history_hint_rl);
                                if (relativeLayout2 != null) {
                                    i2 = R.id.game_transfer_history_list_hint_txt;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_history_list_hint_txt);
                                    if (textView3 != null) {
                                        i2 = R.id.game_transfer_historyList_rv;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.game_transfer_historyList_rv);
                                        if (recyclerView != null) {
                                            i2 = R.id.game_transfer_left_phone_txt;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_left_phone_txt);
                                            if (textView4 != null) {
                                                i2 = R.id.game_transfer_list_choose_all_txt;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_list_choose_all_txt);
                                                if (textView5 != null) {
                                                    i2 = R.id.game_transfer_list_hint_close_img;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.game_transfer_list_hint_close_img);
                                                    if (imageView3 != null) {
                                                        i2 = R.id.game_transfer_list_rv;
                                                        RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.game_transfer_list_rv);
                                                        if (recyclerView2 != null) {
                                                            i2 = R.id.game_transfer_ok_btn;
                                                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.game_transfer_ok_btn);
                                                            if (button != null) {
                                                                i2 = R.id.game_transfer_right_phone_txt;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_right_phone_txt);
                                                                if (textView6 != null) {
                                                                    i2 = R.id.game_transfer_selected_num_txt;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_selected_num_txt);
                                                                    if (textView7 != null) {
                                                                        i2 = R.id.game_transfer_title_txt;
                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.game_transfer_title_txt);
                                                                        if (textView8 != null) {
                                                                            i2 = R.id.game_transfer_top_rl;
                                                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.game_transfer_top_rl);
                                                                            if (relativeLayout3 != null) {
                                                                                return new o0((RelativeLayout) view, imageView, imageView2, linearLayout, textView, textView2, relativeLayout, relativeLayout2, textView3, recyclerView, textView4, textView5, imageView3, recyclerView2, button, textView6, textView7, textView8, relativeLayout3);
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
    public static o0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_game_transfer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23036a;
    }
}
