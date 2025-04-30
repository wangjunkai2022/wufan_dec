package com.android.dx.rop.code;

import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.ToHuman;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class RegisterSpec implements TypeBearer, ToHuman, Comparable<RegisterSpec> {
    public static final String PREFIX = "v";
    private final LocalItem local;
    private final int reg;
    private final TypeBearer type;
    private static final ConcurrentHashMap<Object, RegisterSpec> theInterns = new ConcurrentHashMap<>(10000, 0.75f);
    private static final ThreadLocal<ForComparison> theInterningItem = new ThreadLocal<ForComparison>() { // from class: com.android.dx.rop.code.RegisterSpec.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public ForComparison initialValue() {
            return new ForComparison();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ForComparison {
        private LocalItem local;
        private int reg;
        private TypeBearer type;

        private ForComparison() {
        }

        public boolean equals(Object obj) {
            if (obj instanceof RegisterSpec) {
                return ((RegisterSpec) obj).equals(this.reg, this.type, this.local);
            }
            return false;
        }

        public int hashCode() {
            return RegisterSpec.hashCodeOf(this.reg, this.type, this.local);
        }

        public void set(int i2, TypeBearer typeBearer, LocalItem localItem) {
            this.reg = i2;
            this.type = typeBearer;
            this.local = localItem;
        }

        public RegisterSpec toRegisterSpec() {
            return new RegisterSpec(this.reg, this.type, this.local);
        }
    }

    public static void clearInternTable() {
        theInterns.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int hashCodeOf(int i2, TypeBearer typeBearer, LocalItem localItem) {
        return ((((localItem != null ? localItem.hashCode() : 0) * 31) + typeBearer.hashCode()) * 31) + i2;
    }

    private static RegisterSpec intern(int i2, TypeBearer typeBearer, LocalItem localItem) {
        RegisterSpec putIfAbsent;
        ForComparison forComparison = theInterningItem.get();
        forComparison.set(i2, typeBearer, localItem);
        ConcurrentHashMap<Object, RegisterSpec> concurrentHashMap = theInterns;
        RegisterSpec registerSpec = concurrentHashMap.get(forComparison);
        return (registerSpec != null || (putIfAbsent = concurrentHashMap.putIfAbsent((registerSpec = forComparison.toRegisterSpec()), registerSpec)) == null) ? registerSpec : putIfAbsent;
    }

    public static RegisterSpec make(int i2, TypeBearer typeBearer) {
        return intern(i2, typeBearer, null);
    }

    public static RegisterSpec makeLocalOptional(int i2, TypeBearer typeBearer, LocalItem localItem) {
        return intern(i2, typeBearer, localItem);
    }

    public static String regString(int i2) {
        return "v" + i2;
    }

    private String toString0(boolean z3) {
        StringBuilder sb = new StringBuilder(40);
        sb.append(regString());
        sb.append(":");
        LocalItem localItem = this.local;
        if (localItem != null) {
            sb.append(localItem.toString());
        }
        Type type = this.type.getType();
        sb.append(type);
        if (type != this.type) {
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            if (z3) {
                TypeBearer typeBearer = this.type;
                if (typeBearer instanceof CstString) {
                    sb.append(((CstString) typeBearer).toQuoted());
                }
            }
            if (z3) {
                TypeBearer typeBearer2 = this.type;
                if (typeBearer2 instanceof Constant) {
                    sb.append(typeBearer2.toHuman());
                }
            }
            sb.append(this.type);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterSpec)) {
            if (obj instanceof ForComparison) {
                ForComparison forComparison = (ForComparison) obj;
                return equals(forComparison.reg, forComparison.type, forComparison.local);
            }
            return false;
        }
        RegisterSpec registerSpec = (RegisterSpec) obj;
        return equals(registerSpec.reg, registerSpec.type, registerSpec.local);
    }

    public boolean equalsUsingSimpleType(RegisterSpec registerSpec) {
        return matchesVariable(registerSpec) && this.reg == registerSpec.reg;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public final int getBasicFrameType() {
        return this.type.getBasicFrameType();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public final int getBasicType() {
        return this.type.getBasicType();
    }

    public int getCategory() {
        return this.type.getType().getCategory();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public TypeBearer getFrameType() {
        return this.type.getFrameType();
    }

    public LocalItem getLocalItem() {
        return this.local;
    }

    public int getNextReg() {
        return this.reg + getCategory();
    }

    public int getReg() {
        return this.reg;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return this.type.getType();
    }

    public TypeBearer getTypeBearer() {
        return this.type;
    }

    public int hashCode() {
        return hashCodeOf(this.reg, this.type, this.local);
    }

    public RegisterSpec intersect(RegisterSpec registerSpec, boolean z3) {
        TypeBearer type;
        if (this == registerSpec) {
            return this;
        }
        if (registerSpec == null || this.reg != registerSpec.getReg()) {
            return null;
        }
        LocalItem localItem = this.local;
        LocalItem localItem2 = (localItem == null || !localItem.equals(registerSpec.getLocalItem())) ? null : this.local;
        boolean z4 = localItem2 == this.local;
        if ((!z3 || z4) && (type = getType()) == registerSpec.getType()) {
            if (this.type.equals(registerSpec.getTypeBearer())) {
                type = this.type;
            }
            if (type == this.type && z4) {
                return this;
            }
            int i2 = this.reg;
            return localItem2 == null ? make(i2, type) : make(i2, type, localItem2);
        }
        return null;
    }

    public boolean isCategory1() {
        return this.type.getType().isCategory1();
    }

    public boolean isCategory2() {
        return this.type.getType().isCategory2();
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public final boolean isConstant() {
        return false;
    }

    public boolean isEvenRegister() {
        return (getReg() & 1) == 0;
    }

    public boolean matchesVariable(RegisterSpec registerSpec) {
        if (registerSpec != null && this.type.getType().equals(registerSpec.type.getType())) {
            LocalItem localItem = this.local;
            LocalItem localItem2 = registerSpec.local;
            return localItem == localItem2 || (localItem != null && localItem.equals(localItem2));
        }
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return toString0(true);
    }

    public String toString() {
        return toString0(false);
    }

    public RegisterSpec withLocalItem(LocalItem localItem) {
        LocalItem localItem2 = this.local;
        return (localItem2 == localItem || (localItem2 != null && localItem2.equals(localItem))) ? this : makeLocalOptional(this.reg, this.type, localItem);
    }

    public RegisterSpec withOffset(int i2) {
        return i2 == 0 ? this : withReg(this.reg + i2);
    }

    public RegisterSpec withReg(int i2) {
        return this.reg == i2 ? this : makeLocalOptional(i2, this.type, this.local);
    }

    public RegisterSpec withSimpleType() {
        Type type;
        TypeBearer typeBearer = this.type;
        if (typeBearer instanceof Type) {
            type = (Type) typeBearer;
        } else {
            type = typeBearer.getType();
        }
        if (type.isUninitialized()) {
            type = type.getInitializedType();
        }
        return type == typeBearer ? this : makeLocalOptional(this.reg, type, this.local);
    }

    public RegisterSpec withType(TypeBearer typeBearer) {
        return makeLocalOptional(this.reg, typeBearer, this.local);
    }

    private RegisterSpec(int i2, TypeBearer typeBearer, LocalItem localItem) {
        if (i2 >= 0) {
            Objects.requireNonNull(typeBearer, "type == null");
            this.reg = i2;
            this.type = typeBearer;
            this.local = localItem;
            return;
        }
        throw new IllegalArgumentException("reg < 0");
    }

    public static RegisterSpec make(int i2, TypeBearer typeBearer, LocalItem localItem) {
        Objects.requireNonNull(localItem, "local  == null");
        return intern(i2, typeBearer, localItem);
    }

    @Override // java.lang.Comparable
    public int compareTo(RegisterSpec registerSpec) {
        int i2 = this.reg;
        int i4 = registerSpec.reg;
        if (i2 < i4) {
            return -1;
        }
        if (i2 > i4) {
            return 1;
        }
        if (this == registerSpec) {
            return 0;
        }
        int compareTo = this.type.getType().compareTo(registerSpec.type.getType());
        if (compareTo != 0) {
            return compareTo;
        }
        LocalItem localItem = this.local;
        if (localItem == null) {
            return registerSpec.local == null ? 0 : -1;
        }
        LocalItem localItem2 = registerSpec.local;
        if (localItem2 == null) {
            return 1;
        }
        return localItem.compareTo(localItem2);
    }

    public String regString() {
        return regString(this.reg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean equals(int i2, TypeBearer typeBearer, LocalItem localItem) {
        LocalItem localItem2;
        return this.reg == i2 && this.type.equals(typeBearer) && ((localItem2 = this.local) == localItem || (localItem2 != null && localItem2.equals(localItem)));
    }
}
