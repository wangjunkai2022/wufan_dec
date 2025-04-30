package kotlin.contracts;

import kotlin.Function;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.ContractsDsl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContractBuilder.kt */
@SinceKotlin(version = "1.3")
@ContractsDsl
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H'J\u0012\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H'J\b\u0010\u0006\u001a\u00020\u0005H'J&\u0010\r\u001a\u00020\f\"\u0004\b\u0000\u0010\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b2\b\b\u0002\u0010\u000b\u001a\u00020\nH'¨\u0006\u000e"}, d2 = {"Lkotlin/contracts/ContractBuilder;", "", "Lkotlin/contracts/Returns;", "returns", "value", "Lkotlin/contracts/ReturnsNotNull;", "returnsNotNull", "R", "Lkotlin/Function;", "lambda", "Lkotlin/contracts/InvocationKind;", "kind", "Lkotlin/contracts/CallsInPlace;", "callsInPlace", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalContracts
/* loaded from: classes5.dex */
public interface ContractBuilder {

    /* compiled from: ContractBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ CallsInPlace callsInPlace$default(ContractBuilder contractBuilder, Function function, InvocationKind invocationKind, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 2) != 0) {
                    invocationKind = InvocationKind.UNKNOWN;
                }
                return contractBuilder.callsInPlace(function, invocationKind);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: callsInPlace");
        }
    }

    @ContractsDsl
    @NotNull
    <R> CallsInPlace callsInPlace(@NotNull Function<? extends R> function, @NotNull InvocationKind invocationKind);

    @ContractsDsl
    @NotNull
    Returns returns();

    @ContractsDsl
    @NotNull
    Returns returns(@Nullable Object obj);

    @ContractsDsl
    @NotNull
    ReturnsNotNull returnsNotNull();
}
