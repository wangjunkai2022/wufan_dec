package m.framework.ui.widget.viewpager;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes5.dex */
public abstract class ViewPagerAdapter {
    public abstract int getCount();

    public abstract View getView(int i2, ViewGroup viewGroup);

    public void onScreenChange(int i2, int i4) {
    }
}
