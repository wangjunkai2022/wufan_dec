package cn.sharesdk.onekeyshare.themes.classic.land;

import android.content.Context;
import cn.sharesdk.onekeyshare.themes.classic.PlatformPage;
import cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter;
import com.mob.tools.utils.ResHelper;
import java.lang.reflect.Array;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class PlatformPageAdapterLand extends PlatformPageAdapter {
    private static final int DESIGN_CELL_WIDTH_L = 160;
    private static final int DESIGN_LOGO_HEIGHT = 76;
    private static final int DESIGN_PADDING_TOP = 20;
    private static final int DESIGN_SCREEN_WIDTH_L = 1280;
    private static final int DESIGN_SEP_LINE_WIDTH = 1;

    public PlatformPageAdapterLand(PlatformPage platformPage, ArrayList<Object> arrayList) {
        super(platformPage, arrayList);
    }

    @Override // cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter
    protected void calculateSize(Context context, ArrayList<Object> arrayList) {
        int screenWidth = ResHelper.getScreenWidth(context);
        float f4 = screenWidth / 1280.0f;
        int i2 = screenWidth / ((int) (160.0f * f4));
        this.lineSize = i2;
        int i4 = (int) (1.0f * f4);
        this.sepLineWidth = i4;
        if (i4 < 1) {
            i4 = 1;
        }
        this.sepLineWidth = i4;
        this.logoHeight = (int) (76.0f * f4);
        this.paddingTop = (int) (20.0f * f4);
        this.bottomHeight = (int) (f4 * 52.0f);
        int i5 = (screenWidth - (i4 * 3)) / (i2 - 1);
        this.cellHeight = i5;
        this.panelHeight = i5 + i4;
    }

    @Override // cn.sharesdk.onekeyshare.themes.classic.PlatformPageAdapter
    protected void collectCells(ArrayList<Object> arrayList) {
        int size = arrayList.size();
        int i2 = this.lineSize;
        if (size < i2) {
            int i4 = size / i2;
            if (size % i2 != 0) {
                i4++;
            }
            this.cells = (Object[][]) Array.newInstance(Object.class, 1, i4 * i2);
        } else {
            int i5 = size / i2;
            if (size % i2 != 0) {
                i5++;
            }
            this.cells = (Object[][]) Array.newInstance(Object.class, i5, i2);
        }
        for (int i6 = 0; i6 < size; i6++) {
            int i7 = this.lineSize;
            int i8 = i6 / i7;
            this.cells[i8][i6 - (i7 * i8)] = arrayList.get(i6);
        }
    }
}
