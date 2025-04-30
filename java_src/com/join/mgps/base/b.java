package com.join.mgps.base;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.util.Linkify;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
/* compiled from: BaseViewHolder.java */
/* loaded from: classes3.dex */
public class b extends RecyclerView.ViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<View> f44739a;

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<Integer> f44740b;

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashSet<Integer> f44741c;

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashSet<Integer> f44742d;

    /* renamed from: e  reason: collision with root package name */
    private BaseQuickAdapter f44743e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public View f44744f;

    /* renamed from: g  reason: collision with root package name */
    Object f44745g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseViewHolder.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f44743e.getOnItemChildClickListener() != null) {
                b.this.f44743e.getOnItemChildClickListener().onItemChildClick(b.this.f44743e, view, b.this.g());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseViewHolder.java */
    /* renamed from: com.join.mgps.base.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class View$OnLongClickListenerC0188b implements View.OnLongClickListener {
        View$OnLongClickListenerC0188b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return b.this.f44743e.getOnItemChildLongClickListener() != null && b.this.f44743e.getOnItemChildLongClickListener().a(b.this.f44743e, view, b.this.g());
        }
    }

    public b(View view) {
        super(view);
        this.f44739a = new SparseArray<>();
        this.f44741c = new LinkedHashSet<>();
        this.f44742d = new LinkedHashSet<>();
        this.f44740b = new HashSet<>();
        this.f44744f = view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g() {
        return getLayoutPosition();
    }

    public b A(@IdRes int i2, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        ((CompoundButton) k(i2)).setOnCheckedChangeListener(onCheckedChangeListener);
        return this;
    }

    public b B(@IdRes int i2, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        ((AdapterView) k(i2)).setOnItemLongClickListener(onItemLongClickListener);
        return this;
    }

    public b C(@IdRes int i2, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        ((AdapterView) k(i2)).setOnItemSelectedListener(onItemSelectedListener);
        return this;
    }

    public b D(@IdRes int i2, int i4) {
        ((ProgressBar) k(i2)).setProgress(i4);
        return this;
    }

    public b E(@IdRes int i2, int i4, int i5) {
        ProgressBar progressBar = (ProgressBar) k(i2);
        progressBar.setMax(i5);
        progressBar.setProgress(i4);
        return this;
    }

    public b F(@IdRes int i2, float f4) {
        ((RatingBar) k(i2)).setRating(f4);
        return this;
    }

    public b G(@IdRes int i2, float f4, int i4) {
        RatingBar ratingBar = (RatingBar) k(i2);
        ratingBar.setMax(i4);
        ratingBar.setRating(f4);
        return this;
    }

    public b H(@IdRes int i2, int i4, Object obj) {
        k(i2).setTag(i4, obj);
        return this;
    }

    public b I(@IdRes int i2, Object obj) {
        k(i2).setTag(obj);
        return this;
    }

    public b J(@IdRes int i2, @StringRes int i4) {
        ((TextView) k(i2)).setText(i4);
        return this;
    }

    public b K(@IdRes int i2, CharSequence charSequence) {
        ((TextView) k(i2)).setText(charSequence);
        return this;
    }

    public b L(@IdRes int i2, @ColorInt int i4) {
        ((TextView) k(i2)).setTextColor(i4);
        return this;
    }

    public b M(@IdRes int i2, Typeface typeface) {
        TextView textView = (TextView) k(i2);
        textView.setTypeface(typeface);
        textView.setPaintFlags(textView.getPaintFlags() | 128);
        return this;
    }

    public b N(Typeface typeface, int... iArr) {
        for (int i2 : iArr) {
            TextView textView = (TextView) k(i2);
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }

    public b O(@IdRes int i2, boolean z3) {
        k(i2).setVisibility(z3 ? 0 : 4);
        return this;
    }

    public b c(@IdRes int... iArr) {
        for (int i2 : iArr) {
            this.f44741c.add(Integer.valueOf(i2));
            View k4 = k(i2);
            if (k4 != null) {
                if (!k4.isClickable()) {
                    k4.setClickable(true);
                }
                k4.setOnClickListener(new a());
            }
        }
        return this;
    }

    public b d(@IdRes int... iArr) {
        for (int i2 : iArr) {
            this.f44742d.add(Integer.valueOf(i2));
            View k4 = k(i2);
            if (k4 != null) {
                if (!k4.isLongClickable()) {
                    k4.setLongClickable(true);
                }
                k4.setOnLongClickListener(new View$OnLongClickListenerC0188b());
            }
        }
        return this;
    }

    public Object e() {
        return this.f44745g;
    }

    public HashSet<Integer> f() {
        return this.f44741c;
    }

    @Deprecated
    public View h() {
        return this.f44744f;
    }

    public HashSet<Integer> i() {
        return this.f44742d;
    }

    public Set<Integer> j() {
        return this.f44740b;
    }

    public <T extends View> T k(@IdRes int i2) {
        T t3 = (T) this.f44739a.get(i2);
        if (t3 == null) {
            T t4 = (T) this.itemView.findViewById(i2);
            this.f44739a.put(i2, t4);
            return t4;
        }
        return t3;
    }

    public b l(@IdRes int i2) {
        Linkify.addLinks((TextView) k(i2), 15);
        return this;
    }

    public b m(@IdRes int i2, Adapter adapter) {
        ((AdapterView) k(i2)).setAdapter(adapter);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b n(BaseQuickAdapter baseQuickAdapter) {
        this.f44743e = baseQuickAdapter;
        return this;
    }

    public b o(@IdRes int i2, float f4) {
        if (Build.VERSION.SDK_INT >= 11) {
            k(i2).setAlpha(f4);
        } else {
            AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f4);
            alphaAnimation.setDuration(0L);
            alphaAnimation.setFillAfter(true);
            k(i2).startAnimation(alphaAnimation);
        }
        return this;
    }

    public void p(Object obj) {
        this.f44745g = obj;
    }

    public b q(@IdRes int i2, @ColorInt int i4) {
        k(i2).setBackgroundColor(i4);
        return this;
    }

    public b r(@IdRes int i2, @DrawableRes int i4) {
        k(i2).setBackgroundResource(i4);
        return this;
    }

    public b s(@IdRes int i2, boolean z3) {
        View k4 = k(i2);
        if (k4 instanceof Checkable) {
            ((Checkable) k4).setChecked(z3);
        }
        return this;
    }

    public b t(@IdRes int i2, boolean z3) {
        k(i2).setEnabled(z3);
        return this;
    }

    public b u(@IdRes int i2, boolean z3) {
        k(i2).setVisibility(z3 ? 0 : 8);
        return this;
    }

    public b v(@IdRes int i2, Bitmap bitmap) {
        ((ImageView) k(i2)).setImageBitmap(bitmap);
        return this;
    }

    public b w(@IdRes int i2, Drawable drawable) {
        ((ImageView) k(i2)).setImageDrawable(drawable);
        return this;
    }

    public b x(@IdRes int i2, @DrawableRes int i4) {
        ((ImageView) k(i2)).setImageResource(i4);
        return this;
    }

    public b y(@IdRes int i2, int i4) {
        ((ProgressBar) k(i2)).setMax(i4);
        return this;
    }

    public b z(@IdRes int... iArr) {
        for (int i2 : iArr) {
            this.f44740b.add(Integer.valueOf(i2));
        }
        c(iArr);
        d(iArr);
        return this;
    }
}
