package kotlin.collections.builders;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
/* compiled from: SetBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010)\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001b\b\u0000\u0012\u0010\u0010\u001b\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u001a¢\u0006\u0004\b\u001d\u0010\u001eB\t\b\u0016¢\u0006\u0004\b\u001d\u0010\u001fB\u0011\b\u0016\u0012\u0006\u0010 \u001a\u00020\u0016¢\u0006\u0004\b\u001d\u0010!J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u000bH\u0016J\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\r\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0016\u0010\u0013\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u0010\u0014\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0016\u0010\u0015\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016R\u0016\u0010\u0019\u001a\u00020\u00168V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R \u0010\u001b\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\""}, d2 = {"Lkotlin/collections/builders/SetBuilder;", "E", "", "Lkotlin/collections/AbstractMutableSet;", "", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "", "isEmpty", "element", "contains", "(Ljava/lang/Object;)Z", "", "clear", "add", "remove", "", "iterator", "", "elements", "addAll", "removeAll", "retainAll", "", "getSize", "()I", "size", "Lkotlin/collections/builders/MapBuilder;", "backing", "Lkotlin/collections/builders/MapBuilder;", "<init>", "(Lkotlin/collections/builders/MapBuilder;)V", "()V", "initialCapacity", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SetBuilder<E> extends AbstractMutableSet<E> implements Set<E>, KMutableSet {
    private final MapBuilder<E, ?> backing;

    public SetBuilder(@NotNull MapBuilder<E, ?> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        this.backing = backing;
    }

    @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e4) {
        return this.backing.addKey$kotlin_stdlib(e4) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.backing.checkIsMutable$kotlin_stdlib();
        return super.addAll(elements);
    }

    @NotNull
    public final Set<E> build() {
        this.backing.build();
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.backing.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.backing.containsKey(obj);
    }

    @Override // kotlin.collections.AbstractMutableSet
    public int getSize() {
        return this.backing.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.backing.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return this.backing.keysIterator$kotlin_stdlib();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.backing.removeKey$kotlin_stdlib(obj) >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.backing.checkIsMutable$kotlin_stdlib();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        this.backing.checkIsMutable$kotlin_stdlib();
        return super.retainAll(elements);
    }

    public SetBuilder() {
        this(new MapBuilder());
    }

    public SetBuilder(int i2) {
        this(new MapBuilder(i2));
    }
}
