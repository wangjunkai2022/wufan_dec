package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ExpandableListAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.HeterogeneousExpandableList;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes5.dex */
class ExpandableHListConnector extends BaseAdapter implements Filterable {

    /* renamed from: a  reason: collision with root package name */
    private ExpandableListAdapter f70572a;

    /* renamed from: c  reason: collision with root package name */
    private int f70574c;

    /* renamed from: d  reason: collision with root package name */
    private int f70575d = Integer.MAX_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private final DataSetObserver f70576e = new a();

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<GroupMetadata> f70573b = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class GroupMetadata implements Parcelable, Comparable<GroupMetadata> {
        public static final Parcelable.Creator<GroupMetadata> CREATOR = new a();

        /* renamed from: e  reason: collision with root package name */
        static final int f70577e = -1;

        /* renamed from: a  reason: collision with root package name */
        int f70578a;

        /* renamed from: b  reason: collision with root package name */
        int f70579b;

        /* renamed from: c  reason: collision with root package name */
        int f70580c;

        /* renamed from: d  reason: collision with root package name */
        long f70581d;

        /* loaded from: classes5.dex */
        class a implements Parcelable.Creator<GroupMetadata> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public GroupMetadata createFromParcel(Parcel parcel) {
                return GroupMetadata.L0(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public GroupMetadata[] newArray(int i2) {
                return new GroupMetadata[i2];
            }
        }

        private GroupMetadata() {
        }

        static GroupMetadata L0(int i2, int i4, int i5, long j4) {
            GroupMetadata groupMetadata = new GroupMetadata();
            groupMetadata.f70578a = i2;
            groupMetadata.f70579b = i4;
            groupMetadata.f70580c = i5;
            groupMetadata.f70581d = j4;
            return groupMetadata;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // java.lang.Comparable
        /* renamed from: s */
        public int compareTo(GroupMetadata groupMetadata) {
            if (groupMetadata != null) {
                return this.f70580c - groupMetadata.f70580c;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f70578a);
            parcel.writeInt(this.f70579b);
            parcel.writeInt(this.f70580c);
            parcel.writeLong(this.f70581d);
        }
    }

    /* loaded from: classes5.dex */
    protected class a extends DataSetObserver {
        protected a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ExpandableHListConnector.this.l(true, true);
            ExpandableHListConnector.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ExpandableHListConnector.this.l(true, true);
            ExpandableHListConnector.this.notifyDataSetInvalidated();
        }
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: d  reason: collision with root package name */
        private static final int f70583d = 5;

        /* renamed from: e  reason: collision with root package name */
        private static ArrayList<b> f70584e = new ArrayList<>(5);

        /* renamed from: a  reason: collision with root package name */
        public it.sephiroth.android.library.widget.a f70585a;

        /* renamed from: b  reason: collision with root package name */
        public GroupMetadata f70586b;

        /* renamed from: c  reason: collision with root package name */
        public int f70587c;

        private b() {
        }

        private static b a() {
            synchronized (f70584e) {
                if (f70584e.size() > 0) {
                    b remove = f70584e.remove(0);
                    remove.e();
                    return remove;
                }
                return new b();
            }
        }

        static b c(int i2, int i4, int i5, int i6, GroupMetadata groupMetadata, int i7) {
            b a4 = a();
            a4.f70585a = it.sephiroth.android.library.widget.a.c(i4, i5, i6, i2);
            a4.f70586b = groupMetadata;
            a4.f70587c = i7;
            return a4;
        }

        private void e() {
            it.sephiroth.android.library.widget.a aVar = this.f70585a;
            if (aVar != null) {
                aVar.g();
                this.f70585a = null;
            }
            this.f70586b = null;
            this.f70587c = 0;
        }

        public boolean b() {
            return this.f70586b != null;
        }

        public void d() {
            e();
            synchronized (f70584e) {
                if (f70584e.size() < 5) {
                    f70584e.add(this);
                }
            }
        }
    }

    public ExpandableHListConnector(ExpandableListAdapter expandableListAdapter) {
        m(expandableListAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z3, boolean z4) {
        int childrenCount;
        ArrayList<GroupMetadata> arrayList = this.f70573b;
        int size = arrayList.size();
        int i2 = 0;
        this.f70574c = 0;
        if (z4) {
            boolean z5 = false;
            for (int i4 = size - 1; i4 >= 0; i4--) {
                GroupMetadata groupMetadata = arrayList.get(i4);
                int f4 = f(groupMetadata.f70581d, groupMetadata.f70580c);
                if (f4 != groupMetadata.f70580c) {
                    if (f4 == -1) {
                        arrayList.remove(i4);
                        size--;
                    }
                    groupMetadata.f70580c = f4;
                    if (!z5) {
                        z5 = true;
                    }
                }
            }
            if (z5) {
                Collections.sort(arrayList);
            }
        }
        int i5 = 0;
        int i6 = 0;
        while (i2 < size) {
            GroupMetadata groupMetadata2 = arrayList.get(i2);
            int i7 = groupMetadata2.f70579b;
            if (i7 != -1 && !z3) {
                childrenCount = i7 - groupMetadata2.f70578a;
            } else {
                childrenCount = this.f70572a.getChildrenCount(groupMetadata2.f70580c);
            }
            this.f70574c += childrenCount;
            int i8 = groupMetadata2.f70580c;
            int i9 = i5 + (i8 - i6);
            groupMetadata2.f70578a = i9;
            i5 = i9 + childrenCount;
            groupMetadata2.f70579b = i5;
            i2++;
            i6 = i8;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.f70572a.areAllItemsEnabled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i2) {
        it.sephiroth.android.library.widget.a c4 = it.sephiroth.android.library.widget.a.c(2, i2, -1, -1);
        b i4 = i(c4);
        c4.g();
        if (i4 == null) {
            return false;
        }
        boolean c5 = c(i4);
        i4.d();
        return c5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(b bVar) {
        GroupMetadata groupMetadata = bVar.f70586b;
        if (groupMetadata == null) {
            return false;
        }
        this.f70573b.remove(groupMetadata);
        l(false, false);
        notifyDataSetChanged();
        this.f70572a.onGroupCollapsed(bVar.f70586b.f70580c);
        return true;
    }

    boolean d(int i2) {
        it.sephiroth.android.library.widget.a c4 = it.sephiroth.android.library.widget.a.c(2, i2, -1, -1);
        b i4 = i(c4);
        c4.g();
        boolean e4 = e(i4);
        i4.d();
        return e4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(b bVar) {
        if (bVar.f70585a.f70628a >= 0) {
            if (this.f70575d != 0 && bVar.f70586b == null) {
                if (this.f70573b.size() >= this.f70575d) {
                    GroupMetadata groupMetadata = this.f70573b.get(0);
                    int indexOf = this.f70573b.indexOf(groupMetadata);
                    b(groupMetadata.f70580c);
                    int i2 = bVar.f70587c;
                    if (i2 > indexOf) {
                        bVar.f70587c = i2 - 1;
                    }
                }
                int i4 = bVar.f70585a.f70628a;
                GroupMetadata L0 = GroupMetadata.L0(-1, -1, i4, this.f70572a.getGroupId(i4));
                this.f70573b.add(bVar.f70587c, L0);
                l(false, false);
                notifyDataSetChanged();
                this.f70572a.onGroupExpanded(L0.f70580c);
                return true;
            }
            return false;
        }
        throw new RuntimeException("Need group");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int f(long r16, int r18) {
        /*
            r15 = this;
            r0 = r15
            android.widget.ExpandableListAdapter r1 = r0.f70572a
            int r1 = r1.getGroupCount()
            r2 = -1
            if (r1 != 0) goto Lb
            return r2
        Lb:
            r3 = -9223372036854775808
            int r5 = (r16 > r3 ? 1 : (r16 == r3 ? 0 : -1))
            if (r5 != 0) goto L12
            return r2
        L12:
            r3 = 0
            r4 = r18
            int r4 = java.lang.Math.max(r3, r4)
            r5 = 1
            int r1 = r1 - r5
            int r4 = java.lang.Math.min(r1, r4)
            long r6 = android.os.SystemClock.uptimeMillis()
            r8 = 100
            long r6 = r6 + r8
            android.widget.ExpandableListAdapter r8 = r15.g()
            if (r8 != 0) goto L2d
            return r2
        L2d:
            r9 = r4
            r10 = r9
        L2f:
            r11 = 0
        L30:
            long r12 = android.os.SystemClock.uptimeMillis()
            int r14 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r14 > 0) goto L66
            long r12 = r8.getGroupId(r4)
            int r14 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r14 != 0) goto L41
            return r4
        L41:
            if (r9 != r1) goto L45
            r12 = 1
            goto L46
        L45:
            r12 = 0
        L46:
            if (r10 != 0) goto L4a
            r13 = 1
            goto L4b
        L4a:
            r13 = 0
        L4b:
            if (r12 == 0) goto L50
            if (r13 == 0) goto L50
            goto L66
        L50:
            if (r13 != 0) goto L62
            if (r11 == 0) goto L57
            if (r12 != 0) goto L57
            goto L62
        L57:
            if (r12 != 0) goto L5d
            if (r11 != 0) goto L30
            if (r13 != 0) goto L30
        L5d:
            int r10 = r10 + (-1)
            r4 = r10
            r11 = 1
            goto L30
        L62:
            int r9 = r9 + 1
            r4 = r9
            goto L2f
        L66:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.widget.ExpandableHListConnector.f(long, int):int");
    }

    ExpandableListAdapter g() {
        return this.f70572a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f70572a.getGroupCount() + this.f70574c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        ExpandableListAdapter g4 = g();
        if (g4 instanceof Filterable) {
            return ((Filterable) g4).getFilter();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        Object child;
        b j4 = j(i2);
        it.sephiroth.android.library.widget.a aVar = j4.f70585a;
        int i4 = aVar.f70631d;
        if (i4 == 2) {
            child = this.f70572a.getGroup(aVar.f70628a);
        } else if (i4 == 1) {
            child = this.f70572a.getChild(aVar.f70628a, aVar.f70629b);
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        j4.d();
        return child;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        long combinedChildId;
        b j4 = j(i2);
        long groupId = this.f70572a.getGroupId(j4.f70585a.f70628a);
        it.sephiroth.android.library.widget.a aVar = j4.f70585a;
        int i4 = aVar.f70631d;
        if (i4 == 2) {
            combinedChildId = this.f70572a.getCombinedGroupId(groupId);
        } else if (i4 == 1) {
            combinedChildId = this.f70572a.getCombinedChildId(groupId, this.f70572a.getChildId(aVar.f70628a, aVar.f70629b));
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        j4.d();
        return combinedChildId;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i2) {
        int i4;
        b j4 = j(i2);
        it.sephiroth.android.library.widget.a aVar = j4.f70585a;
        ExpandableListAdapter expandableListAdapter = this.f70572a;
        if (expandableListAdapter instanceof HeterogeneousExpandableList) {
            HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) expandableListAdapter;
            if (aVar.f70631d == 2) {
                i4 = heterogeneousExpandableList.getGroupType(aVar.f70628a);
            } else {
                i4 = heterogeneousExpandableList.getChildType(aVar.f70628a, aVar.f70629b) + heterogeneousExpandableList.getGroupTypeCount();
            }
        } else {
            i4 = aVar.f70631d == 2 ? 0 : 1;
        }
        j4.d();
        return i4;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View childView;
        b j4 = j(i2);
        it.sephiroth.android.library.widget.a aVar = j4.f70585a;
        int i4 = aVar.f70631d;
        if (i4 == 2) {
            childView = this.f70572a.getGroupView(aVar.f70628a, j4.b(), view, viewGroup);
        } else if (i4 == 1) {
            childView = this.f70572a.getChildView(aVar.f70628a, aVar.f70629b, j4.f70586b.f70579b == i2, view, viewGroup);
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        j4.d();
        return childView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        ExpandableListAdapter expandableListAdapter = this.f70572a;
        if (expandableListAdapter instanceof HeterogeneousExpandableList) {
            HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) expandableListAdapter;
            return heterogeneousExpandableList.getGroupTypeCount() + heterogeneousExpandableList.getChildTypeCount();
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<GroupMetadata> h() {
        return this.f70573b;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f70572a.hasStableIds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b i(it.sephiroth.android.library.widget.a aVar) {
        ArrayList<GroupMetadata> arrayList = this.f70573b;
        int size = arrayList.size();
        int i2 = size - 1;
        if (size == 0) {
            int i4 = aVar.f70628a;
            return b.c(i4, aVar.f70631d, i4, aVar.f70629b, null, 0);
        }
        int i5 = 0;
        int i6 = 0;
        while (i6 <= i2) {
            i5 = ((i2 - i6) / 2) + i6;
            GroupMetadata groupMetadata = arrayList.get(i5);
            int i7 = aVar.f70628a;
            int i8 = groupMetadata.f70580c;
            if (i7 > i8) {
                i6 = i5 + 1;
            } else if (i7 < i8) {
                i2 = i5 - 1;
            } else if (i7 == i8) {
                int i9 = aVar.f70631d;
                if (i9 == 2) {
                    return b.c(groupMetadata.f70578a, i9, i7, aVar.f70629b, groupMetadata, i5);
                }
                if (i9 == 1) {
                    int i10 = groupMetadata.f70578a;
                    int i11 = aVar.f70629b;
                    return b.c(i10 + i11 + 1, i9, i7, i11, groupMetadata, i5);
                }
                return null;
            }
        }
        if (aVar.f70631d != 2) {
            return null;
        }
        if (i6 > i5) {
            GroupMetadata groupMetadata2 = arrayList.get(i6 - 1);
            int i12 = groupMetadata2.f70579b;
            int i13 = aVar.f70628a;
            return b.c(i12 + (i13 - groupMetadata2.f70580c), aVar.f70631d, i13, aVar.f70629b, null, i6);
        } else if (i2 < i5) {
            int i14 = 1 + i2;
            GroupMetadata groupMetadata3 = arrayList.get(i14);
            int i15 = groupMetadata3.f70578a;
            int i16 = groupMetadata3.f70580c;
            int i17 = aVar.f70628a;
            return b.c(i15 - (i16 - i17), aVar.f70631d, i17, aVar.f70629b, null, i14);
        } else {
            return null;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        ExpandableListAdapter g4 = g();
        return g4 == null || g4.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        b j4 = j(i2);
        it.sephiroth.android.library.widget.a aVar = j4.f70585a;
        boolean isChildSelectable = aVar.f70631d == 1 ? this.f70572a.isChildSelectable(aVar.f70628a, aVar.f70629b) : true;
        j4.d();
        return isChildSelectable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b j(int i2) {
        int i4;
        ArrayList<GroupMetadata> arrayList = this.f70573b;
        int size = arrayList.size();
        int i5 = size - 1;
        if (size == 0) {
            return b.c(i2, 2, i2, -1, null, 0);
        }
        int i6 = 0;
        int i7 = i5;
        int i8 = 0;
        while (i6 <= i7) {
            int i9 = ((i7 - i6) / 2) + i6;
            GroupMetadata groupMetadata = arrayList.get(i9);
            int i10 = groupMetadata.f70579b;
            if (i2 > i10) {
                i6 = i9 + 1;
            } else {
                int i11 = groupMetadata.f70578a;
                if (i2 < i11) {
                    i7 = i9 - 1;
                } else if (i2 == i11) {
                    return b.c(i2, 2, groupMetadata.f70580c, -1, groupMetadata, i9);
                } else {
                    if (i2 <= i10) {
                        return b.c(i2, 1, groupMetadata.f70580c, i2 - (i11 + 1), groupMetadata, i9);
                    }
                }
            }
            i8 = i9;
        }
        if (i6 > i8) {
            GroupMetadata groupMetadata2 = arrayList.get(i6 - 1);
            i4 = (i2 - groupMetadata2.f70579b) + groupMetadata2.f70580c;
        } else if (i7 < i8) {
            i6 = i7 + 1;
            GroupMetadata groupMetadata3 = arrayList.get(i6);
            i4 = groupMetadata3.f70580c - (groupMetadata3.f70578a - i2);
        } else {
            throw new RuntimeException("Unknown state");
        }
        return b.c(i2, 2, i4, -1, null, i6);
    }

    public boolean k(int i2) {
        for (int size = this.f70573b.size() - 1; size >= 0; size--) {
            if (this.f70573b.get(size).f70580c == i2) {
                return true;
            }
        }
        return false;
    }

    public void m(ExpandableListAdapter expandableListAdapter) {
        ExpandableListAdapter expandableListAdapter2 = this.f70572a;
        if (expandableListAdapter2 != null) {
            expandableListAdapter2.unregisterDataSetObserver(this.f70576e);
        }
        this.f70572a = expandableListAdapter;
        expandableListAdapter.registerDataSetObserver(this.f70576e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(ArrayList<GroupMetadata> arrayList) {
        ExpandableListAdapter expandableListAdapter;
        if (arrayList == null || (expandableListAdapter = this.f70572a) == null) {
            return;
        }
        int groupCount = expandableListAdapter.getGroupCount();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f70580c >= groupCount) {
                return;
            }
        }
        this.f70573b = arrayList;
        l(true, false);
    }

    public void o(int i2) {
        this.f70575d = i2;
    }
}
