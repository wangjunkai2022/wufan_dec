package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebugMetadata.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0001¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u0000H\u0002\u001a\f\u0010\b\u001a\u00020\u0007*\u00020\u0000H\u0002\u001a\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u001b\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r*\u00020\u0000H\u0001¢\u0006\u0004\b\u000f\u0010\u0010\"\u0016\u0010\u0011\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/StackTraceElement;", "getStackTraceElementImpl", "Lkotlin/coroutines/jvm/internal/DebugMetadata;", "getDebugMetadataAnnotation", "", "getLabel", "expected", "actual", "", "checkDebugMetadataVersion", "", "", "getSpilledVariableFieldMapping", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;", "COROUTINES_DEBUG_METADATA_VERSION", "I", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class DebugMetadataKt {
    private static final int COROUTINES_DEBUG_METADATA_VERSION = 1;

    private static final void checkDebugMetadataVersion(int i2, int i4) {
        if (i4 <= i2) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i2 + ", got " + i4 + ". Please update the Kotlin standard library.").toString());
    }

    private static final DebugMetadata getDebugMetadataAnnotation(BaseContinuationImpl baseContinuationImpl) {
        return (DebugMetadata) baseContinuationImpl.getClass().getAnnotation(DebugMetadata.class);
    }

    private static final int getLabel(BaseContinuationImpl baseContinuationImpl) {
        try {
            Field field = baseContinuationImpl.getClass().getDeclaredField("label");
            Intrinsics.checkNotNullExpressionValue(field, "field");
            field.setAccessible(true);
            Object obj = field.get(baseContinuationImpl);
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "getSpilledVariableFieldMapping")
    @Nullable
    public static final String[] getSpilledVariableFieldMapping(@NotNull BaseContinuationImpl getSpilledVariableFieldMapping) {
        Intrinsics.checkNotNullParameter(getSpilledVariableFieldMapping, "$this$getSpilledVariableFieldMapping");
        DebugMetadata debugMetadataAnnotation = getDebugMetadataAnnotation(getSpilledVariableFieldMapping);
        if (debugMetadataAnnotation != null) {
            checkDebugMetadataVersion(1, debugMetadataAnnotation.v());
            ArrayList arrayList = new ArrayList();
            int label = getLabel(getSpilledVariableFieldMapping);
            int[] i2 = debugMetadataAnnotation.i();
            int length = i2.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (i2[i4] == label) {
                    arrayList.add(debugMetadataAnnotation.s()[i4]);
                    arrayList.add(debugMetadataAnnotation.n()[i4]);
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return (String[]) array;
        }
        return null;
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "getStackTraceElement")
    @Nullable
    public static final StackTraceElement getStackTraceElement(@NotNull BaseContinuationImpl getStackTraceElementImpl) {
        String str;
        Intrinsics.checkNotNullParameter(getStackTraceElementImpl, "$this$getStackTraceElementImpl");
        DebugMetadata debugMetadataAnnotation = getDebugMetadataAnnotation(getStackTraceElementImpl);
        if (debugMetadataAnnotation != null) {
            checkDebugMetadataVersion(1, debugMetadataAnnotation.v());
            int label = getLabel(getStackTraceElementImpl);
            int i2 = label < 0 ? -1 : debugMetadataAnnotation.l()[label];
            String moduleName = ModuleNameRetriever.INSTANCE.getModuleName(getStackTraceElementImpl);
            if (moduleName == null) {
                str = debugMetadataAnnotation.c();
            } else {
                str = moduleName + '/' + debugMetadataAnnotation.c();
            }
            return new StackTraceElement(str, debugMetadataAnnotation.m(), debugMetadataAnnotation.f(), i2);
        }
        return null;
    }
}
