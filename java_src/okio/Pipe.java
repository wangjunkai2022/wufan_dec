package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Pipe.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b.\u0010/J&\u0010\u0007\u001a\u00020\u0004*\u00020\u00022\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\b\u0005H\u0082\bJ\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002J\u000f\u0010\b\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u0010\u001a\u00020\u0004R\"\u0010\u0012\u001a\u00020\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0018\u001a\u00020\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001c\u0010\u001c\u001a\u00020\u001b8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\b\u001a\u00020\u00028G@\u0006¢\u0006\f\n\u0004\b\b\u0010 \u001a\u0004\b\b\u0010\u000bR$\u0010!\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010 \u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010$R\"\u0010%\u001a\u00020\u00118\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0013\u001a\u0004\b&\u0010\u0015\"\u0004\b'\u0010\u0017R\u0019\u0010\u000f\u001a\u00020\f8G@\u0006¢\u0006\f\n\u0004\b\u000f\u0010(\u001a\u0004\b\u000f\u0010\u000eR\u001c\u0010*\u001a\u00020)8\u0000@\u0000X\u0080\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-¨\u00060"}, d2 = {"Lokio/Pipe;", "", "Lokio/Sink;", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "block", "forward", "sink", "fold", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "cancel", "", "sinkClosed", "Z", "getSinkClosed$okio", "()Z", "setSinkClosed$okio", "(Z)V", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "Lokio/Sink;", "foldedSink", "getFoldedSink$okio", "setFoldedSink$okio", "(Lokio/Sink;)V", "canceled", "getCanceled$okio", "setCanceled$okio", "Lokio/Source;", "", "maxBufferSize", "J", "getMaxBufferSize$okio", "()J", "<init>", "(J)V", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class Pipe {
    @NotNull
    private final Buffer buffer = new Buffer();
    private boolean canceled;
    @Nullable
    private Sink foldedSink;
    private final long maxBufferSize;
    @NotNull
    private final Sink sink;
    private boolean sinkClosed;
    @NotNull
    private final Source source;
    private boolean sourceClosed;

    public Pipe(long j4) {
        this.maxBufferSize = j4;
        if (j4 >= 1) {
            this.sink = new Sink() { // from class: okio.Pipe$sink$1
                private final Timeout timeout = new Timeout();

                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    synchronized (Pipe.this.getBuffer$okio()) {
                        if (Pipe.this.getSinkClosed$okio()) {
                            return;
                        }
                        Sink foldedSink$okio = Pipe.this.getFoldedSink$okio();
                        if (foldedSink$okio == null) {
                            if (Pipe.this.getSourceClosed$okio() && Pipe.this.getBuffer$okio().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            Pipe.this.setSinkClosed$okio(true);
                            Buffer buffer$okio = Pipe.this.getBuffer$okio();
                            if (buffer$okio == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                            buffer$okio.notifyAll();
                            foldedSink$okio = null;
                        }
                        Unit unit = Unit.INSTANCE;
                        if (foldedSink$okio != null) {
                            Pipe pipe = Pipe.this;
                            Timeout timeout = foldedSink$okio.timeout();
                            Timeout timeout2 = pipe.sink().timeout();
                            long timeoutNanos = timeout.timeoutNanos();
                            long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                            timeout.timeout(minTimeout, timeUnit);
                            if (timeout.hasDeadline()) {
                                long deadlineNanoTime = timeout.deadlineNanoTime();
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                                }
                                try {
                                    foldedSink$okio.close();
                                    timeout.timeout(timeoutNanos, timeUnit);
                                    if (timeout2.hasDeadline()) {
                                        timeout.deadlineNanoTime(deadlineNanoTime);
                                        return;
                                    }
                                    return;
                                } catch (Throwable th) {
                                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.hasDeadline()) {
                                        timeout.deadlineNanoTime(deadlineNanoTime);
                                    }
                                    throw th;
                                }
                            }
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                            }
                            try {
                                foldedSink$okio.close();
                                timeout.timeout(timeoutNanos, timeUnit);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                            } catch (Throwable th2) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                                throw th2;
                            }
                        }
                    }
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    Sink foldedSink$okio;
                    synchronized (Pipe.this.getBuffer$okio()) {
                        if (!Pipe.this.getSinkClosed$okio()) {
                            if (!Pipe.this.getCanceled$okio()) {
                                foldedSink$okio = Pipe.this.getFoldedSink$okio();
                                if (foldedSink$okio == null) {
                                    if (Pipe.this.getSourceClosed$okio() && Pipe.this.getBuffer$okio().size() > 0) {
                                        throw new IOException("source is closed");
                                    }
                                    foldedSink$okio = null;
                                }
                                Unit unit = Unit.INSTANCE;
                            } else {
                                throw new IOException("canceled");
                            }
                        } else {
                            throw new IllegalStateException("closed".toString());
                        }
                    }
                    if (foldedSink$okio != null) {
                        Pipe pipe = Pipe.this;
                        Timeout timeout = foldedSink$okio.timeout();
                        Timeout timeout2 = pipe.sink().timeout();
                        long timeoutNanos = timeout.timeoutNanos();
                        long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        timeout.timeout(minTimeout, timeUnit);
                        if (timeout.hasDeadline()) {
                            long deadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink$okio.flush();
                                timeout.timeout(timeoutNanos, timeUnit);
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                                throw th;
                            }
                        }
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                        }
                        try {
                            foldedSink$okio.flush();
                            timeout.timeout(timeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.clearDeadline();
                            }
                        } catch (Throwable th2) {
                            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.clearDeadline();
                            }
                            throw th2;
                        }
                    }
                }

                @Override // okio.Sink
                @NotNull
                public Timeout timeout() {
                    return this.timeout;
                }

                /* JADX WARN: Code restructure failed: missing block: B:30:0x0091, code lost:
                    r1 = kotlin.Unit.INSTANCE;
                 */
                @Override // okio.Sink
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void write(@org.jetbrains.annotations.NotNull okio.Buffer r13, long r14) {
                    /*
                        Method dump skipped, instructions count: 321
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.Pipe$sink$1.write(okio.Buffer, long):void");
                }
            };
            this.source = new Source() { // from class: okio.Pipe$source$1
                private final Timeout timeout = new Timeout();

                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    synchronized (Pipe.this.getBuffer$okio()) {
                        Pipe.this.setSourceClosed$okio(true);
                        Buffer buffer$okio = Pipe.this.getBuffer$okio();
                        if (buffer$okio != null) {
                            buffer$okio.notifyAll();
                            Unit unit = Unit.INSTANCE;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                        }
                    }
                }

                @Override // okio.Source
                public long read(@NotNull Buffer sink, long j5) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    synchronized (Pipe.this.getBuffer$okio()) {
                        if (!Pipe.this.getSourceClosed$okio()) {
                            if (!Pipe.this.getCanceled$okio()) {
                                while (Pipe.this.getBuffer$okio().size() == 0) {
                                    if (Pipe.this.getSinkClosed$okio()) {
                                        return -1L;
                                    }
                                    this.timeout.waitUntilNotified(Pipe.this.getBuffer$okio());
                                    if (Pipe.this.getCanceled$okio()) {
                                        throw new IOException("canceled");
                                    }
                                }
                                long read = Pipe.this.getBuffer$okio().read(sink, j5);
                                Buffer buffer$okio = Pipe.this.getBuffer$okio();
                                if (buffer$okio != null) {
                                    buffer$okio.notifyAll();
                                    return read;
                                }
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                            throw new IOException("canceled");
                        }
                        throw new IllegalStateException("closed".toString());
                    }
                }

                @Override // okio.Source
                @NotNull
                public Timeout timeout() {
                    return this.timeout;
                }
            };
            return;
        }
        throw new IllegalArgumentException(("maxBufferSize < 1: " + j4).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void forward(Sink sink, Function1<? super Sink, Unit> function1) {
        Timeout timeout = sink.timeout();
        Timeout timeout2 = sink().timeout();
        long timeoutNanos = timeout.timeoutNanos();
        long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout.timeout(minTimeout, timeUnit);
        if (timeout.hasDeadline()) {
            long deadlineNanoTime = timeout.deadlineNanoTime();
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
            }
            try {
                function1.invoke(sink);
                InlineMarker.finallyStart(1);
                timeout.timeout(timeoutNanos, timeUnit);
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                return;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        if (timeout2.hasDeadline()) {
            timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
        }
        try {
            function1.invoke(sink);
            InlineMarker.finallyStart(1);
            timeout.timeout(timeoutNanos, timeUnit);
            if (timeout2.hasDeadline()) {
                timeout.clearDeadline();
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.hasDeadline()) {
                timeout.clearDeadline();
            }
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "sink", imports = {}))
    @JvmName(name = "-deprecated_sink")
    @NotNull
    /* renamed from: -deprecated_sink  reason: not valid java name */
    public final Sink m1429deprecated_sink() {
        return this.sink;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "source", imports = {}))
    @JvmName(name = "-deprecated_source")
    @NotNull
    /* renamed from: -deprecated_source  reason: not valid java name */
    public final Source m1430deprecated_source() {
        return this.source;
    }

    public final void cancel() {
        synchronized (this.buffer) {
            this.canceled = true;
            this.buffer.clear();
            Buffer buffer = this.buffer;
            if (buffer != null) {
                buffer.notifyAll();
                Unit unit = Unit.INSTANCE;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
            }
        }
    }

    public final void fold(@NotNull Sink sink) throws IOException {
        boolean z3;
        Buffer buffer;
        Intrinsics.checkNotNullParameter(sink, "sink");
        while (true) {
            synchronized (this.buffer) {
                if (this.foldedSink == null) {
                    if (!this.canceled) {
                        if (this.buffer.exhausted()) {
                            this.sourceClosed = true;
                            this.foldedSink = sink;
                            return;
                        }
                        z3 = this.sinkClosed;
                        buffer = new Buffer();
                        Buffer buffer2 = this.buffer;
                        buffer.write(buffer2, buffer2.size());
                        Buffer buffer3 = this.buffer;
                        if (buffer3 != null) {
                            buffer3.notifyAll();
                            Unit unit = Unit.INSTANCE;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                        }
                    } else {
                        this.foldedSink = sink;
                        throw new IOException("canceled");
                    }
                } else {
                    throw new IllegalStateException("sink already folded".toString());
                }
            }
            try {
                sink.write(buffer, buffer.size());
                if (z3) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th) {
                synchronized (this.buffer) {
                    this.sourceClosed = true;
                    Buffer buffer4 = this.buffer;
                    if (buffer4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                    }
                    buffer4.notifyAll();
                    Unit unit2 = Unit.INSTANCE;
                    throw th;
                }
            }
        }
    }

    @NotNull
    public final Buffer getBuffer$okio() {
        return this.buffer;
    }

    public final boolean getCanceled$okio() {
        return this.canceled;
    }

    @Nullable
    public final Sink getFoldedSink$okio() {
        return this.foldedSink;
    }

    public final long getMaxBufferSize$okio() {
        return this.maxBufferSize;
    }

    public final boolean getSinkClosed$okio() {
        return this.sinkClosed;
    }

    public final boolean getSourceClosed$okio() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z3) {
        this.canceled = z3;
    }

    public final void setFoldedSink$okio(@Nullable Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z3) {
        this.sinkClosed = z3;
    }

    public final void setSourceClosed$okio(boolean z3) {
        this.sourceClosed = z3;
    }

    @JvmName(name = "sink")
    @NotNull
    public final Sink sink() {
        return this.sink;
    }

    @JvmName(name = "source")
    @NotNull
    public final Source source() {
        return this.source;
    }
}
