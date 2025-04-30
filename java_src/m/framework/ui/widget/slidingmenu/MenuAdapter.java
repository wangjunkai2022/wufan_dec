package m.framework.ui.widget.slidingmenu;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
public abstract class MenuAdapter {
    private ArrayList<SlidingMenuGroup> menus = new ArrayList<>();

    public MenuAdapter(SlidingMenu slidingMenu) {
    }

    private SlidingMenuGroup findGroupById(int i2) {
        ArrayList<SlidingMenuGroup> arrayList = this.menus;
        if (arrayList == null) {
            return null;
        }
        Iterator<SlidingMenuGroup> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            SlidingMenuGroup next = it2.next();
            if (next != null && next.id == i2) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlidingMenuGroup getGroup(int i2) {
        return this.menus.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getGroupCount() {
        ArrayList<SlidingMenuGroup> arrayList = this.menus;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public abstract View getGroupView(int i2, ViewGroup viewGroup);

    /* JADX INFO: Access modifiers changed from: protected */
    public SlidingMenuItem getItem(int i2, int i4) {
        return this.menus.get(i2).getItem(i4);
    }

    public abstract View getItemView(SlidingMenuItem slidingMenuItem, ViewGroup viewGroup);

    public SlidingMenuItem getMenuItem(int i2, int i4) {
        SlidingMenuGroup findGroupById = findGroupById(i2);
        if (findGroupById == null) {
            return null;
        }
        return findGroupById.findItemById(i4);
    }

    public View getMenuTitle() {
        return null;
    }

    protected String getTitle(int i2) {
        return this.menus.get(i2).text;
    }

    public void notifyDataSetChanged(SlidingMenuItem slidingMenuItem) {
    }

    public boolean onItemTrigger(SlidingMenuItem slidingMenuItem) {
        return false;
    }

    public void onMenuSwitch(boolean z3) {
    }

    public void setGroup(int i2, String str) {
        SlidingMenuGroup findGroupById = findGroupById(i2);
        if (findGroupById == null) {
            findGroupById = new SlidingMenuGroup();
            findGroupById.id = i2;
            this.menus.add(findGroupById);
        }
        findGroupById.text = str;
    }

    public void setItem(int i2, SlidingMenuItem slidingMenuItem) {
        SlidingMenuGroup findGroupById;
        if (slidingMenuItem == null || (findGroupById = findGroupById(i2)) == null) {
            return;
        }
        findGroupById.setItem(slidingMenuItem);
    }

    void setGroup(SlidingMenuGroup slidingMenuGroup) {
        if (slidingMenuGroup == null) {
            return;
        }
        SlidingMenuGroup findGroupById = findGroupById(slidingMenuGroup.id);
        if (findGroupById == null) {
            this.menus.add(slidingMenuGroup);
            return;
        }
        int indexOf = this.menus.indexOf(findGroupById);
        this.menus.remove(indexOf);
        this.menus.add(indexOf, slidingMenuGroup);
    }
}
