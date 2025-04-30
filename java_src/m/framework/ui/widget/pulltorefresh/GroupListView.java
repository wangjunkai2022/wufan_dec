package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
/* loaded from: classes5.dex */
public class GroupListView extends ListView {

    /* loaded from: classes5.dex */
    public static abstract class GroupListAdapter {
        private BaseAdapter adapter;

        /* JADX INFO: Access modifiers changed from: private */
        public void setInnerAdapter(BaseAdapter baseAdapter) {
            this.adapter = baseAdapter;
        }

        public abstract Object getChild(int i2, int i4);

        public abstract View getChildView(int i2, int i4, View view, ViewGroup viewGroup);

        public abstract int getChildrenCount(int i2);

        public abstract int getGroupCount();

        public abstract String getGroupTitle(int i2);

        public abstract View getGroupTitleView(int i2, View view, ViewGroup viewGroup);

        public void notifyDataSetChanged() {
            this.adapter.notifyDataSetChanged();
        }
    }

    /* loaded from: classes5.dex */
    private static class ItemHolder {
        public View child;
        public LinearLayout llItem;
        public View title;

        private ItemHolder() {
        }

        /* synthetic */ ItemHolder(ItemHolder itemHolder) {
            this();
        }
    }

    public GroupListView(Context context) {
        super(context);
    }

    public void setAdapter(final GroupListAdapter groupListAdapter) {
        BaseAdapter baseAdapter = new BaseAdapter() { // from class: m.framework.ui.widget.pulltorefresh.GroupListView.1
            private int[] getItemIndex(int i2) {
                int[] iArr = {-1, -2};
                int groupCount = groupListAdapter.getGroupCount();
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    if (i4 >= groupCount) {
                        break;
                    }
                    int childrenCount = groupListAdapter.getChildrenCount(i4) + 1 + i5;
                    if (childrenCount > i2) {
                        iArr[0] = i4;
                        iArr[1] = (i2 - i5) - 1;
                        break;
                    }
                    i4++;
                    i5 = childrenCount;
                }
                return iArr;
            }

            @Override // android.widget.Adapter
            public int getCount() {
                int groupCount = groupListAdapter.getGroupCount();
                int i2 = 0;
                for (int i4 = 0; i4 < groupCount; i4++) {
                    i2 += groupListAdapter.getChildrenCount(i4) + 1;
                }
                return i2;
            }

            @Override // android.widget.Adapter
            public Object getItem(int i2) {
                int[] itemIndex = getItemIndex(i2);
                int i4 = itemIndex[0];
                int i5 = itemIndex[1];
                if (i4 > -1) {
                    if (i5 == -1) {
                        return groupListAdapter.getGroupTitle(i5);
                    }
                    if (i5 > -1) {
                        return groupListAdapter.getChild(i4, i5);
                    }
                    return null;
                }
                return null;
            }

            @Override // android.widget.Adapter
            public long getItemId(int i2) {
                return i2;
            }

            @Override // android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                int[] itemIndex = getItemIndex(i2);
                int i4 = itemIndex[0];
                int i5 = itemIndex[1];
                if (view == null) {
                    ItemHolder itemHolder = new ItemHolder(null);
                    LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
                    itemHolder.llItem = linearLayout;
                    linearLayout.setOrientation(1);
                    itemHolder.llItem.setTag(itemHolder);
                    if (i4 > -1) {
                        if (i5 == -1) {
                            View groupTitleView = groupListAdapter.getGroupTitleView(i4, itemHolder.title, itemHolder.llItem);
                            itemHolder.title = groupTitleView;
                            itemHolder.llItem.addView(groupTitleView);
                        } else if (i5 > -1) {
                            View childView = groupListAdapter.getChildView(i4, i5, itemHolder.child, itemHolder.llItem);
                            itemHolder.child = childView;
                            itemHolder.llItem.addView(childView);
                        }
                    }
                    return itemHolder.llItem;
                }
                ItemHolder itemHolder2 = (ItemHolder) view.getTag();
                if (i4 > -1) {
                    if (i5 == -1) {
                        itemHolder2.title = groupListAdapter.getGroupTitleView(i4, itemHolder2.title, itemHolder2.llItem);
                        View view2 = itemHolder2.child;
                        if (view2 != null) {
                            itemHolder2.llItem.removeView(view2);
                            return view;
                        }
                        return view;
                    } else if (i5 > -1) {
                        itemHolder2.child = groupListAdapter.getChildView(i4, i5, itemHolder2.child, itemHolder2.llItem);
                        View view3 = itemHolder2.title;
                        if (view3 != null) {
                            itemHolder2.llItem.removeView(view3);
                            return view;
                        }
                        return view;
                    } else {
                        return view;
                    }
                }
                return view;
            }
        };
        groupListAdapter.setInnerAdapter(baseAdapter);
        super.setAdapter((ListAdapter) baseAdapter);
    }

    public GroupListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GroupListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
