package y;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.dingmouren.layoutmanagergroup.skidright.SkidRightLayoutManager;
/* compiled from: SkidRightSnapHelper.java */
/* loaded from: classes2.dex */
public class a extends SnapHelper {

    /* renamed from: e  reason: collision with root package name */
    private int f74265e;

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        if (layoutManager instanceof SkidRightLayoutManager) {
            int[] iArr = new int[2];
            if (layoutManager.canScrollHorizontally()) {
                iArr[0] = ((SkidRightLayoutManager) layoutManager).a(layoutManager.getPosition(view));
                iArr[1] = 0;
            } else {
                iArr[0] = 0;
                iArr[1] = ((SkidRightLayoutManager) layoutManager).a(layoutManager.getPosition(view));
            }
            return iArr;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof SkidRightLayoutManager) {
            SkidRightLayoutManager skidRightLayoutManager = (SkidRightLayoutManager) layoutManager;
            int i2 = this.f74265e;
            int f4 = skidRightLayoutManager.f(i2, i2 != 0 ? 0.8f : 0.5f);
            this.f74265e = 0;
            if (f4 != -1) {
                return layoutManager.findViewByPosition(f4);
            }
            return null;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i4) {
        if (layoutManager.canScrollHorizontally()) {
            this.f74265e = i2;
            return -1;
        }
        this.f74265e = i4;
        return -1;
    }
}
