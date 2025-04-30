package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewConfigurationCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuBuilder implements SupportMenu {
    private static final String A = "MenuBuilder";
    private static final String B = "android:menu:presenters";
    private static final String C = "android:menu:actionviewstates";
    private static final String D = "android:menu:expandedactionview";
    private static final int[] E = {1, 4, 5, 3, 2, 0};

    /* renamed from: a  reason: collision with root package name */
    private final Context f639a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f640b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f641c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f642d;

    /* renamed from: e  reason: collision with root package name */
    private Callback f643e;

    /* renamed from: m  reason: collision with root package name */
    private ContextMenu.ContextMenuInfo f651m;

    /* renamed from: n  reason: collision with root package name */
    CharSequence f652n;

    /* renamed from: o  reason: collision with root package name */
    Drawable f653o;

    /* renamed from: p  reason: collision with root package name */
    View f654p;

    /* renamed from: x  reason: collision with root package name */
    private MenuItemImpl f662x;

    /* renamed from: z  reason: collision with root package name */
    private boolean f664z;

    /* renamed from: l  reason: collision with root package name */
    private int f650l = 0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f655q = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f656r = false;

    /* renamed from: s  reason: collision with root package name */
    private boolean f657s = false;

    /* renamed from: t  reason: collision with root package name */
    private boolean f658t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f659u = false;

    /* renamed from: v  reason: collision with root package name */
    private ArrayList<MenuItemImpl> f660v = new ArrayList<>();

    /* renamed from: w  reason: collision with root package name */
    private CopyOnWriteArrayList<WeakReference<MenuPresenter>> f661w = new CopyOnWriteArrayList<>();

    /* renamed from: y  reason: collision with root package name */
    private boolean f663y = false;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<MenuItemImpl> f644f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<MenuItemImpl> f645g = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    private boolean f646h = true;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<MenuItemImpl> f647i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<MenuItemImpl> f648j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    private boolean f649k = true;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface Callback {
        boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem);

        void onMenuModeChange(@NonNull MenuBuilder menuBuilder);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface ItemInvoker {
        boolean invokeItem(MenuItemImpl menuItemImpl);
    }

    public MenuBuilder(Context context) {
        this.f639a = context;
        this.f640b = context.getResources();
        w(true);
    }

    private MenuItemImpl b(int i2, int i4, int i5, int i6, CharSequence charSequence, int i7) {
        return new MenuItemImpl(this, i2, i4, i5, i6, charSequence, i7);
    }

    private void d(boolean z3) {
        if (this.f661w.isEmpty()) {
            return;
        }
        stopDispatchingItemsChanged();
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f661w.remove(next);
            } else {
                menuPresenter.updateMenuView(z3);
            }
        }
        startDispatchingItemsChanged();
    }

    private void e(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(B);
        if (sparseParcelableArray == null || this.f661w.isEmpty()) {
            return;
        }
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f661w.remove(next);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    menuPresenter.onRestoreInstanceState(parcelable);
                }
            }
        }
    }

    private void f(Bundle bundle) {
        Parcelable onSaveInstanceState;
        if (this.f661w.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f661w.remove(next);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (onSaveInstanceState = menuPresenter.onSaveInstanceState()) != null) {
                    sparseArray.put(id, onSaveInstanceState);
                }
            }
        }
        bundle.putSparseParcelableArray(B, sparseArray);
    }

    private boolean g(SubMenuBuilder subMenuBuilder, MenuPresenter menuPresenter) {
        if (this.f661w.isEmpty()) {
            return false;
        }
        boolean onSubMenuSelected = menuPresenter != null ? menuPresenter.onSubMenuSelected(subMenuBuilder) : false;
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter2 = next.get();
            if (menuPresenter2 == null) {
                this.f661w.remove(next);
            } else if (!onSubMenuSelected) {
                onSubMenuSelected = menuPresenter2.onSubMenuSelected(subMenuBuilder);
            }
        }
        return onSubMenuSelected;
    }

    private static int h(ArrayList<MenuItemImpl> arrayList, int i2) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).getOrdering() <= i2) {
                return size + 1;
            }
        }
        return 0;
    }

    private static int l(int i2) {
        int i4 = ((-65536) & i2) >> 16;
        if (i4 >= 0) {
            int[] iArr = E;
            if (i4 < iArr.length) {
                return (i2 & 65535) | (iArr[i4] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void o(int i2, boolean z3) {
        if (i2 < 0 || i2 >= this.f644f.size()) {
            return;
        }
        this.f644f.remove(i2);
        if (z3) {
            onItemsChanged(true);
        }
    }

    private void s(int i2, CharSequence charSequence, int i4, Drawable drawable, View view) {
        Resources resources = getResources();
        if (view != null) {
            this.f654p = view;
            this.f652n = null;
            this.f653o = null;
        } else {
            if (i2 > 0) {
                this.f652n = resources.getText(i2);
            } else if (charSequence != null) {
                this.f652n = charSequence;
            }
            if (i4 > 0) {
                this.f653o = ContextCompat.getDrawable(getContext(), i4);
            } else if (drawable != null) {
                this.f653o = drawable;
            }
            this.f654p = null;
        }
        onItemsChanged(false);
    }

    private void w(boolean z3) {
        boolean z4 = true;
        this.f642d = (z3 && this.f640b.getConfiguration().keyboard != 1 && ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(this.f639a), this.f639a)) ? false : false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuItem a(int i2, int i4, int i5, CharSequence charSequence) {
        int l4 = l(i5);
        MenuItemImpl b4 = b(i2, i4, i5, l4, charSequence, this.f650l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f651m;
        if (contextMenuInfo != null) {
            b4.h(contextMenuInfo);
        }
        ArrayList<MenuItemImpl> arrayList = this.f644f;
        arrayList.add(h(arrayList, l4), b4);
        onItemsChanged(true);
        return b4;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i4, int i5, ComponentName componentName, Intent[] intentArr, Intent intent, int i6, MenuItem[] menuItemArr) {
        int i7;
        PackageManager packageManager = this.f639a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i6 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i8 = 0; i8 < size; i8++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i8);
            int i9 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i9 < 0 ? intent : intentArr[i9]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i2, i4, i5, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i7 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i7] = intent3;
            }
        }
        return size;
    }

    public void addMenuPresenter(MenuPresenter menuPresenter) {
        addMenuPresenter(menuPresenter, this.f639a);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        Callback callback = this.f643e;
        return callback != null && callback.onMenuItemSelected(menuBuilder, menuItem);
    }

    public void changeMenuMode() {
        Callback callback = this.f643e;
        if (callback != null) {
            callback.onMenuModeChange(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        MenuItemImpl menuItemImpl = this.f662x;
        if (menuItemImpl != null) {
            collapseItemActionView(menuItemImpl);
        }
        this.f644f.clear();
        onItemsChanged(true);
    }

    public void clearAll() {
        this.f655q = true;
        clear();
        clearHeader();
        this.f661w.clear();
        this.f655q = false;
        this.f656r = false;
        this.f657s = false;
        onItemsChanged(true);
    }

    public void clearHeader() {
        this.f653o = null;
        this.f652n = null;
        this.f654p = null;
        onItemsChanged(false);
    }

    public final void close(boolean z3) {
        if (this.f659u) {
            return;
        }
        this.f659u = true;
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f661w.remove(next);
            } else {
                menuPresenter.onCloseMenu(this, z3);
            }
        }
        this.f659u = false;
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        boolean z3 = false;
        if (!this.f661w.isEmpty() && this.f662x == menuItemImpl) {
            stopDispatchingItemsChanged();
            Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
            while (it2.hasNext()) {
                WeakReference<MenuPresenter> next = it2.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f661w.remove(next);
                } else {
                    z3 = menuPresenter.collapseItemActionView(this, menuItemImpl);
                    if (z3) {
                        break;
                    }
                }
            }
            startDispatchingItemsChanged();
            if (z3) {
                this.f662x = null;
            }
        }
        return z3;
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        boolean z3 = false;
        if (this.f661w.isEmpty()) {
            return false;
        }
        stopDispatchingItemsChanged();
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f661w.remove(next);
            } else {
                z3 = menuPresenter.expandItemActionView(this, menuItemImpl);
                if (z3) {
                    break;
                }
            }
        }
        startDispatchingItemsChanged();
        if (z3) {
            this.f662x = menuItemImpl;
        }
        return z3;
    }

    public int findGroupIndex(int i2) {
        return findGroupIndex(i2, 0);
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        MenuItem findItem;
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItemImpl menuItemImpl = this.f644f.get(i4);
            if (menuItemImpl.getItemId() == i2) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu() && (findItem = menuItemImpl.getSubMenu().findItem(i2)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public int findItemIndex(int i2) {
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            if (this.f644f.get(i4).getItemId() == i2) {
                return i4;
            }
        }
        return -1;
    }

    public void flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems = getVisibleItems();
        if (this.f649k) {
            Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
            boolean z3 = false;
            while (it2.hasNext()) {
                WeakReference<MenuPresenter> next = it2.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f661w.remove(next);
                } else {
                    z3 |= menuPresenter.flagActionItems();
                }
            }
            if (z3) {
                this.f647i.clear();
                this.f648j.clear();
                int size = visibleItems.size();
                for (int i2 = 0; i2 < size; i2++) {
                    MenuItemImpl menuItemImpl = visibleItems.get(i2);
                    if (menuItemImpl.isActionButton()) {
                        this.f647i.add(menuItemImpl);
                    } else {
                        this.f648j.add(menuItemImpl);
                    }
                }
            } else {
                this.f647i.clear();
                this.f648j.clear();
                this.f648j.addAll(getVisibleItems());
            }
            this.f649k = false;
        }
    }

    public ArrayList<MenuItemImpl> getActionItems() {
        flagActionItems();
        return this.f647i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getActionViewStatesKey() {
        return C;
    }

    public Context getContext() {
        return this.f639a;
    }

    public MenuItemImpl getExpandedItem() {
        return this.f662x;
    }

    public Drawable getHeaderIcon() {
        return this.f653o;
    }

    public CharSequence getHeaderTitle() {
        return this.f652n;
    }

    public View getHeaderView() {
        return this.f654p;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return this.f644f.get(i2);
    }

    public ArrayList<MenuItemImpl> getNonActionItems() {
        flagActionItems();
        return this.f648j;
    }

    Resources getResources() {
        return this.f640b;
    }

    public MenuBuilder getRootMenu() {
        return this;
    }

    @NonNull
    public ArrayList<MenuItemImpl> getVisibleItems() {
        if (this.f646h) {
            this.f645g.clear();
            int size = this.f644f.size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItemImpl menuItemImpl = this.f644f.get(i2);
                if (menuItemImpl.isVisible()) {
                    this.f645g.add(menuItemImpl);
                }
            }
            this.f646h = false;
            this.f649k = true;
            return this.f645g;
        }
        return this.f645g;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f664z) {
            return true;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f644f.get(i2).isVisible()) {
                return true;
            }
        }
        return false;
    }

    MenuItemImpl i(int i2, KeyEvent keyEvent) {
        char numericShortcut;
        ArrayList<MenuItemImpl> arrayList = this.f660v;
        arrayList.clear();
        j(arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean isQwertyMode = isQwertyMode();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItemImpl menuItemImpl = arrayList.get(i4);
            if (isQwertyMode) {
                numericShortcut = menuItemImpl.getAlphabeticShortcut();
            } else {
                numericShortcut = menuItemImpl.getNumericShortcut();
            }
            char[] cArr = keyData.meta;
            if ((numericShortcut == cArr[0] && (metaState & 2) == 0) || ((numericShortcut == cArr[2] && (metaState & 2) != 0) || (isQwertyMode && numericShortcut == '\b' && i2 == 67))) {
                return menuItemImpl;
            }
        }
        return null;
    }

    public boolean isGroupDividerEnabled() {
        return this.f663y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isQwertyMode() {
        return this.f641c;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return i(i2, keyEvent) != null;
    }

    public boolean isShortcutsVisible() {
        return this.f642d;
    }

    void j(List<MenuItemImpl> list, int i2, KeyEvent keyEvent) {
        boolean isQwertyMode = isQwertyMode();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            int size = this.f644f.size();
            for (int i4 = 0; i4 < size; i4++) {
                MenuItemImpl menuItemImpl = this.f644f.get(i4);
                if (menuItemImpl.hasSubMenu()) {
                    ((MenuBuilder) menuItemImpl.getSubMenu()).j(list, i2, keyEvent);
                }
                char alphabeticShortcut = isQwertyMode ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
                if (((modifiers & SupportMenu.SUPPORTED_MODIFIERS_MASK) == ((isQwertyMode ? menuItemImpl.getAlphabeticModifiers() : menuItemImpl.getNumericModifiers()) & SupportMenu.SUPPORTED_MODIFIERS_MASK)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (isQwertyMode && alphabeticShortcut == '\b' && i2 == 67)) && menuItemImpl.isEnabled()) {
                        list.add(menuItemImpl);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean k() {
        return this.f658t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(MenuItemImpl menuItemImpl) {
        this.f649k = true;
        onItemsChanged(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(MenuItemImpl menuItemImpl) {
        this.f646h = true;
        onItemsChanged(true);
    }

    public void onItemsChanged(boolean z3) {
        if (!this.f655q) {
            if (z3) {
                this.f646h = true;
                this.f649k = true;
            }
            d(z3);
            return;
        }
        this.f656r = true;
        if (z3) {
            this.f657s = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f644f.size();
        stopDispatchingItemsChanged();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f644f.get(i2);
            if (menuItemImpl.getGroupId() == groupId && menuItemImpl.isExclusiveCheckable() && menuItemImpl.isCheckable()) {
                menuItemImpl.g(menuItemImpl == menuItem);
            }
        }
        startDispatchingItemsChanged();
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i4) {
        return performItemAction(findItem(i2), i4);
    }

    public boolean performItemAction(MenuItem menuItem, int i2) {
        return performItemAction(menuItem, null, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i4) {
        MenuItemImpl i5 = i(i2, keyEvent);
        boolean performItemAction = i5 != null ? performItemAction(i5, i4) : false;
        if ((i4 & 2) != 0) {
            close(true);
        }
        return performItemAction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuBuilder q(int i2) {
        s(0, null, i2, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuBuilder r(Drawable drawable) {
        s(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        int findGroupIndex = findGroupIndex(i2);
        if (findGroupIndex >= 0) {
            int size = this.f644f.size() - findGroupIndex;
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                if (i4 >= size || this.f644f.get(findGroupIndex).getGroupId() != i2) {
                    break;
                }
                o(findGroupIndex, false);
                i4 = i5;
            }
            onItemsChanged(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        o(findItemIndex(i2), true);
    }

    public void removeItemAt(int i2) {
        o(i2, true);
    }

    public void removeMenuPresenter(MenuPresenter menuPresenter) {
        Iterator<WeakReference<MenuPresenter>> it2 = this.f661w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter2 = next.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                this.f661w.remove(next);
            }
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).restoreActionViewStates(bundle);
            }
        }
        int i4 = bundle.getInt(D);
        if (i4 <= 0 || (findItem = findItem(i4)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void restorePresenterStates(Bundle bundle) {
        e(bundle);
    }

    public void saveActionViewStates(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(D, item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).saveActionViewStates(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void savePresenterStates(Bundle bundle) {
        f(bundle);
    }

    public void setCallback(Callback callback) {
        this.f643e = callback;
    }

    public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f651m = contextMenuInfo;
    }

    public MenuBuilder setDefaultShowAsAction(int i2) {
        this.f650l = i2;
        return this;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z3, boolean z4) {
        int size = this.f644f.size();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItemImpl menuItemImpl = this.f644f.get(i4);
            if (menuItemImpl.getGroupId() == i2) {
                menuItemImpl.setExclusiveCheckable(z4);
                menuItemImpl.setCheckable(z3);
            }
        }
    }

    @Override // androidx.core.internal.view.SupportMenu, android.view.Menu
    public void setGroupDividerEnabled(boolean z3) {
        this.f663y = z3;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z3) {
        int size = this.f644f.size();
        for (int i4 = 0; i4 < size; i4++) {
            MenuItemImpl menuItemImpl = this.f644f.get(i4);
            if (menuItemImpl.getGroupId() == i2) {
                menuItemImpl.setEnabled(z3);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z3) {
        int size = this.f644f.size();
        boolean z4 = false;
        for (int i4 = 0; i4 < size; i4++) {
            MenuItemImpl menuItemImpl = this.f644f.get(i4);
            if (menuItemImpl.getGroupId() == i2 && menuItemImpl.i(z3)) {
                z4 = true;
            }
        }
        if (z4) {
            onItemsChanged(true);
        }
    }

    public void setOptionalIconsVisible(boolean z3) {
        this.f658t = z3;
    }

    public void setOverrideVisibleItems(boolean z3) {
        this.f664z = z3;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z3) {
        this.f641c = z3;
        onItemsChanged(false);
    }

    public void setShortcutsVisible(boolean z3) {
        if (this.f642d == z3) {
            return;
        }
        w(z3);
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f644f.size();
    }

    public void startDispatchingItemsChanged() {
        this.f655q = false;
        if (this.f656r) {
            this.f656r = false;
            onItemsChanged(this.f657s);
        }
    }

    public void stopDispatchingItemsChanged() {
        if (this.f655q) {
            return;
        }
        this.f655q = true;
        this.f656r = false;
        this.f657s = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuBuilder t(int i2) {
        s(i2, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuBuilder u(CharSequence charSequence) {
        s(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuBuilder v(View view) {
        s(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return a(0, 0, 0, this.f640b.getString(i2));
    }

    public void addMenuPresenter(MenuPresenter menuPresenter, Context context) {
        this.f661w.add(new WeakReference<>(menuPresenter));
        menuPresenter.initForMenu(context, this);
        this.f649k = true;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, this.f640b.getString(i2));
    }

    public int findGroupIndex(int i2, int i4) {
        int size = size();
        if (i4 < 0) {
            i4 = 0;
        }
        while (i4 < size) {
            if (this.f644f.get(i4).getGroupId() == i2) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    public boolean performItemAction(MenuItem menuItem, MenuPresenter menuPresenter, int i2) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        boolean invoke = menuItemImpl.invoke();
        ActionProvider supportActionProvider = menuItemImpl.getSupportActionProvider();
        boolean z3 = supportActionProvider != null && supportActionProvider.hasSubMenu();
        if (menuItemImpl.hasCollapsibleActionView()) {
            invoke |= menuItemImpl.expandActionView();
            if (invoke) {
                close(true);
            }
        } else if (menuItemImpl.hasSubMenu() || z3) {
            if ((i2 & 4) == 0) {
                close(false);
            }
            if (!menuItemImpl.hasSubMenu()) {
                menuItemImpl.setSubMenu(new SubMenuBuilder(getContext(), this, menuItemImpl));
            }
            SubMenuBuilder subMenuBuilder = (SubMenuBuilder) menuItemImpl.getSubMenu();
            if (z3) {
                supportActionProvider.onPrepareSubMenu(subMenuBuilder);
            }
            invoke |= g(subMenuBuilder, menuPresenter);
            if (!invoke) {
                close(true);
            }
        } else if ((i2 & 1) == 0) {
            close(true);
        }
        return invoke;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i4, int i5, CharSequence charSequence) {
        return a(i2, i4, i5, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i4, int i5, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) a(i2, i4, i5, charSequence);
        SubMenuBuilder subMenuBuilder = new SubMenuBuilder(this.f639a, this, menuItemImpl);
        menuItemImpl.setSubMenu(subMenuBuilder);
        return subMenuBuilder;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i4, int i5, int i6) {
        return a(i2, i4, i5, this.f640b.getString(i6));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i4, int i5, int i6) {
        return addSubMenu(i2, i4, i5, this.f640b.getString(i6));
    }

    @Override // android.view.Menu
    public void close() {
        close(true);
    }
}
