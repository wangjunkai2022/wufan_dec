package com.squareup.wire;

import java.io.Closeable;
import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: MessageSink.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u0000*\n\b\u0000\u0010\u0002 \u0000*\u00020\u00012\u00020\u0003J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\u0005H&¨\u0006\t"}, d2 = {"Lcom/squareup/wire/h;", "", "T", "Ljava/io/Closeable;", "message", "", "write", "(Ljava/lang/Object;)V", "cancel", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public interface h<T> extends Closeable {
    void cancel() throws IOException;

    void write(@NotNull T t3) throws IOException;
}
