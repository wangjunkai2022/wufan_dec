package com.android.dx.cf.code;

import com.android.dx.util.IntList;
import com.android.dx.util.MutabilityControl;
/* loaded from: classes2.dex */
public final class SwitchList extends MutabilityControl {
    private int size;
    private final IntList targets;
    private final IntList values;

    public SwitchList(int i2) {
        super(true);
        this.values = new IntList(i2);
        this.targets = new IntList(i2 + 1);
        this.size = i2;
    }

    public void add(int i2, int i4) {
        throwIfImmutable();
        if (i4 >= 0) {
            this.values.add(i2);
            this.targets.add(i4);
            return;
        }
        throw new IllegalArgumentException("target < 0");
    }

    public int getDefaultTarget() {
        return this.targets.get(this.size);
    }

    public int getTarget(int i2) {
        return this.targets.get(i2);
    }

    public IntList getTargets() {
        return this.targets;
    }

    public int getValue(int i2) {
        return this.values.get(i2);
    }

    public IntList getValues() {
        return this.values;
    }

    public void removeSuperfluousDefaults() {
        throwIfImmutable();
        int i2 = this.size;
        if (i2 == this.targets.size() - 1) {
            int i4 = this.targets.get(i2);
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = this.targets.get(i6);
                if (i7 != i4) {
                    if (i6 != i5) {
                        this.targets.set(i5, i7);
                        IntList intList = this.values;
                        intList.set(i5, intList.get(i6));
                    }
                    i5++;
                }
            }
            if (i5 != i2) {
                this.values.shrink(i5);
                this.targets.set(i5, i4);
                this.targets.shrink(i5 + 1);
                this.size = i5;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("incomplete instance");
    }

    public void setDefaultTarget(int i2) {
        throwIfImmutable();
        if (i2 >= 0) {
            if (this.targets.size() == this.size) {
                this.targets.add(i2);
                return;
            }
            throw new RuntimeException("non-default elements not all set");
        }
        throw new IllegalArgumentException("target < 0");
    }

    @Override // com.android.dx.util.MutabilityControl
    public void setImmutable() {
        this.values.setImmutable();
        this.targets.setImmutable();
        super.setImmutable();
    }

    public int size() {
        return this.size;
    }
}
