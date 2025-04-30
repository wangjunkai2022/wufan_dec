package kotlin.collections;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.activity.MyAccountLoginActivity_;
import external.org.apache.commons.lang3.d;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Collections.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0010(\n\u0000\n\u0002\u0010*\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u00042\u00060\u0005j\u0002`\u0006B\t\b\u0002¢\u0006\u0004\b'\u0010(J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016J\u0011\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u0015\u001a\u00020\n2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013H\u0016J\u0011\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\fH\u0096\u0002J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u001aH\u0096\u0002J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\fH\u0016J\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0016R\u0016\u0010#\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lkotlin/collections/EmptyList;", "", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "readResolve", "other", "", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "isEmpty", "element", "contains", "", "elements", "containsAll", "index", "get", "indexOf", "lastIndexOf", "", "iterator", "", "listIterator", MyAccountLoginActivity_.J, "toIndex", "subList", "getSize", "()I", "size", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class EmptyList implements List, Serializable, RandomAccess, KMappedMarker {
    @NotNull
    public static final EmptyList INSTANCE = new EmptyList();
    private static final long serialVersionUID = -7390468764508069838L;

    private EmptyList() {
    }

    private final Object readResolve() {
        return INSTANCE;
    }

    @Override // java.util.List
    public /* synthetic */ void add(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void add(int i2, Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean add(Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i2, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Void) {
            return contains((Void) obj);
        }
        return false;
    }

    public boolean contains(@NotNull Void element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return elements.isEmpty();
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof List) && ((List) obj).isEmpty();
    }

    public int getSize() {
        return 0;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return 1;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Void) {
            return indexOf((Void) obj);
        }
        return -1;
    }

    public int indexOf(@NotNull Void element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator iterator() {
        return EmptyIterator.INSTANCE;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Void) {
            return lastIndexOf((Void) obj);
        }
        return -1;
    }

    public int lastIndexOf(@NotNull Void element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator listIterator() {
        return EmptyIterator.INSTANCE;
    }

    @Override // java.util.List
    public /* synthetic */ Object remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public Void remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* synthetic */ Object set(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Void set(int i2, Void r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.List
    @NotNull
    public List subList(int i2, int i4) {
        if (i2 == 0 && i4 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i4);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    @NotNull
    public String toString() {
        return "[]";
    }

    @Override // java.util.List
    @NotNull
    public Void get(int i2) {
        throw new IndexOutOfBoundsException("Empty list doesn't contain element at index " + i2 + d.f65364a);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator listIterator(int i2) {
        if (i2 == 0) {
            return EmptyIterator.INSTANCE;
        }
        throw new IndexOutOfBoundsException("Index: " + i2);
    }
}
