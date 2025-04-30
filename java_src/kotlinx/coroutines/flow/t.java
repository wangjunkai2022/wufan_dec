package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.ExperimentalTime;
import kotlinx.coroutines.flow.s;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharingStarted.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a-\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/flow/s$a;", "Lkotlin/time/Duration;", "stopTimeout", "replayExpiration", "Lkotlinx/coroutines/flow/s;", "a", "(Lkotlinx/coroutines/flow/s$a;JJ)Lkotlinx/coroutines/flow/s;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class t {
    @ExperimentalTime
    @NotNull
    public static final s a(@NotNull s.a aVar, long j4, long j5) {
        return new StartedWhileSubscribed(Duration.m1338getInWholeMillisecondsimpl(j4), Duration.m1338getInWholeMillisecondsimpl(j5));
    }

    public static /* synthetic */ s b(s.a aVar, long j4, long j5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = Duration.Companion.m1381getZEROUwyO8pc();
        }
        if ((i2 & 2) != 0) {
            j5 = Duration.Companion.m1379getINFINITEUwyO8pc();
        }
        return a(aVar, j4, j5);
    }
}
