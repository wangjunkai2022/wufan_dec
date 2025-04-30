package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.Unsigned;
/* loaded from: classes2.dex */
public class MethodHandle implements Comparable<MethodHandle> {
    private final Dex dex;
    private final int fieldOrMethodId;
    private final MethodHandleType methodHandleType;
    private final int unused1;
    private final int unused2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.dex.MethodHandle$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$dex$MethodHandle$MethodHandleType;

        static {
            int[] iArr = new int[MethodHandleType.values().length];
            $SwitchMap$com$android$dex$MethodHandle$MethodHandleType = iArr;
            try {
                iArr[MethodHandleType.METHOD_HANDLE_TYPE_STATIC_PUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$dex$MethodHandle$MethodHandleType[MethodHandleType.METHOD_HANDLE_TYPE_STATIC_GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$dex$MethodHandle$MethodHandleType[MethodHandleType.METHOD_HANDLE_TYPE_INSTANCE_PUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$dex$MethodHandle$MethodHandleType[MethodHandleType.METHOD_HANDLE_TYPE_INSTANCE_GET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum MethodHandleType {
        METHOD_HANDLE_TYPE_STATIC_PUT(0),
        METHOD_HANDLE_TYPE_STATIC_GET(1),
        METHOD_HANDLE_TYPE_INSTANCE_PUT(2),
        METHOD_HANDLE_TYPE_INSTANCE_GET(3),
        METHOD_HANDLE_TYPE_INVOKE_STATIC(4),
        METHOD_HANDLE_TYPE_INVOKE_INSTANCE(5),
        METHOD_HANDLE_TYPE_INVOKE_DIRECT(6),
        METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR(7),
        METHOD_HANDLE_TYPE_INVOKE_INTERFACE(8);
        
        private final int value;

        MethodHandleType(int i2) {
            this.value = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static MethodHandleType fromValue(int i2) {
            MethodHandleType[] values;
            for (MethodHandleType methodHandleType : values()) {
                if (methodHandleType.value == i2) {
                    return methodHandleType;
                }
            }
            throw new IllegalArgumentException(String.valueOf(i2));
        }

        public boolean isField() {
            int i2 = AnonymousClass1.$SwitchMap$com$android$dex$MethodHandle$MethodHandleType[ordinal()];
            return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4;
        }
    }

    public MethodHandle(Dex dex, MethodHandleType methodHandleType, int i2, int i4, int i5) {
        this.dex = dex;
        this.methodHandleType = methodHandleType;
        this.unused1 = i2;
        this.fieldOrMethodId = i4;
        this.unused2 = i5;
    }

    public int getFieldOrMethodId() {
        return this.fieldOrMethodId;
    }

    public MethodHandleType getMethodHandleType() {
        return this.methodHandleType;
    }

    public int getUnused1() {
        return this.unused1;
    }

    public int getUnused2() {
        return this.unused2;
    }

    public String toString() {
        MethodId methodId;
        if (this.dex == null) {
            return this.methodHandleType + " " + this.fieldOrMethodId;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.methodHandleType);
        sb.append(" ");
        if (this.methodHandleType.isField()) {
            methodId = this.dex.fieldIds().get(this.fieldOrMethodId);
        } else {
            methodId = this.dex.methodIds().get(this.fieldOrMethodId);
        }
        sb.append(methodId);
        return sb.toString();
    }

    public void writeTo(Dex.Section section) {
        section.writeUnsignedShort(this.methodHandleType.value);
        section.writeUnsignedShort(this.unused1);
        section.writeUnsignedShort(this.fieldOrMethodId);
        section.writeUnsignedShort(this.unused2);
    }

    @Override // java.lang.Comparable
    public int compareTo(MethodHandle methodHandle) {
        MethodHandleType methodHandleType = this.methodHandleType;
        MethodHandleType methodHandleType2 = methodHandle.methodHandleType;
        if (methodHandleType != methodHandleType2) {
            return methodHandleType.compareTo(methodHandleType2);
        }
        return Unsigned.compare(this.fieldOrMethodId, methodHandle.fieldOrMethodId);
    }
}
