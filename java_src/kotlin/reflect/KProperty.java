package kotlin.reflect;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
/* compiled from: KProperty.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u000e\u000fR\u001c\u0010\u0004\u001a\u00020\u00038&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0004\u0010\u0005R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001c\u0010\f\u001a\u00020\u00038&@'X§\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u0007\u001a\u0004\b\f\u0010\u0005¨\u0006\u0010"}, d2 = {"Lkotlin/reflect/KProperty;", "V", "Lkotlin/reflect/KCallable;", "", "isConst", "()Z", "isConst$annotations", "()V", "Lkotlin/reflect/KProperty$Getter;", "getGetter", "()Lkotlin/reflect/KProperty$Getter;", "getter", "isLateinit", "isLateinit$annotations", "Accessor", "Getter", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public interface KProperty<V> extends KCallable<V> {

    /* compiled from: KProperty.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lkotlin/reflect/KProperty$Accessor;", "V", "", "Lkotlin/reflect/KProperty;", "getProperty", "()Lkotlin/reflect/KProperty;", "property", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public interface Accessor<V> {
        @NotNull
        KProperty<V> getProperty();
    }

    /* compiled from: KProperty.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isConst$annotations() {
        }

        @SinceKotlin(version = "1.1")
        public static /* synthetic */ void isLateinit$annotations() {
        }
    }

    /* compiled from: KProperty.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/KProperty$Getter;", "V", "Lkotlin/reflect/KProperty$Accessor;", "Lkotlin/reflect/KFunction;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public interface Getter<V> extends Accessor<V>, KFunction<V> {
    }

    @NotNull
    Getter<V> getGetter();

    boolean isConst();

    boolean isLateinit();
}
