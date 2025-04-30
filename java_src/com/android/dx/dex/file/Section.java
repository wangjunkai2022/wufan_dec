package com.android.dx.dex.file;

import com.android.dx.util.AnnotatedOutput;
import java.util.Collection;
import java.util.Objects;
/* loaded from: classes2.dex */
public abstract class Section {
    private final int alignment;
    private final DexFile file;
    private int fileOffset;
    private final String name;
    private boolean prepared;

    public Section(String str, DexFile dexFile, int i2) {
        Objects.requireNonNull(dexFile, "file == null");
        validateAlignment(i2);
        this.name = str;
        this.file = dexFile;
        this.alignment = i2;
        this.fileOffset = -1;
        this.prepared = false;
    }

    public static void validateAlignment(int i2) {
        if (i2 <= 0 || (i2 & (i2 - 1)) != 0) {
            throw new IllegalArgumentException("invalid alignment");
        }
    }

    protected final void align(AnnotatedOutput annotatedOutput) {
        annotatedOutput.alignTo(this.alignment);
    }

    public abstract int getAbsoluteItemOffset(Item item);

    public final int getAbsoluteOffset(int i2) {
        if (i2 >= 0) {
            int i4 = this.fileOffset;
            if (i4 >= 0) {
                return i4 + i2;
            }
            throw new RuntimeException("fileOffset not yet set");
        }
        throw new IllegalArgumentException("relative < 0");
    }

    public final int getAlignment() {
        return this.alignment;
    }

    public final DexFile getFile() {
        return this.file;
    }

    public final int getFileOffset() {
        int i2 = this.fileOffset;
        if (i2 >= 0) {
            return i2;
        }
        throw new RuntimeException("fileOffset not set");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String getName() {
        return this.name;
    }

    public abstract Collection<? extends Item> items();

    public final void prepare() {
        throwIfPrepared();
        prepare0();
        this.prepared = true;
    }

    protected abstract void prepare0();

    public final int setFileOffset(int i2) {
        if (i2 >= 0) {
            if (this.fileOffset < 0) {
                int i4 = this.alignment - 1;
                int i5 = (i2 + i4) & (i4 ^ (-1));
                this.fileOffset = i5;
                return i5;
            }
            throw new RuntimeException("fileOffset already set");
        }
        throw new IllegalArgumentException("fileOffset < 0");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void throwIfNotPrepared() {
        if (!this.prepared) {
            throw new RuntimeException("not prepared");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void throwIfPrepared() {
        if (this.prepared) {
            throw new RuntimeException("already prepared");
        }
    }

    public abstract int writeSize();

    public final void writeTo(AnnotatedOutput annotatedOutput) {
        throwIfNotPrepared();
        align(annotatedOutput);
        int cursor = annotatedOutput.getCursor();
        int i2 = this.fileOffset;
        if (i2 < 0) {
            this.fileOffset = cursor;
        } else if (i2 != cursor) {
            throw new RuntimeException("alignment mismatch: for " + this + ", at " + cursor + ", but expected " + this.fileOffset);
        }
        if (annotatedOutput.annotates()) {
            if (this.name != null) {
                annotatedOutput.annotate(0, "\n" + this.name + ":");
            } else if (cursor != 0) {
                annotatedOutput.annotate(0, "\n");
            }
        }
        writeTo0(annotatedOutput);
    }

    protected abstract void writeTo0(AnnotatedOutput annotatedOutput);
}
