package kotlinx.coroutines.internal;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.MainDispatcherFactory;
import kotlinx.coroutines.m2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MainDispatchers.kt */
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0016R\u0016\u0010\t\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/internal/a0;", "Lkotlinx/coroutines/internal/MainDispatcherFactory;", "", "allFactories", "Lkotlinx/coroutines/m2;", "createDispatcher", "", "getLoadPriority", "()I", "loadPriority", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a0 implements MainDispatcherFactory {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f72160a = new a0();

    private a0() {
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    @NotNull
    public m2 createDispatcher(@NotNull List<? extends MainDispatcherFactory> list) {
        return new z(null, null, 2, null);
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public int getLoadPriority() {
        return -1;
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    @Nullable
    public String hintOnError() {
        return MainDispatcherFactory.a.a(this);
    }
}
