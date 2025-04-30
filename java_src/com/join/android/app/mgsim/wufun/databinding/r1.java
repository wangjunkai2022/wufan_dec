package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomEdittext;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: ActivityPostingBinding.java */
/* loaded from: classes3.dex */
public final class r1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24142a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f24143b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24144c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24145d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f24146e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final FrameLayout f24147f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final FrameLayout f24148g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f24149h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f24150i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f24151j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final EditText f24152k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final HListView f24153l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final View f24154m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final CustomEdittext f24155n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final CustomEdittext f24156o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f24157p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final rc0 f24158q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f24159r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24160s;

    private r1(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout2, @NonNull EditText editText, @NonNull HListView hListView, @NonNull View view, @NonNull CustomEdittext customEdittext, @NonNull CustomEdittext customEdittext2, @NonNull RelativeLayout relativeLayout3, @NonNull rc0 rc0Var, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24142a = relativeLayout;
        this.f24143b = button;
        this.f24144c = button2;
        this.f24145d = linearLayout;
        this.f24146e = frameLayout;
        this.f24147f = frameLayout2;
        this.f24148g = frameLayout3;
        this.f24149h = linearLayout2;
        this.f24150i = linearLayout3;
        this.f24151j = relativeLayout2;
        this.f24152k = editText;
        this.f24153l = hListView;
        this.f24154m = view;
        this.f24155n = customEdittext;
        this.f24156o = customEdittext2;
        this.f24157p = relativeLayout3;
        this.f24158q = rc0Var;
        this.f24159r = textView;
        this.f24160s = textView2;
    }

    @NonNull
    public static r1 a(@NonNull View view) {
        int i2 = R.id.btn_selectedCoins;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_selectedCoins);
        if (button != null) {
            i2 = R.id.btn_selectedGames;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_selectedGames);
            if (button2 != null) {
                i2 = R.id.editMainContainer;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editMainContainer);
                if (linearLayout != null) {
                    i2 = R.id.fl_insert_label;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_insert_label);
                    if (frameLayout != null) {
                        i2 = R.id.fl_insert_pic;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_insert_pic);
                        if (frameLayout2 != null) {
                            i2 = R.id.fl_posting_type_container;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_posting_type_container);
                            if (frameLayout3 != null) {
                                i2 = R.id.ll_bottom;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom);
                                if (linearLayout2 != null) {
                                    i2 = R.id.ll_help_posting;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_help_posting);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.ll_posting_rec_game;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ll_posting_rec_game);
                                        if (relativeLayout != null) {
                                            i2 = R.id.posts_content;
                                            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.posts_content);
                                            if (editText != null) {
                                                i2 = R.id.posts_pic_hlist;
                                                HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.posts_pic_hlist);
                                                if (hListView != null) {
                                                    i2 = R.id.posts_res_line;
                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.posts_res_line);
                                                    if (findChildViewById != null) {
                                                        i2 = R.id.posts_res_link;
                                                        CustomEdittext customEdittext = (CustomEdittext) ViewBindings.findChildViewById(view, R.id.posts_res_link);
                                                        if (customEdittext != null) {
                                                            i2 = R.id.posts_title;
                                                            CustomEdittext customEdittext2 = (CustomEdittext) ViewBindings.findChildViewById(view, R.id.posts_title);
                                                            if (customEdittext2 != null) {
                                                                i2 = R.id.rl_main;
                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_main);
                                                                if (relativeLayout2 != null) {
                                                                    i2 = R.id.title;
                                                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.title);
                                                                    if (findChildViewById2 != null) {
                                                                        rc0 a4 = rc0.a(findChildViewById2);
                                                                        i2 = R.id.tv_coins;
                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coins);
                                                                        if (textView != null) {
                                                                            i2 = R.id.tv_rec_game;
                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rec_game);
                                                                            if (textView2 != null) {
                                                                                return new r1((RelativeLayout) view, button, button2, linearLayout, frameLayout, frameLayout2, frameLayout3, linearLayout2, linearLayout3, relativeLayout, editText, hListView, findChildViewById, customEdittext, customEdittext2, relativeLayout2, a4, textView, textView2);
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
    public static r1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_posting, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24142a;
    }
}
