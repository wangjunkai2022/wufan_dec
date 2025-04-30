package m.framework.ui.widget.slidingmenu;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import java.lang.reflect.Method;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class SlidingMenu extends RelativeLayout {
    private MenuAdapter adapter;
    private MenuConfig config;
    private View curBody;
    private FrameLayout flMenu;
    private HashMap<SlidingMenuItem, View> itemToView;
    private LinearLayout llBody;
    private LinearLayout llMenu;
    private boolean menuShown;
    private int menuWidth;
    private View.OnClickListener ocListener;
    private View.OnTouchListener otListener;
    private int screenWidth;
    private int showMenuWidth;
    private BodyContainer svBody;
    private View vCover;

    public SlidingMenu(Context context) {
        super(context);
        init(context);
    }

    private void disableOverScrollMode(View view) {
        if (Build.VERSION.SDK_INT < 9) {
            return;
        }
        try {
            Method method = View.class.getMethod("setOverScrollMode", Integer.TYPE);
            method.setAccessible(true);
            method.invoke(view, 2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private View getSepView(Context context) {
        View view = new View(context);
        view.setBackgroundResource(this.config.menuSep);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 2));
        return view;
    }

    private void init(Context context) {
        this.config = new MenuConfig();
        this.itemToView = new HashMap<>();
        this.ocListener = new View.OnClickListener() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SlidingMenuItem slidingMenuItem = (SlidingMenuItem) view.getTag();
                if (slidingMenuItem == null || SlidingMenu.this.adapter == null || SlidingMenu.this.adapter.onItemTrigger(slidingMenuItem)) {
                    return;
                }
                SlidingMenu.this.postDelayed(new Runnable() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlidingMenu.this.hideMenu();
                    }
                }, 500L);
            }
        };
        this.otListener = new View.OnTouchListener() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    view.setBackgroundResource(SlidingMenu.this.config.itemDownBack);
                    return false;
                } else if (action == 1 || action == 3) {
                    view.setBackgroundResource(SlidingMenu.this.config.itemDownRelease);
                    return false;
                } else {
                    return false;
                }
            }
        };
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        this.screenWidth = i2;
        MenuConfig menuConfig = this.config;
        int i4 = (int) (i2 * menuConfig.menuWeight);
        this.menuWidth = i4;
        this.showMenuWidth = (i2 - i4) / 2;
        setBackgroundResource(menuConfig.menuBackground);
        initMenu(context);
        initBody(context);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SlidingMenu.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                SlidingMenu.this.post(new Runnable() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlidingMenu.this.hideMenu();
                    }
                });
            }
        });
    }

    private void initBody(Context context) {
        BodyContainer bodyContainer = new BodyContainer(this);
        this.svBody = bodyContainer;
        bodyContainer.setHorizontalScrollBarEnabled(false);
        this.svBody.setHorizontalFadingEdgeEnabled(false);
        disableOverScrollMode(this.svBody);
        this.svBody.setLayoutParams(new FrameLayout.LayoutParams(this.screenWidth, -1));
        addView(this.svBody);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(this.screenWidth + this.menuWidth, -1));
        this.svBody.addView(linearLayout);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(this.menuWidth, -1));
        linearLayout.addView(frameLayout);
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(this.config.rightShadow);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.gravity = 5;
        imageView.setLayoutParams(layoutParams);
        frameLayout.addView(imageView);
        LinearLayout linearLayout2 = new LinearLayout(context) { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.5
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return true;
            }
        };
        this.llBody = linearLayout2;
        linearLayout2.setBackgroundResource(this.config.bodyBackground);
        this.llBody.setLayoutParams(new LinearLayout.LayoutParams(this.screenWidth, -1));
        linearLayout.addView(this.llBody);
    }

    private void initMenu(Context context) {
        FrameLayout frameLayout = new FrameLayout(context) { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.4
            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (SlidingMenu.this.menuShown) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return true;
            }
        };
        this.flMenu = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(this.menuWidth, -1));
        addView(this.flMenu);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.flMenu.addView(linearLayout);
        ScrollView scrollView = new ScrollView(context);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setVerticalFadingEdgeEnabled(false);
        disableOverScrollMode(scrollView);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        scrollView.setLayoutParams(layoutParams);
        linearLayout.addView(scrollView);
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.llMenu = linearLayout2;
        linearLayout2.setOrientation(1);
        this.llMenu.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        scrollView.addView(this.llMenu);
        View view = new View(context);
        this.vCover = view;
        view.setBackgroundColor(0);
        this.vCover.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.flMenu.addView(this.vCover);
    }

    private void invalidateMenu() {
        Context context = getContext();
        this.llMenu.removeAllViews();
        int groupCount = this.adapter.getGroupCount();
        for (int i2 = 0; i2 < groupCount; i2++) {
            this.llMenu.addView(this.adapter.getGroupView(i2, this.llMenu));
            int count = this.adapter.getGroup(i2).getCount();
            for (int i4 = 0; i4 < count; i4++) {
                SlidingMenuItem item = this.adapter.getItem(i2, i4);
                View itemView = this.adapter.getItemView(item, this.llMenu);
                this.llMenu.addView(itemView);
                this.llMenu.addView(getSepView(context));
                this.itemToView.put(item, itemView);
                itemView.setTag(item);
                itemView.setOnClickListener(this.ocListener);
                itemView.setOnTouchListener(this.otListener);
            }
            int childCount = this.llMenu.getChildCount();
            if (childCount > 0) {
                this.llMenu.removeViewAt(childCount - 1);
            }
        }
    }

    private void reInit(Context context) {
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        this.screenWidth = i2;
        MenuConfig menuConfig = this.config;
        int i4 = (int) (i2 * menuConfig.menuWeight);
        this.menuWidth = i4;
        this.showMenuWidth = (i2 - i4) / 2;
        setBackgroundResource(menuConfig.menuBackground);
        reInitMenu(context);
        reInitBody(context);
    }

    private void reInitBody(Context context) {
        ViewGroup.LayoutParams layoutParams = this.svBody.getLayoutParams();
        layoutParams.width = this.screenWidth;
        this.svBody.setLayoutParams(layoutParams);
        LinearLayout linearLayout = (LinearLayout) this.svBody.getChildAt(0);
        ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
        layoutParams2.width = this.screenWidth + this.menuWidth;
        linearLayout.setLayoutParams(layoutParams2);
        FrameLayout frameLayout = (FrameLayout) linearLayout.getChildAt(0);
        ViewGroup.LayoutParams layoutParams3 = frameLayout.getLayoutParams();
        layoutParams3.width = this.menuWidth;
        frameLayout.setLayoutParams(layoutParams3);
        ViewGroup.LayoutParams layoutParams4 = this.llBody.getLayoutParams();
        layoutParams4.width = this.screenWidth;
        this.llBody.setLayoutParams(layoutParams4);
        this.llBody.setBackgroundResource(this.config.bodyBackground);
        ((ImageView) frameLayout.getChildAt(0)).setImageResource(this.config.rightShadow);
        if (this.menuShown) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.6
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SlidingMenu.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                SlidingMenu.this.post(new Runnable() { // from class: m.framework.ui.widget.slidingmenu.SlidingMenu.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlidingMenu.this.svBody.scrollTo(SlidingMenu.this.menuWidth, 0);
                    }
                });
            }
        });
    }

    private void reInitMenu(Context context) {
        View menuTitle;
        ViewGroup.LayoutParams layoutParams = this.flMenu.getLayoutParams();
        layoutParams.width = this.menuWidth;
        this.flMenu.setLayoutParams(layoutParams);
        LinearLayout linearLayout = this.llMenu;
        MenuConfig menuConfig = this.config;
        linearLayout.setPadding(menuConfig.paddingLeft, menuConfig.paddingTop, menuConfig.paddingRight, menuConfig.paddingBottom);
        MenuAdapter menuAdapter = this.adapter;
        if (menuAdapter == null || (menuTitle = menuAdapter.getMenuTitle()) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = menuTitle.getLayoutParams();
        menuTitle.setLayoutParams(new LinearLayout.LayoutParams(-1, layoutParams2 != null ? layoutParams2.height : -2));
        ((LinearLayout) this.flMenu.getChildAt(0)).addView(menuTitle);
    }

    public View getBodyView() {
        return this.curBody;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuConfig getMenuConfig() {
        return this.config;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getMenuCover() {
        return this.vCover;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMenuWidth() {
        return this.menuWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getShowMenuWidth() {
        return this.showMenuWidth;
    }

    public void hideMenu() {
        this.menuShown = false;
        this.svBody.smoothScrollTo(this.menuWidth, 0);
        MenuAdapter menuAdapter = this.adapter;
        if (menuAdapter != null) {
            menuAdapter.onMenuSwitch(this.menuShown);
        }
    }

    public boolean isMenuShown() {
        return this.menuShown;
    }

    View itemToView(SlidingMenuItem slidingMenuItem) {
        return this.itemToView.get(slidingMenuItem);
    }

    public void refresh() {
        if (this.adapter != null) {
            reInit(getContext());
            invalidateMenu();
        }
    }

    public void setAdapter(MenuAdapter menuAdapter) {
        this.adapter = menuAdapter;
        refresh();
    }

    public void setBodyBackground(int i2) {
        this.config.bodyBackground = i2;
    }

    public void setBodyView(View view) {
        this.curBody = view;
        this.llBody.removeAllViews();
        View view2 = this.curBody;
        if (view2 != null) {
            view2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            this.llBody.addView(this.curBody);
        }
    }

    public void setMenuBackground(int i2) {
        this.config.menuBackground = i2;
    }

    public void setMenuDivider(int i2) {
        this.config.menuSep = i2;
    }

    public void setMenuItemBackground(int i2, int i4) {
        MenuConfig menuConfig = this.config;
        menuConfig.itemDownBack = i2;
        menuConfig.itemDownRelease = i4;
    }

    public void setMenuPadding(int i2, int i4, int i5, int i6) {
        MenuConfig menuConfig = this.config;
        menuConfig.paddingLeft = i2;
        menuConfig.paddingTop = i4;
        menuConfig.paddingRight = i5;
        menuConfig.paddingBottom = i6;
    }

    public void setMenuWeight(float f4) {
        this.config.menuWeight = f4;
    }

    public void setShadowRes(int i2) {
        this.config.rightShadow = i2;
    }

    public void setTtleHeight(int i2) {
        this.config.titleHeight = i2;
    }

    public void showMenu() {
        this.menuShown = true;
        this.svBody.smoothScrollTo(0, 0);
        MenuAdapter menuAdapter = this.adapter;
        if (menuAdapter != null) {
            menuAdapter.onMenuSwitch(this.menuShown);
        }
    }

    public void switchMenu() {
        if (this.menuShown) {
            hideMenu();
        } else {
            showMenu();
        }
    }

    public void triggerItem(int i2, int i4) {
        SlidingMenuItem menuItem;
        MenuAdapter menuAdapter = this.adapter;
        if (menuAdapter == null || (menuItem = menuAdapter.getMenuItem(i2, i4)) == null) {
            return;
        }
        this.adapter.onItemTrigger(menuItem);
    }

    public SlidingMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public void triggerItem(SlidingMenuItem slidingMenuItem) {
        MenuAdapter menuAdapter = this.adapter;
        if (menuAdapter == null || slidingMenuItem == null) {
            return;
        }
        menuAdapter.onItemTrigger(slidingMenuItem);
    }

    public SlidingMenu(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context);
    }
}
