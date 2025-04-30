package com.android.dx.dex.file;

import com.android.dx.dex.file.OffsettedItem;
import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class UniformListItem<T extends OffsettedItem> extends OffsettedItem {
    private static final int HEADER_SIZE = 4;
    private final ItemType itemType;
    private final List<T> items;

    public UniformListItem(ItemType itemType, List<T> list) {
        super(getAlignment(list), writeSize(list));
        Objects.requireNonNull(itemType, "itemType == null");
        this.items = list;
        this.itemType = itemType;
    }

    private static int getAlignment(List<? extends OffsettedItem> list) {
        try {
            return Math.max(4, list.get(0).getAlignment());
        } catch (IndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("items.size() == 0");
        } catch (NullPointerException unused2) {
            throw new NullPointerException("items == null");
        }
    }

    private int headerSize() {
        return getAlignment();
    }

    private static int writeSize(List<? extends OffsettedItem> list) {
        return (list.size() * list.get(0).writeSize()) + getAlignment(list);
    }

    @Override // com.android.dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        for (T t3 : this.items) {
            t3.addContents(dexFile);
        }
    }

    public final List<T> getItems() {
        return this.items;
    }

    @Override // com.android.dx.dex.file.Item
    public ItemType itemType() {
        return this.itemType;
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    protected void place0(Section section, int i2) {
        int headerSize = i2 + headerSize();
        int i4 = -1;
        int i5 = -1;
        boolean z3 = true;
        for (T t3 : this.items) {
            int writeSize = t3.writeSize();
            if (z3) {
                i5 = t3.getAlignment();
                i4 = writeSize;
                z3 = false;
            } else if (writeSize == i4) {
                if (t3.getAlignment() != i5) {
                    throw new UnsupportedOperationException("item alignment mismatch");
                }
            } else {
                throw new UnsupportedOperationException("item size mismatch");
            }
            headerSize = t3.place(section, headerSize) + writeSize;
        }
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    public final String toHuman() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{");
        boolean z3 = true;
        for (T t3 : this.items) {
            if (z3) {
                z3 = false;
            } else {
                sb.append(", ");
            }
            sb.append(t3.toHuman());
        }
        sb.append("}");
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(UniformListItem.class.getName());
        sb.append(this.items);
        return sb.toString();
    }

    @Override // com.android.dx.dex.file.OffsettedItem
    protected void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int size = this.items.size();
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + " " + typeName());
            StringBuilder sb = new StringBuilder();
            sb.append("  size: ");
            sb.append(Hex.u4(size));
            annotatedOutput.annotate(4, sb.toString());
        }
        annotatedOutput.writeInt(size);
        for (T t3 : this.items) {
            t3.writeTo(dexFile, annotatedOutput);
        }
    }
}
