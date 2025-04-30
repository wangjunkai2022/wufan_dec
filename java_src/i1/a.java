package i1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;
/* compiled from: UniversalItemDecoration.java */
/* loaded from: classes3.dex */
public abstract class a extends RecyclerView.ItemDecoration {
    private static final String TAG = "UniversalItemDecoration";
    private Map<Integer, b> decorations = new HashMap();

    /* compiled from: UniversalItemDecoration.java */
    /* renamed from: i1.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0442a extends b {

        /* renamed from: e  reason: collision with root package name */
        private Paint f65701e;

        /* renamed from: f  reason: collision with root package name */
        public int f65702f = -16777216;

        public C0442a() {
            Paint paint = new Paint(1);
            this.f65701e = paint;
            paint.setStyle(Paint.Style.FILL);
        }

        @Override // i1.a.b
        public void a(Canvas canvas, int i2, int i4, int i5, int i6) {
            this.f65701e.setColor(this.f65702f);
            canvas.drawRect(i2, i4, i5, i6, this.f65701e);
        }
    }

    /* compiled from: UniversalItemDecoration.java */
    /* loaded from: classes3.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public int f65703a;

        /* renamed from: b  reason: collision with root package name */
        public int f65704b;

        /* renamed from: c  reason: collision with root package name */
        public int f65705c;

        /* renamed from: d  reason: collision with root package name */
        public int f65706d;

        public abstract void a(Canvas canvas, int i2, int i4, int i5, int i6);

        public boolean b(int i2, int i4) {
            return i4 % i2 == 0;
        }

        public boolean c(int i2, int i4) {
            return i4 % i2 == i2 - 1;
        }

        public boolean d(int i2, int i4) {
            return i4 < i2;
        }
    }

    public static int string2Int(String str, int i2) {
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return i2;
        }
    }

    public abstract b getItemOffsets(int i2);

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        view.setTag(Integer.valueOf(childAdapterPosition));
        b itemOffsets = getItemOffsets(childAdapterPosition);
        if (itemOffsets != null) {
            rect.set(itemOffsets.f65703a, itemOffsets.f65705c, itemOffsets.f65704b, itemOffsets.f65706d);
        }
        this.decorations.put(Integer.valueOf(childAdapterPosition), itemOffsets);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            b bVar = this.decorations.get(Integer.valueOf(string2Int(childAt.getTag().toString(), 0)));
            if (bVar != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                int i4 = bVar.f65706d;
                if (i4 != 0) {
                    bVar.a(canvas, left - bVar.f65703a, bottom, right + bVar.f65704b, bottom + i4);
                }
                int i5 = bVar.f65705c;
                if (i5 != 0) {
                    bVar.a(canvas, left - bVar.f65703a, top - i5, right + bVar.f65704b, top);
                }
                int i6 = bVar.f65703a;
                if (i6 != 0) {
                    bVar.a(canvas, left - i6, top, left, bottom);
                }
                int i7 = bVar.f65704b;
                if (i7 != 0) {
                    bVar.a(canvas, right, top, right + i7, bottom);
                }
            }
        }
    }
}
