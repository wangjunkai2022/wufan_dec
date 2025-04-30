package io.reactivex.exceptions;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.util.ExceptionHelper;
/* compiled from: Exceptions.java */
/* loaded from: classes5.dex */
public final class a {
    private a() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    public static RuntimeException a(@NonNull Throwable th) {
        throw ExceptionHelper.e(th);
    }

    public static void b(@NonNull Throwable th) {
        if (!(th instanceof VirtualMachineError)) {
            if (!(th instanceof ThreadDeath)) {
                if (th instanceof LinkageError) {
                    throw ((LinkageError) th);
                }
                return;
            }
            throw ((ThreadDeath) th);
        }
        throw ((VirtualMachineError) th);
    }
}
