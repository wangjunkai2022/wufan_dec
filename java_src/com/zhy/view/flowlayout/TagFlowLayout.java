package com.zhy.view.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.zhy.view.flowlayout.b;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class TagFlowLayout extends FlowLayout implements b.a {

    /* renamed from: q  reason: collision with root package name */
    private static final String f64924q = "TagFlowLayout";

    /* renamed from: r  reason: collision with root package name */
    private static final String f64925r = "key_choose_pos";

    /* renamed from: s  reason: collision with root package name */
    private static final String f64926s = "key_default";

    /* renamed from: j  reason: collision with root package name */
    private com.zhy.view.flowlayout.b f64927j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f64928k;

    /* renamed from: l  reason: collision with root package name */
    private int f64929l;

    /* renamed from: m  reason: collision with root package name */
    private MotionEvent f64930m;

    /* renamed from: n  reason: collision with root package name */
    private Set<Integer> f64931n;

    /* renamed from: o  reason: collision with root package name */
    private a f64932o;

    /* renamed from: p  reason: collision with root package name */
    private b f64933p;

    /* loaded from: classes3.dex */
    public interface a {
        void a(Set<Integer> set);
    }

    /* loaded from: classes3.dex */
    public interface b {
        boolean a(View view, int i2, FlowLayout flowLayout);
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f64928k = true;
        this.f64929l = -1;
        this.f64931n = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TagFlowLayout);
        this.f64928k = obtainStyledAttributes.getBoolean(R.styleable.TagFlowLayout_auto_select_effect, true);
        this.f64929l = obtainStyledAttributes.getInt(R.styleable.TagFlowLayout_max_select, -1);
        obtainStyledAttributes.recycle();
        if (this.f64928k) {
            setClickable(true);
        }
    }

    private void b() {
        removeAllViews();
        com.zhy.view.flowlayout.b bVar = this.f64927j;
        HashSet<Integer> c4 = bVar.c();
        for (int i2 = 0; i2 < bVar.a(); i2++) {
            View d4 = bVar.d(this, i2, bVar.b(i2));
            TagView tagView = new TagView(getContext());
            d4.setDuplicateParentStateEnabled(true);
            if (d4.getLayoutParams() != null) {
                tagView.setLayoutParams(d4.getLayoutParams());
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.setMargins(c(getContext(), 5.0f), c(getContext(), 5.0f), c(getContext(), 5.0f), c(getContext(), 5.0f));
                tagView.setLayoutParams(marginLayoutParams);
            }
            tagView.addView(d4);
            addView(tagView);
            if (c4.contains(Integer.valueOf(i2))) {
                tagView.setChecked(true);
            }
            if (this.f64927j.g(i2, bVar.b(i2))) {
                this.f64931n.add(Integer.valueOf(i2));
                tagView.setChecked(true);
            }
        }
        this.f64931n.addAll(c4);
    }

    public static int c(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void d(TagView tagView, int i2) {
        if (this.f64928k) {
            if (!tagView.isChecked()) {
                if (this.f64929l == 1 && this.f64931n.size() == 1) {
                    Integer next = this.f64931n.iterator().next();
                    ((TagView) getChildAt(next.intValue())).setChecked(false);
                    tagView.setChecked(true);
                    this.f64931n.remove(next);
                    this.f64931n.add(Integer.valueOf(i2));
                } else if (this.f64929l > 0 && this.f64931n.size() >= this.f64929l) {
                    return;
                } else {
                    tagView.setChecked(true);
                    this.f64931n.add(Integer.valueOf(i2));
                }
            } else {
                tagView.setChecked(false);
                this.f64931n.remove(Integer.valueOf(i2));
            }
            a aVar = this.f64932o;
            if (aVar != null) {
                aVar.a(new HashSet(this.f64931n));
            }
        }
    }

    private TagView e(int i2, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            TagView tagView = (TagView) getChildAt(i5);
            if (tagView.getVisibility() != 8) {
                Rect rect = new Rect();
                tagView.getHitRect(rect);
                if (rect.contains(i2, i4)) {
                    return tagView;
                }
            }
        }
        return null;
    }

    private int f(View view) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2) == view) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.zhy.view.flowlayout.b.a
    public void a() {
        this.f64931n.clear();
        b();
    }

    public com.zhy.view.flowlayout.b getAdapter() {
        return this.f64927j;
    }

    public Set<Integer> getSelectedList() {
        return new HashSet(this.f64931n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zhy.view.flowlayout.FlowLayout, android.view.View
    public void onMeasure(int i2, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            TagView tagView = (TagView) getChildAt(i5);
            if (tagView.getVisibility() != 8 && tagView.getTagView().getVisibility() == 8) {
                tagView.setVisibility(8);
            }
        }
        super.onMeasure(i2, i4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            String string = bundle.getString(f64925r);
            if (!TextUtils.isEmpty(string)) {
                for (String str : string.split("\\|")) {
                    int parseInt = Integer.parseInt(str);
                    this.f64931n.add(Integer.valueOf(parseInt));
                    TagView tagView = (TagView) getChildAt(parseInt);
                    if (tagView != null) {
                        tagView.setChecked(true);
                    }
                }
            }
            super.onRestoreInstanceState(bundle.getParcelable(f64926s));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(f64926s, super.onSaveInstanceState());
        String str = "";
        if (this.f64931n.size() > 0) {
            for (Integer num : this.f64931n) {
                str = str + num.intValue() + "|";
            }
            str = str.substring(0, str.length() - 1);
        }
        bundle.putString(f64925r, str);
        return bundle;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f64930m = MotionEvent.obtain(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        MotionEvent motionEvent = this.f64930m;
        if (motionEvent == null) {
            return super.performClick();
        }
        this.f64930m = null;
        TagView e4 = e((int) motionEvent.getX(), (int) this.f64930m.getY());
        int f4 = f(e4);
        if (e4 != null) {
            d(e4, f4);
            b bVar = this.f64933p;
            if (bVar != null) {
                return bVar.a(e4.getTagView(), f4, this);
            }
            return true;
        }
        return true;
    }

    public void setAdapter(com.zhy.view.flowlayout.b bVar) {
        this.f64927j = bVar;
        bVar.f(this);
        this.f64931n.clear();
        b();
    }

    public void setMaxSelectCount(int i2) {
        if (this.f64931n.size() > i2) {
            StringBuilder sb = new StringBuilder();
            sb.append("you has already select more than ");
            sb.append(i2);
            sb.append(" views , so it will be clear .");
            this.f64931n.clear();
        }
        this.f64929l = i2;
    }

    public void setOnSelectListener(a aVar) {
        this.f64932o = aVar;
        if (aVar != null) {
            setClickable(true);
        }
    }

    public void setOnTagClickListener(b bVar) {
        this.f64933p = bVar;
        if (bVar != null) {
            setClickable(true);
        }
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TagFlowLayout(Context context) {
        this(context, null);
    }
}
