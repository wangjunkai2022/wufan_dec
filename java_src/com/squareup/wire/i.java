package com.squareup.wire;

import java.io.Closeable;
import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: MessageSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\n\b\u0000\u0010\u0002 \u0001*\u00020\u00012\u00020\u0003J\u0011\u0010\u0004\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/squareup/wire/i;", "", "T", "Ljava/io/Closeable;", "read", "()Ljava/lang/Object;", "wire-runtime"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public interface i<T> extends Closeable {
    @Nullable
    T read() throws IOException;
}
