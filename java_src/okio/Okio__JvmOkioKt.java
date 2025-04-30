package okio;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
/* compiled from: JvmOkio.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0006\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0006\u001a\u0016\u0010\u0002\u001a\u00020\u0001*\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\bH\u0007\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0007\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0007\u001a'\u0010\u0002\u001a\u00020\u0001*\u00020\u000b2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0007¢\u0006\u0004\b\u0002\u0010\u000f\u001a'\u0010\u0005\u001a\u00020\u0004*\u00020\u000b2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\f\"\u00020\rH\u0007¢\u0006\u0004\b\u0005\u0010\u0010\"$\u0010\u0013\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118\u0002@\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u001e\u0010\u0019\u001a\u00020\b*\u00060\u0017j\u0002`\u00188@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Ljava/io/OutputStream;", "Lokio/Sink;", "sink", "Ljava/io/InputStream;", "Lokio/Source;", "source", "Ljava/net/Socket;", "Ljava/io/File;", "", RtspHeaders.Values.APPEND, "appendingSink", "Ljava/nio/file/Path;", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "getLogger$Okio__JvmOkioKt", "()Ljava/util/logging/Logger;", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "isAndroidGetsocknameError", "(Ljava/lang/AssertionError;)Z", "okio"}, k = 5, mv = {1, 4, 0}, xs = "okio/Okio")
/* loaded from: classes5.dex */
public final /* synthetic */ class Okio__JvmOkioKt {
    private static final Logger logger = Logger.getLogger("okio.Okio");

    @NotNull
    public static final Sink appendingSink(@NotNull File appendingSink) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(appendingSink, "$this$appendingSink");
        return Okio.sink(new FileOutputStream(appendingSink, true));
    }

    public static final boolean isAndroidGetsocknameError(@NotNull AssertionError isAndroidGetsocknameError) {
        Intrinsics.checkNotNullParameter(isAndroidGetsocknameError, "$this$isAndroidGetsocknameError");
        if (isAndroidGetsocknameError.getCause() != null) {
            String message = isAndroidGetsocknameError.getMessage();
            return message != null ? StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null) : false;
        }
        return false;
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file) throws FileNotFoundException {
        return sink$default(file, false, 1, null);
    }

    @NotNull
    public static final Sink sink(@NotNull OutputStream sink) {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        return new OutputStreamSink(sink, new Timeout());
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z3, int i2, Object obj) throws FileNotFoundException {
        if ((i2 & 1) != 0) {
            z3 = false;
        }
        return Okio.sink(file, z3);
    }

    @NotNull
    public static final Source source(@NotNull InputStream source) {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        return new InputStreamSource(source, new Timeout());
    }

    @NotNull
    public static final Sink sink(@NotNull Socket sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(sink);
        OutputStream outputStream = sink.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new OutputStreamSink(outputStream, socketAsyncTimeout));
    }

    @NotNull
    public static final Source source(@NotNull Socket source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(source);
        InputStream inputStream = source.getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new InputStreamSource(inputStream, socketAsyncTimeout));
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File sink, boolean z3) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        return Okio.sink(new FileOutputStream(sink, z3));
    }

    @NotNull
    public static final Source source(@NotNull File source) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        return Okio.source(new FileInputStream(source));
    }

    @IgnoreJRERequirement
    @NotNull
    public static final Sink sink(@NotNull Path sink, @NotNull OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "$this$sink");
        Intrinsics.checkNotNullParameter(options, "options");
        OutputStream newOutputStream = Files.newOutputStream(sink, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(newOutputStream, "Files.newOutputStream(this, *options)");
        return Okio.sink(newOutputStream);
    }

    @IgnoreJRERequirement
    @NotNull
    public static final Source source(@NotNull Path source, @NotNull OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(source, "$this$source");
        Intrinsics.checkNotNullParameter(options, "options");
        InputStream newInputStream = Files.newInputStream(source, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(newInputStream, "Files.newInputStream(this, *options)");
        return Okio.source(newInputStream);
    }
}
