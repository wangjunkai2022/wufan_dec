package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import java.util.ArrayList;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
class GhostViewHolder extends FrameLayout {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f7644a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7645b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GhostViewHolder(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.f7644a = viewGroup;
        viewGroup.setTag(R.id.ghost_view_holder, this);
        ViewGroupUtils.b(this.f7644a).add(this);
        this.f7645b = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static GhostViewHolder b(@NonNull ViewGroup viewGroup) {
        return (GhostViewHolder) viewGroup.getTag(R.id.ghost_view_holder);
    }

    private int c(ArrayList<View> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int childCount = getChildCount() - 1;
        int i2 = 0;
        while (i2 <= childCount) {
            int i4 = (i2 + childCount) / 2;
            d(((GhostViewPort) getChildAt(i4)).f7656c, arrayList2);
            if (f(arrayList, arrayList2)) {
                i2 = i4 + 1;
            } else {
                childCount = i4 - 1;
            }
            arrayList2.clear();
        }
        return i2;
    }

    private static void d(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            d((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    private static boolean e(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        if (Build.VERSION.SDK_INT >= 21 && view.getZ() != view2.getZ()) {
            return view.getZ() > view2.getZ();
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(ViewGroupUtils.a(viewGroup, i2));
            if (childAt == view) {
                return false;
            }
            if (childAt == view2) {
                break;
            }
        }
        return true;
    }

    private static boolean f(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        if (arrayList.isEmpty() || arrayList2.isEmpty() || arrayList.get(0) != arrayList2.get(0)) {
            return true;
        }
        int min = Math.min(arrayList.size(), arrayList2.size());
        for (int i2 = 1; i2 < min; i2++) {
            View view = arrayList.get(i2);
            View view2 = arrayList2.get(i2);
            if (view != view2) {
                return e(view, view2);
            }
        }
        return arrayList2.size() == min;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(GhostViewPort ghostViewPort) {
        ArrayList<View> arrayList = new ArrayList<>();
        d(ghostViewPort.f7656c, arrayList);
        int c4 = c(arrayList);
        if (c4 >= 0 && c4 < getChildCount()) {
            addView(ghostViewPort, c4);
        } else {
            addView(ghostViewPort);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.f7645b) {
            ViewGroupUtils.b(this.f7644a).remove(this);
            ViewGroupUtils.b(this.f7644a).add(this);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (this.f7645b) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.f7644a.setTag(R.id.ghost_view_holder, null);
            ViewGroupUtils.b(this.f7644a).remove(this);
            this.f7645b = false;
        }
    }
}
