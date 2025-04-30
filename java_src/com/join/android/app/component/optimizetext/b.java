package com.join.android.app.component.optimizetext;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.collection.LruCache;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: StaticLayoutManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    public static final int f17501d = 15;

    /* renamed from: e  reason: collision with root package name */
    public static final int f17502e = 100;

    /* renamed from: b  reason: collision with root package name */
    private Context f17504b;

    /* renamed from: a  reason: collision with root package name */
    private LruCache<String, StaticLayout> f17503a = new LruCache<>(100);

    /* renamed from: c  reason: collision with root package name */
    private int f17505c = 15;

    public b(Context context) {
        this.f17504b = context;
    }

    private ArrayList<String> a(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str2 : str.split("")) {
            arrayList.add(str2);
        }
        return arrayList;
    }

    private String b(String str, int i2, int i4, TextPaint textPaint) {
        ArrayList<String> a4 = a(str);
        StringBuilder sb = new StringBuilder();
        Iterator<String> it2 = a4.iterator();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String next = it2.next();
            if (i5 == i4) {
                sb.setLength(sb.length() - 4);
                sb.append("...");
                break;
            } else if (next.equals("\n\r") || next.equals("\n")) {
                i5++;
                sb.append(next);
            } else if (i6 <= 20) {
                sb.append(next);
                i6++;
            } else if (((int) Layout.getDesiredWidth(sb.toString(), i7, sb.length(), textPaint)) < i2) {
                i6++;
                sb.append(next);
            } else {
                i5++;
                i7 = sb.length() - 2;
                sb.append(next);
                i6 = 0;
            }
        }
        return sb.toString();
    }

    private void c(SpannableStringBuilder spannableStringBuilder, int i2, int i4, TextPaint textPaint) {
        try {
            ArrayList<String> a4 = a(spannableStringBuilder.toString());
            StringBuilder sb = new StringBuilder();
            Iterator<String> it2 = a4.iterator();
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (it2.hasNext()) {
                String next = it2.next();
                if (i5 == i4) {
                    int length = sb.length();
                    if (length > 4) {
                        length = sb.length() - 4;
                    }
                    sb.setLength(length);
                    spannableStringBuilder.delete(sb.length(), spannableStringBuilder.length());
                    spannableStringBuilder.append("...");
                    sb.append("...");
                    return;
                }
                if (!next.equals("\n\r") && !next.equals("\n")) {
                    if (i6 <= 20) {
                        sb.append(next);
                        i6++;
                    } else if (((int) Layout.getDesiredWidth(sb.toString(), i7, sb.length(), textPaint)) < i2) {
                        i6++;
                        sb.append(next);
                    } else {
                        i5++;
                        i7 = sb.length() - 2;
                        sb.append(next);
                        i6 = 0;
                    }
                }
                i5++;
                sb.append(next);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public StaticLayout d(String str) {
        return this.f17503a.get(str);
    }

    public void e(c cVar) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.density = this.f17504b.getResources().getDisplayMetrics().density;
        textPaint.setTextSize(a.s(this.f17505c));
        textPaint.setColor(Color.parseColor("#4A4A4A"));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Canvas canvas = new Canvas();
        String b4 = cVar.b();
        SpannableStringBuilder a4 = cVar.a();
        int g4 = a.g() - (this.f17504b.getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
        if (TextUtils.isEmpty(a4) || this.f17503a.get(b4) != null) {
            return;
        }
        c(a4, g4, 2, textPaint);
        StaticLayout staticLayout = new StaticLayout(a4, textPaint, g4, alignment, 1.2f, 0.0f, true);
        staticLayout.draw(canvas);
        this.f17503a.put(b4, staticLayout);
    }

    public void f(c cVar, int i2) {
        TextPaint textPaint = new TextPaint(1);
        textPaint.density = this.f17504b.getResources().getDisplayMetrics().density;
        textPaint.setTextSize(a.s(this.f17505c));
        textPaint.setColor(Color.parseColor("#4A4A4A"));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Canvas canvas = new Canvas();
        String b4 = cVar.b();
        SpannableStringBuilder a4 = cVar.a();
        int g4 = a.g() - (this.f17504b.getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
        if (TextUtils.isEmpty(a4) || this.f17503a.get(b4) != null) {
            return;
        }
        if (i2 != -1) {
            c(a4, g4, i2, textPaint);
        }
        StaticLayout staticLayout = new StaticLayout(a4, textPaint, g4, alignment, 1.2f, 0.0f, true);
        staticLayout.draw(canvas);
        this.f17503a.put(b4, staticLayout);
    }

    public void g(List<? extends c> list, int i2) {
        h(list, a.g() - a.a(13.0f), i2);
    }

    public void h(List<? extends c> list, int i2, int i4) {
        int i5 = i4;
        TextPaint textPaint = new TextPaint(1);
        textPaint.density = this.f17504b.getResources().getDisplayMetrics().density;
        textPaint.setTextSize(a.s(this.f17505c));
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Canvas canvas = new Canvas();
        int size = list.size();
        if (size != 0) {
            synchronized (list) {
                int i6 = 0;
                while (i6 < size) {
                    String b4 = list.get(i6).b();
                    String spannableStringBuilder = list.get(i6).a().toString();
                    if (!TextUtils.isEmpty(spannableStringBuilder) && this.f17503a.get(b4) == null) {
                        if (i5 != -1) {
                            spannableStringBuilder = b(spannableStringBuilder, i2, i5, textPaint);
                        }
                        StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, textPaint, i2, alignment, 1.0f, 0.0f, true);
                        staticLayout.draw(canvas);
                        this.f17503a.put(b4, staticLayout);
                    }
                    i6++;
                    i5 = i4;
                }
            }
        }
    }

    public void i(String str) {
        this.f17503a.remove(str);
    }

    public b j(int i2) {
        this.f17505c = i2;
        return this;
    }

    public void k(int i2) {
        this.f17503a.trimToSize(i2);
    }
}
