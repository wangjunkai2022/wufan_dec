package com.androidquery.util;

import android.app.Activity;
import android.app.Dialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import com.androidquery.AQuery;
import com.androidquery.callback.BitmapAjaxCallback;
import java.io.File;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class Common implements Comparator<File>, Runnable, View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, AbsListView.OnScrollListener, AdapterView.OnItemSelectedListener, TextWatcher {
    protected static final int CLEAN_CACHE = 2;
    protected static final int STORE_FILE = 1;
    private boolean fallback;
    private AdapterView.OnItemSelectedListener galleryListener;
    private Object handler;
    private int lastBottom;
    private String method;
    private int methodId;
    private AbsListView.OnScrollListener osl;
    private Object[] params;
    private Class<?>[] sig;
    private int scrollState = 0;
    private boolean galleryListen = false;

    private void checkScrolledBottom(AbsListView absListView, int i2) {
        int count = absListView.getCount();
        int lastVisiblePosition = absListView.getLastVisiblePosition();
        if (i2 == 0 && count == lastVisiblePosition + 1) {
            if (lastVisiblePosition != this.lastBottom) {
                this.lastBottom = lastVisiblePosition;
                invoke(absListView, Integer.valueOf(i2));
                return;
            }
            return;
        }
        this.lastBottom = -1;
    }

    private Object invoke(Object... objArr) {
        String str = this.method;
        if (str != null) {
            Object[] objArr2 = this.params;
            Object[] objArr3 = objArr2 != null ? objArr2 : objArr;
            Object obj = this.handler;
            return AQUtility.invokeHandler(obj == null ? this : obj, str, this.fallback, true, this.sig, objArr3);
        }
        int i2 = this.methodId;
        if (i2 != 0) {
            if (i2 == 1) {
                Object[] objArr4 = this.params;
                AQUtility.store((File) objArr4[0], (byte[]) objArr4[1]);
                return null;
            } else if (i2 != 2) {
                return null;
            } else {
                Object[] objArr5 = this.params;
                AQUtility.cleanCache((File) objArr5[0], ((Long) objArr5[1]).longValue(), ((Long) this.params[2]).longValue());
                return null;
            }
        }
        return null;
    }

    private void onScrollStateChanged2(AbsListView absListView, int i2) {
        absListView.setTag(Constants.TAG_NUM, Integer.valueOf(i2));
        if (i2 == 0) {
            int firstVisiblePosition = absListView.getFirstVisiblePosition();
            int lastVisiblePosition = absListView.getLastVisiblePosition() - firstVisiblePosition;
            ListAdapter listAdapter = (ListAdapter) absListView.getAdapter();
            for (int i4 = 0; i4 <= lastVisiblePosition; i4++) {
                long j4 = i4 + firstVisiblePosition;
                View childAt = absListView.getChildAt(i4);
                if (((Number) childAt.getTag(Constants.TAG_NUM)) != null) {
                    listAdapter.getView((int) j4, childAt, absListView);
                    childAt.setTag(Constants.TAG_NUM, null);
                }
            }
        }
    }

    public static boolean shouldDelay(int i2, int i4, View view, ViewGroup viewGroup, String str) {
        if (str != null && !BitmapAjaxCallback.isMemoryCached(str)) {
            AbsListView absListView = (AbsListView) viewGroup;
            if (((AbsListView.OnScrollListener) viewGroup.getTag(Constants.TAG_SCROLL_LISTENER)) == null) {
                Common common = new Common();
                absListView.setOnScrollListener(common);
                viewGroup.setTag(Constants.TAG_SCROLL_LISTENER, common);
            }
            Integer num = (Integer) absListView.getTag(Constants.TAG_NUM);
            if (num != null && num.intValue() != 0 && num.intValue() != 1) {
                long j4 = i4;
                if (viewGroup instanceof ExpandableListView) {
                    j4 = ExpandableListView.getPackedPositionForChild(i2, i4);
                }
                view.setTag(Constants.TAG_NUM, Long.valueOf(j4));
                return true;
            }
        }
        return false;
    }

    private static boolean shouldDelayGallery(int i2, View view, ViewGroup viewGroup, String str) {
        Integer num = 0;
        if (str == null || BitmapAjaxCallback.isMemoryCached(str)) {
            return false;
        }
        Gallery gallery = (Gallery) viewGroup;
        Integer num2 = (Integer) gallery.getTag(Constants.TAG_NUM);
        if (num2 == null) {
            gallery.setTag(Constants.TAG_NUM, num);
            gallery.setCallbackDuringFling(false);
            new Common().listen(gallery);
        } else {
            num = num2;
        }
        int lastVisiblePosition = ((gallery.getLastVisiblePosition() - gallery.getFirstVisiblePosition()) / 2) + 1;
        int intValue = num.intValue() - lastVisiblePosition;
        int intValue2 = num.intValue() + lastVisiblePosition;
        if (intValue < 0) {
            intValue2 -= intValue;
            intValue = 0;
        }
        if (i2 >= intValue && i2 <= intValue2) {
            view.setTag(Constants.TAG_NUM, Integer.valueOf(i2));
            return false;
        }
        view.setTag(Constants.TAG_NUM, null);
        return true;
    }

    public static void showProgress(Object obj, String str, boolean z3) {
        if (obj != null) {
            if (obj instanceof View) {
                View view = (View) obj;
                ProgressBar progressBar = obj instanceof ProgressBar ? (ProgressBar) obj : null;
                if (z3) {
                    view.setTag(Constants.TAG_URL, str);
                    view.setVisibility(0);
                    if (progressBar != null) {
                        progressBar.setProgress(0);
                        progressBar.setMax(100);
                        return;
                    }
                    return;
                }
                Object tag = view.getTag(Constants.TAG_URL);
                if (tag == null || tag.equals(str)) {
                    view.setTag(Constants.TAG_URL, null);
                    if (progressBar == null || progressBar.isIndeterminate()) {
                        view.setVisibility(8);
                    }
                }
            } else if (obj instanceof Dialog) {
                Dialog dialog = (Dialog) obj;
                AQuery aQuery = new AQuery(dialog.getContext());
                if (z3) {
                    aQuery.show(dialog);
                } else {
                    aQuery.dismiss(dialog);
                }
            } else if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                activity.setProgressBarIndeterminateVisibility(z3);
                activity.setProgressBarVisibility(z3);
                if (z3) {
                    activity.setProgress(0);
                }
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
    }

    public Common forward(Object obj, String str, boolean z3, Class<?>[] clsArr) {
        this.handler = obj;
        this.method = str;
        this.fallback = z3;
        this.sig = clsArr;
        return this;
    }

    public int getScrollState() {
        return this.scrollState;
    }

    public void listen(Gallery gallery) {
        this.galleryListener = gallery.getOnItemSelectedListener();
        this.galleryListen = true;
        gallery.setOnItemSelectedListener(this);
    }

    public Common method(int i2, Object... objArr) {
        this.methodId = i2;
        this.params = objArr;
        return this;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        invoke(view);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
        invoke(adapterView, view, Integer.valueOf(i2), Long.valueOf(j4));
    }

    /* JADX WARN: Type inference failed for: r14v4, types: [android.widget.Adapter] */
    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j4) {
        invoke(adapterView, view, Integer.valueOf(i2), Long.valueOf(j4));
        AdapterView.OnItemSelectedListener onItemSelectedListener = this.galleryListener;
        if (onItemSelectedListener != null) {
            onItemSelectedListener.onItemSelected(adapterView, view, i2, j4);
        }
        if (!this.galleryListen || ((Integer) adapterView.getTag(Constants.TAG_NUM)).intValue() == i2) {
            return;
        }
        ?? adapter = adapterView.getAdapter();
        adapterView.setTag(Constants.TAG_NUM, Integer.valueOf(i2));
        int childCount = adapterView.getChildCount();
        int firstVisiblePosition = adapterView.getFirstVisiblePosition();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = adapterView.getChildAt(i4);
            int i5 = firstVisiblePosition + i4;
            Integer num = (Integer) childAt.getTag(Constants.TAG_NUM);
            if (num == null || num.intValue() != i5) {
                adapter.getView(i5, childAt, adapterView);
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Object invoke = invoke(view);
        if (invoke instanceof Boolean) {
            return ((Boolean) invoke).booleanValue();
        }
        return false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        AdapterView.OnItemSelectedListener onItemSelectedListener = this.galleryListener;
        if (onItemSelectedListener != null) {
            onItemSelectedListener.onNothingSelected(adapterView);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        checkScrolledBottom(absListView, this.scrollState);
        AbsListView.OnScrollListener onScrollListener = this.osl;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i2, i4, i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.scrollState = i2;
        checkScrolledBottom(absListView, i2);
        if (absListView instanceof ExpandableListView) {
            onScrollStateChanged((ExpandableListView) absListView, i2);
        } else {
            onScrollStateChanged2(absListView, i2);
        }
        AbsListView.OnScrollListener onScrollListener = this.osl;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i2);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        invoke(charSequence, Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    @Override // java.lang.Runnable
    public void run() {
        invoke(new Object[0]);
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        long lastModified = file.lastModified();
        long lastModified2 = file2.lastModified();
        if (lastModified2 > lastModified) {
            return 1;
        }
        return lastModified2 == lastModified ? 0 : -1;
    }

    public void forward(AbsListView.OnScrollListener onScrollListener) {
        this.osl = onScrollListener;
    }

    private void onScrollStateChanged(ExpandableListView expandableListView, int i2) {
        expandableListView.setTag(Constants.TAG_NUM, Integer.valueOf(i2));
        if (i2 == 0) {
            int firstVisiblePosition = expandableListView.getFirstVisiblePosition();
            int lastVisiblePosition = expandableListView.getLastVisiblePosition() - firstVisiblePosition;
            ExpandableListAdapter expandableListAdapter = expandableListView.getExpandableListAdapter();
            for (int i4 = 0; i4 <= lastVisiblePosition; i4++) {
                long expandableListPosition = expandableListView.getExpandableListPosition(i4 + firstVisiblePosition);
                int packedPositionGroup = ExpandableListView.getPackedPositionGroup(expandableListPosition);
                int packedPositionChild = ExpandableListView.getPackedPositionChild(expandableListPosition);
                if (packedPositionGroup >= 0) {
                    View childAt = expandableListView.getChildAt(i4);
                    Long l4 = (Long) childAt.getTag(Constants.TAG_NUM);
                    if (l4 != null && l4.longValue() == expandableListPosition) {
                        if (packedPositionChild == -1) {
                            expandableListAdapter.getGroupView(packedPositionGroup, expandableListView.isGroupExpanded(packedPositionGroup), childAt, expandableListView);
                        } else {
                            expandableListAdapter.getChildView(packedPositionGroup, packedPositionChild, packedPositionChild == expandableListAdapter.getChildrenCount(packedPositionGroup) - 1, childAt, expandableListView);
                        }
                        childAt.setTag(Constants.TAG_NUM, null);
                    }
                }
            }
        }
    }

    public static boolean shouldDelay(int i2, View view, ViewGroup viewGroup, String str) {
        if (viewGroup instanceof Gallery) {
            return shouldDelayGallery(i2, view, viewGroup, str);
        }
        return shouldDelay(-2, i2, view, viewGroup, str);
    }

    public static boolean shouldDelay(View view, ViewGroup viewGroup, String str, float f4, boolean z3) {
        return shouldDelay(-1, view, viewGroup, str);
    }
}
