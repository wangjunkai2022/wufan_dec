package com.android.dx.cf.code;

import com.android.dex.util.ExceptionWithContext;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class LocalsArraySet extends LocalsArray {
    private final OneLocalsArray primary;
    private final ArrayList<LocalsArray> secondaries;

    public LocalsArraySet(int i2) {
        super(i2 != 0);
        this.primary = new OneLocalsArray(i2);
        this.secondaries = new ArrayList<>();
    }

    private LocalsArray getSecondaryForLabel(int i2) {
        if (i2 >= this.secondaries.size()) {
            return null;
        }
        return this.secondaries.get(i2);
    }

    private LocalsArraySet mergeWithOne(OneLocalsArray oneLocalsArray) {
        OneLocalsArray merge = this.primary.merge(oneLocalsArray.getPrimary());
        ArrayList arrayList = new ArrayList(this.secondaries.size());
        int size = this.secondaries.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            LocalsArray localsArray = this.secondaries.get(i2);
            LocalsArray localsArray2 = null;
            if (localsArray != null) {
                try {
                    localsArray2 = localsArray.merge(oneLocalsArray);
                } catch (SimException e4) {
                    e4.addContext("Merging one locals against caller block " + Hex.u2(i2));
                }
            }
            z3 = z3 || localsArray != localsArray2;
            arrayList.add(localsArray2);
        }
        return (this.primary != merge || z3) ? new LocalsArraySet(merge, arrayList) : this;
    }

    private LocalsArraySet mergeWithSet(LocalsArraySet localsArraySet) {
        OneLocalsArray merge = this.primary.merge(localsArraySet.getPrimary());
        int size = this.secondaries.size();
        int size2 = localsArraySet.secondaries.size();
        int max = Math.max(size, size2);
        ArrayList arrayList = new ArrayList(max);
        int i2 = 0;
        boolean z3 = false;
        while (i2 < max) {
            LocalsArray localsArray = null;
            LocalsArray localsArray2 = i2 < size ? this.secondaries.get(i2) : null;
            LocalsArray localsArray3 = i2 < size2 ? localsArraySet.secondaries.get(i2) : null;
            if (localsArray2 != localsArray3) {
                if (localsArray2 == null) {
                    localsArray = localsArray3;
                } else if (localsArray3 != null) {
                    try {
                        localsArray = localsArray2.merge(localsArray3);
                    } catch (SimException e4) {
                        e4.addContext("Merging locals set for caller block " + Hex.u2(i2));
                    }
                }
                z3 = (z3 && localsArray2 == localsArray) ? false : true;
                arrayList.add(localsArray);
                i2++;
            }
            localsArray = localsArray2;
            if (z3) {
            }
            arrayList.add(localsArray);
            i2++;
        }
        return (this.primary != merge || z3) ? new LocalsArraySet(merge, arrayList) : this;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void annotate(ExceptionWithContext exceptionWithContext) {
        exceptionWithContext.addContext("(locals array set; primary)");
        this.primary.annotate(exceptionWithContext);
        int size = this.secondaries.size();
        for (int i2 = 0; i2 < size; i2++) {
            LocalsArray localsArray = this.secondaries.get(i2);
            if (localsArray != null) {
                exceptionWithContext.addContext("(locals array set: primary for caller " + Hex.u2(i2) + ')');
                localsArray.getPrimary().annotate(exceptionWithContext);
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArray copy() {
        return new LocalsArraySet(this);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer get(int i2) {
        return this.primary.get(i2);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory1(int i2) {
        return this.primary.getCategory1(i2);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getCategory2(int i2) {
        return this.primary.getCategory2(i2);
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public int getMaxLocals() {
        return this.primary.getMaxLocals();
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public TypeBearer getOrNull(int i2) {
        return this.primary.getOrNull(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.dx.cf.code.LocalsArray
    public OneLocalsArray getPrimary() {
        return this.primary;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void invalidate(int i2) {
        throwIfImmutable();
        this.primary.invalidate(i2);
        Iterator<LocalsArray> it2 = this.secondaries.iterator();
        while (it2.hasNext()) {
            LocalsArray next = it2.next();
            if (next != null) {
                next.invalidate(i2);
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void makeInitialized(Type type) {
        if (this.primary.getMaxLocals() == 0) {
            return;
        }
        throwIfImmutable();
        this.primary.makeInitialized(type);
        Iterator<LocalsArray> it2 = this.secondaries.iterator();
        while (it2.hasNext()) {
            LocalsArray next = it2.next();
            if (next != null) {
                next.makeInitialized(type);
            }
        }
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArraySet mergeWithSubroutineCaller(LocalsArray localsArray, int i2) {
        LocalsArray localsArray2;
        LocalsArray secondaryForLabel = getSecondaryForLabel(i2);
        OneLocalsArray merge = this.primary.merge(localsArray.getPrimary());
        if (secondaryForLabel == localsArray) {
            localsArray = secondaryForLabel;
        } else if (secondaryForLabel != null) {
            localsArray = secondaryForLabel.merge(localsArray);
        }
        if (localsArray == secondaryForLabel && merge == this.primary) {
            return this;
        }
        int size = this.secondaries.size();
        int max = Math.max(i2 + 1, size);
        ArrayList arrayList = new ArrayList(max);
        int i4 = 0;
        OneLocalsArray oneLocalsArray = null;
        while (i4 < max) {
            if (i4 == i2) {
                localsArray2 = localsArray;
            } else {
                localsArray2 = i4 < size ? this.secondaries.get(i4) : null;
            }
            if (localsArray2 != null) {
                if (oneLocalsArray == null) {
                    oneLocalsArray = localsArray2.getPrimary();
                } else {
                    oneLocalsArray = oneLocalsArray.merge(localsArray2.getPrimary());
                }
            }
            arrayList.add(localsArray2);
            i4++;
        }
        LocalsArraySet localsArraySet = new LocalsArraySet(oneLocalsArray, arrayList);
        localsArraySet.setImmutable();
        return localsArraySet;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(int i2, TypeBearer typeBearer) {
        throwIfImmutable();
        this.primary.set(i2, typeBearer);
        Iterator<LocalsArray> it2 = this.secondaries.iterator();
        while (it2.hasNext()) {
            LocalsArray next = it2.next();
            if (next != null) {
                next.set(i2, typeBearer);
            }
        }
    }

    @Override // com.android.dx.util.MutabilityControl
    public void setImmutable() {
        this.primary.setImmutable();
        Iterator<LocalsArray> it2 = this.secondaries.iterator();
        while (it2.hasNext()) {
            LocalsArray next = it2.next();
            if (next != null) {
                next.setImmutable();
            }
        }
        super.setImmutable();
    }

    public LocalsArray subArrayForLabel(int i2) {
        return getSecondaryForLabel(i2);
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append("(locals array set; primary)\n");
        sb.append(getPrimary().toHuman());
        sb.append('\n');
        int size = this.secondaries.size();
        for (int i2 = 0; i2 < size; i2++) {
            LocalsArray localsArray = this.secondaries.get(i2);
            if (localsArray != null) {
                sb.append("(locals array set: primary for caller " + Hex.u2(i2) + ")\n");
                sb.append(localsArray.getPrimary().toHuman());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public LocalsArraySet merge(LocalsArray localsArray) {
        LocalsArraySet mergeWithOne;
        try {
            if (localsArray instanceof LocalsArraySet) {
                mergeWithOne = mergeWithSet((LocalsArraySet) localsArray);
            } else {
                mergeWithOne = mergeWithOne((OneLocalsArray) localsArray);
            }
            mergeWithOne.setImmutable();
            return mergeWithOne;
        } catch (SimException e4) {
            e4.addContext("underlay locals:");
            annotate(e4);
            e4.addContext("overlay locals:");
            localsArray.annotate(e4);
            throw e4;
        }
    }

    public LocalsArraySet(OneLocalsArray oneLocalsArray, ArrayList<LocalsArray> arrayList) {
        super(oneLocalsArray.getMaxLocals() > 0);
        this.primary = oneLocalsArray;
        this.secondaries = arrayList;
    }

    @Override // com.android.dx.cf.code.LocalsArray
    public void set(RegisterSpec registerSpec) {
        set(registerSpec.getReg(), registerSpec);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LocalsArraySet(LocalsArraySet localsArraySet) {
        super(localsArraySet.getMaxLocals() > 0);
        this.primary = localsArraySet.primary.copy();
        this.secondaries = new ArrayList<>(localsArraySet.secondaries.size());
        int size = localsArraySet.secondaries.size();
        for (int i2 = 0; i2 < size; i2++) {
            LocalsArray localsArray = localsArraySet.secondaries.get(i2);
            if (localsArray == null) {
                this.secondaries.add(null);
            } else {
                this.secondaries.add(localsArray.copy());
            }
        }
    }
}
