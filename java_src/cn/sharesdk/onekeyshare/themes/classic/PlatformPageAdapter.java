package cn.sharesdk.onekeyshare.themes.classic;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.onekeyshare.CustomerLogo;
import com.mob.tools.gui.ViewPagerAdapter;
import com.mob.tools.utils.ResHelper;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public abstract class PlatformPageAdapter extends ViewPagerAdapter implements View.OnClickListener {
    public static final int DESIGN_BOTTOM_HEIGHT = 52;
    protected static final int MIN_CLICK_INTERVAL = 1000;
    protected int bottomHeight;
    protected int cellHeight;
    protected Object[][] cells;
    private long lastClickTime;
    protected int lineSize;
    protected int logoHeight;
    protected int paddingTop;
    private PlatformPage page;
    protected int panelHeight;
    protected int sepLineWidth;
    private IndicatorView vInd;

    public PlatformPageAdapter(PlatformPage platformPage, ArrayList<Object> arrayList) {
        this.page = platformPage;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        calculateSize(platformPage.getContext(), arrayList);
        collectCells(arrayList);
    }

    private View createPanel(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        int i2 = 1;
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-855310);
        int i4 = this.panelHeight / this.cellHeight;
        int i5 = this.lineSize * i4;
        LinearLayout[] linearLayoutArr = new LinearLayout[i5];
        linearLayout.setTag(linearLayoutArr);
        int bitmapRes = ResHelper.getBitmapRes(context, "ssdk_oks_classic_platform_cell_back");
        int i6 = 0;
        while (i6 < i4) {
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, this.cellHeight));
            int i7 = 0;
            while (true) {
                int i8 = this.lineSize;
                if (i7 < i8) {
                    linearLayoutArr[(i8 * i6) + i7] = new LinearLayout(context);
                    linearLayoutArr[(this.lineSize * i6) + i7].setBackgroundResource(bitmapRes);
                    linearLayoutArr[(this.lineSize * i6) + i7].setOrientation(i2);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.cellHeight);
                    layoutParams.weight = 1.0f;
                    linearLayout2.addView(linearLayoutArr[(this.lineSize * i6) + i7], layoutParams);
                    if (i7 < this.lineSize - i2) {
                        linearLayout2.addView(new View(context), new LinearLayout.LayoutParams(this.sepLineWidth, -1));
                    }
                    i7++;
                    i2 = 1;
                }
            }
            linearLayout.addView(new View(context), new LinearLayout.LayoutParams(-1, this.sepLineWidth));
            i6++;
            i2 = 1;
        }
        for (int i9 = 0; i9 < i5; i9++) {
            LinearLayout linearLayout3 = linearLayoutArr[i9];
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, this.logoHeight);
            layoutParams2.topMargin = this.paddingTop;
            linearLayout3.addView(imageView, layoutParams2);
            TextView textView = new TextView(context);
            textView.setTextColor(-10197916);
            textView.setTextSize(2, 14.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams3.weight = 1.0f;
            linearLayout3.addView(textView, layoutParams3);
        }
        return linearLayout;
    }

    private void refreshPanel(LinearLayout[] linearLayoutArr, Object[] objArr) {
        int bitmapRes = ResHelper.getBitmapRes(this.page.getContext(), "ssdk_oks_classic_platform_cell_back");
        int bitmapRes2 = ResHelper.getBitmapRes(this.page.getContext(), "ssdk_oks_classic_platfrom_cell_back_nor");
        for (int i2 = 0; i2 < objArr.length; i2++) {
            ImageView imageView = (ImageView) ResHelper.forceCast(linearLayoutArr[i2].getChildAt(0));
            TextView textView = (TextView) ResHelper.forceCast(linearLayoutArr[i2].getChildAt(1));
            if (objArr[i2] == null) {
                imageView.setVisibility(4);
                textView.setVisibility(4);
                linearLayoutArr[i2].setBackgroundResource(bitmapRes2);
                linearLayoutArr[i2].setOnClickListener(null);
            } else {
                imageView.setVisibility(0);
                textView.setVisibility(0);
                imageView.requestLayout();
                textView.requestLayout();
                linearLayoutArr[i2].setBackgroundResource(bitmapRes);
                linearLayoutArr[i2].setOnClickListener(this);
                linearLayoutArr[i2].setTag(objArr[i2]);
                if (objArr[i2] instanceof CustomerLogo) {
                    CustomerLogo customerLogo = (CustomerLogo) ResHelper.forceCast(objArr[i2]);
                    Bitmap bitmap = customerLogo.logo;
                    if (bitmap != null) {
                        imageView.setImageBitmap(bitmap);
                    } else {
                        imageView.setImageBitmap(null);
                    }
                    String str = customerLogo.label;
                    if (str != null) {
                        textView.setText(str);
                    } else {
                        textView.setText("");
                    }
                } else {
                    String lowerCase = ((Platform) ResHelper.forceCast(objArr[i2])).getName().toLowerCase();
                    Context context = imageView.getContext();
                    int bitmapRes3 = ResHelper.getBitmapRes(context, "ssdk_oks_classic_" + lowerCase);
                    if (bitmapRes3 > 0) {
                        imageView.setImageResource(bitmapRes3);
                    } else {
                        imageView.setImageBitmap(null);
                    }
                    Context context2 = textView.getContext();
                    int stringRes = ResHelper.getStringRes(context2, "ssdk_" + lowerCase);
                    if (stringRes > 0) {
                        textView.setText(stringRes);
                    } else {
                        textView.setText("");
                    }
                }
            }
        }
    }

    protected abstract void calculateSize(Context context, ArrayList<Object> arrayList);

    protected abstract void collectCells(ArrayList<Object> arrayList);

    public int getBottomHeight() {
        return this.bottomHeight;
    }

    @Override // com.mob.tools.gui.ViewPagerAdapter
    public int getCount() {
        Object[][] objArr = this.cells;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public int getPanelHeight() {
        return this.panelHeight;
    }

    @Override // com.mob.tools.gui.ViewPagerAdapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = createPanel(viewGroup.getContext());
        }
        refreshPanel((LinearLayout[]) ResHelper.forceCast(((LinearLayout) ResHelper.forceCast(view)).getTag()), this.cells[i2]);
        return view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastClickTime < 1000) {
            return;
        }
        this.lastClickTime = currentTimeMillis;
        if (view.getTag() instanceof CustomerLogo) {
            this.page.performCustomLogoClick(view, (CustomerLogo) ResHelper.forceCast(view.getTag()));
            return;
        }
        this.page.showEditPage((Platform) ResHelper.forceCast(view.getTag()));
    }

    @Override // com.mob.tools.gui.ViewPagerAdapter
    public void onScreenChange(int i2, int i4) {
        IndicatorView indicatorView = this.vInd;
        if (indicatorView != null) {
            indicatorView.setScreenCount(getCount());
            this.vInd.onScreenChange(i2, i4);
        }
    }

    public void setIndicator(IndicatorView indicatorView) {
        this.vInd = indicatorView;
    }
}
