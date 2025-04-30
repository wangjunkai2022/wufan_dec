package m.framework.ui.widget.slidingmenu;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes5.dex */
final class SlidingMenuGroup {
    int id;
    private ArrayList<SlidingMenuItem> items = new ArrayList<>();
    String text;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlidingMenuItem findItemById(int i2) {
        ArrayList<SlidingMenuItem> arrayList = this.items;
        if (arrayList == null) {
            return null;
        }
        Iterator<SlidingMenuItem> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            SlidingMenuItem next = it2.next();
            if (next != null && next.id == i2) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCount() {
        ArrayList<SlidingMenuItem> arrayList = this.items;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlidingMenuItem getItem(int i2) {
        return this.items.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setItem(SlidingMenuItem slidingMenuItem) {
        if (slidingMenuItem == null) {
            return;
        }
        SlidingMenuItem findItemById = findItemById(slidingMenuItem.id);
        slidingMenuItem.group = this.id;
        if (findItemById == null) {
            this.items.add(slidingMenuItem);
            return;
        }
        int indexOf = this.items.indexOf(findItemById);
        this.items.remove(indexOf);
        this.items.add(indexOf, slidingMenuItem);
    }
}
