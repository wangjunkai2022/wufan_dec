package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;
/* compiled from: BroadcastChannel.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¨\u0006\u0005"}, d2 = {"E", "", "capacity", "Lkotlinx/coroutines/channels/h;", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class i {
    @ObsoleteCoroutinesApi
    @NotNull
    public static final <E> h<E> a(int i2) {
        if (i2 != -2) {
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != Integer.MAX_VALUE) {
                        return new f(i2);
                    }
                    throw new IllegalArgumentException("Unsupported UNLIMITED capacity for BroadcastChannel");
                }
                throw new IllegalArgumentException("Unsupported 0 capacity for BroadcastChannel");
            }
            return new q();
        }
        return new f(k.R.a());
    }
}
