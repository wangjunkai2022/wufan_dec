package kotlin.reflect;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KParameter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001:\u0001\u0018R\u0016\u0010\u0005\u001a\u00020\u00028&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0007\u001a\u00020\u00068&@'X§\u0004¢\u0006\f\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u000e\u001a\u00020\u000b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00068&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\b¨\u0006\u0019"}, d2 = {"Lkotlin/reflect/KParameter;", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/reflect/KParameter$Kind;", "getKind", "()Lkotlin/reflect/KParameter$Kind;", "kind", "", "isVararg", "()Z", "isVararg$annotations", "()V", "", "getIndex", "()I", "index", "", "getName", "()Ljava/lang/String;", "name", "Lkotlin/reflect/KType;", "getType", "()Lkotlin/reflect/KType;", "type", "isOptional", "Kind", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface KParameter extends KAnnotatedElement {

    /* compiled from: KParameter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isVararg$annotations() {
        }
    }

    /* compiled from: KParameter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KParameter$Kind;", "", "<init>", "(Ljava/lang/String;I)V", "INSTANCE", "EXTENSION_RECEIVER", "VALUE", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public enum Kind {
        INSTANCE,
        EXTENSION_RECEIVER,
        VALUE
    }

    int getIndex();

    @NotNull
    Kind getKind();

    @Nullable
    String getName();

    @NotNull
    KType getType();

    boolean isOptional();

    boolean isVararg();
}
