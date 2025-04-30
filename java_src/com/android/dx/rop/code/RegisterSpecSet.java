package com.android.dx.rop.code;

import com.android.dx.util.MutabilityControl;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class RegisterSpecSet extends MutabilityControl {
    public static final RegisterSpecSet EMPTY = new RegisterSpecSet(0);
    private int size;
    private final RegisterSpec[] specs;

    public RegisterSpecSet(int i2) {
        super(i2 != 0);
        this.specs = new RegisterSpec[i2];
        this.size = 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RegisterSpecSet) {
            RegisterSpecSet registerSpecSet = (RegisterSpecSet) obj;
            RegisterSpec[] registerSpecArr = registerSpecSet.specs;
            int length = this.specs.length;
            if (length == registerSpecArr.length && size() == registerSpecSet.size()) {
                for (int i2 = 0; i2 < length; i2++) {
                    RegisterSpec registerSpec = this.specs[i2];
                    RegisterSpec registerSpec2 = registerSpecArr[i2];
                    if (registerSpec != registerSpec2 && (registerSpec == null || !registerSpec.equals(registerSpec2))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public RegisterSpec findMatchingLocal(RegisterSpec registerSpec) {
        int length = this.specs.length;
        for (int i2 = 0; i2 < length; i2++) {
            RegisterSpec registerSpec2 = this.specs[i2];
            if (registerSpec2 != null && registerSpec.matchesVariable(registerSpec2)) {
                return registerSpec2;
            }
        }
        return null;
    }

    public RegisterSpec get(int i2) {
        try {
            return this.specs[i2];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public int getMaxSize() {
        return this.specs.length;
    }

    public int hashCode() {
        int length = this.specs.length;
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            RegisterSpec registerSpec = this.specs[i4];
            i2 = (i2 * 31) + (registerSpec == null ? 0 : registerSpec.hashCode());
        }
        return i2;
    }

    public void intersect(RegisterSpecSet registerSpecSet, boolean z3) {
        RegisterSpec intersect;
        throwIfImmutable();
        RegisterSpec[] registerSpecArr = registerSpecSet.specs;
        int length = this.specs.length;
        int min = Math.min(length, registerSpecArr.length);
        this.size = -1;
        for (int i2 = 0; i2 < min; i2++) {
            RegisterSpec registerSpec = this.specs[i2];
            if (registerSpec != null && (intersect = registerSpec.intersect(registerSpecArr[i2], z3)) != registerSpec) {
                this.specs[i2] = intersect;
            }
        }
        while (min < length) {
            this.specs[min] = null;
            min++;
        }
    }

    public RegisterSpec localItemToSpec(LocalItem localItem) {
        int length = this.specs.length;
        for (int i2 = 0; i2 < length; i2++) {
            RegisterSpec registerSpec = this.specs[i2];
            if (registerSpec != null && localItem.equals(registerSpec.getLocalItem())) {
                return registerSpec;
            }
        }
        return null;
    }

    public RegisterSpecSet mutableCopy() {
        int length = this.specs.length;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(length);
        for (int i2 = 0; i2 < length; i2++) {
            RegisterSpec registerSpec = this.specs[i2];
            if (registerSpec != null) {
                registerSpecSet.put(registerSpec);
            }
        }
        registerSpecSet.size = this.size;
        return registerSpecSet;
    }

    public void put(RegisterSpec registerSpec) {
        int i2;
        RegisterSpec registerSpec2;
        throwIfImmutable();
        Objects.requireNonNull(registerSpec, "spec == null");
        this.size = -1;
        try {
            int reg = registerSpec.getReg();
            RegisterSpec[] registerSpecArr = this.specs;
            registerSpecArr[reg] = registerSpec;
            if (reg > 0 && (registerSpec2 = registerSpecArr[reg - 1]) != null && registerSpec2.getCategory() == 2) {
                this.specs[i2] = null;
            }
            if (registerSpec.getCategory() == 2) {
                this.specs[reg + 1] = null;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("spec.getReg() out of range");
        }
    }

    public void putAll(RegisterSpecSet registerSpecSet) {
        int maxSize = registerSpecSet.getMaxSize();
        for (int i2 = 0; i2 < maxSize; i2++) {
            RegisterSpec registerSpec = registerSpecSet.get(i2);
            if (registerSpec != null) {
                put(registerSpec);
            }
        }
    }

    public void remove(RegisterSpec registerSpec) {
        try {
            this.specs[registerSpec.getReg()] = null;
            this.size = -1;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public int size() {
        int i2 = this.size;
        if (i2 < 0) {
            int length = this.specs.length;
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                if (this.specs[i5] != null) {
                    i4++;
                }
            }
            this.size = i4;
            return i4;
        }
        return i2;
    }

    public String toString() {
        int length = this.specs.length;
        StringBuilder sb = new StringBuilder(length * 25);
        sb.append('{');
        boolean z3 = false;
        for (int i2 = 0; i2 < length; i2++) {
            RegisterSpec registerSpec = this.specs[i2];
            if (registerSpec != null) {
                if (z3) {
                    sb.append(", ");
                } else {
                    z3 = true;
                }
                sb.append(registerSpec);
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public RegisterSpecSet withOffset(int i2) {
        int length = this.specs.length;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(length + i2);
        for (int i4 = 0; i4 < length; i4++) {
            RegisterSpec registerSpec = this.specs[i4];
            if (registerSpec != null) {
                registerSpecSet.put(registerSpec.withOffset(i2));
            }
        }
        registerSpecSet.size = this.size;
        if (isImmutable()) {
            registerSpecSet.setImmutable();
        }
        return registerSpecSet;
    }

    public RegisterSpec get(RegisterSpec registerSpec) {
        return get(registerSpec.getReg());
    }
}
