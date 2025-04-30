.class public final Lio/netty/handler/codec/rtsp/RtspHeaderValues;
.super Ljava/lang/Object;
.source "RtspHeaderValues.java"


# static fields
.field public static final APPEND:Lio/netty/util/AsciiString;

.field public static final AVP:Lio/netty/util/AsciiString;

.field public static final BYTES:Lio/netty/util/AsciiString;

.field public static final CHARSET:Lio/netty/util/AsciiString;

.field public static final CLIENT_PORT:Lio/netty/util/AsciiString;

.field public static final CLOCK:Lio/netty/util/AsciiString;

.field public static final CLOSE:Lio/netty/util/AsciiString;

.field public static final COMPRESS:Lio/netty/util/AsciiString;

.field public static final CONTINUE:Lio/netty/util/AsciiString;

.field public static final DEFLATE:Lio/netty/util/AsciiString;

.field public static final DESTINATION:Lio/netty/util/AsciiString;

.field public static final GZIP:Lio/netty/util/AsciiString;

.field public static final IDENTITY:Lio/netty/util/AsciiString;

.field public static final INTERLEAVED:Lio/netty/util/AsciiString;

.field public static final KEEP_ALIVE:Lio/netty/util/AsciiString;

.field public static final LAYERS:Lio/netty/util/AsciiString;

.field public static final MAX_AGE:Lio/netty/util/AsciiString;

.field public static final MAX_STALE:Lio/netty/util/AsciiString;

.field public static final MIN_FRESH:Lio/netty/util/AsciiString;

.field public static final MODE:Lio/netty/util/AsciiString;

.field public static final MULTICAST:Lio/netty/util/AsciiString;

.field public static final MUST_REVALIDATE:Lio/netty/util/AsciiString;

.field public static final NONE:Lio/netty/util/AsciiString;

.field public static final NO_CACHE:Lio/netty/util/AsciiString;

.field public static final NO_TRANSFORM:Lio/netty/util/AsciiString;

.field public static final ONLY_IF_CACHED:Lio/netty/util/AsciiString;

.field public static final PORT:Lio/netty/util/AsciiString;

.field public static final PRIVATE:Lio/netty/util/AsciiString;

.field public static final PROXY_REVALIDATE:Lio/netty/util/AsciiString;

.field public static final PUBLIC:Lio/netty/util/AsciiString;

.field public static final RTP:Lio/netty/util/AsciiString;

.field public static final RTPTIME:Lio/netty/util/AsciiString;

.field public static final SEQ:Lio/netty/util/AsciiString;

.field public static final SERVER_PORT:Lio/netty/util/AsciiString;

.field public static final SSRC:Lio/netty/util/AsciiString;

.field public static final TCP:Lio/netty/util/AsciiString;

.field public static final TIME:Lio/netty/util/AsciiString;

.field public static final TIMEOUT:Lio/netty/util/AsciiString;

.field public static final TTL:Lio/netty/util/AsciiString;

.field public static final UDP:Lio/netty/util/AsciiString;

.field public static final UNICAST:Lio/netty/util/AsciiString;

.field public static final URL:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "append"

    .line 1
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->APPEND:Lio/netty/util/AsciiString;

    const-string v0, "AVP"

    .line 2
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->AVP:Lio/netty/util/AsciiString;

    .line 3
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->BYTES:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->BYTES:Lio/netty/util/AsciiString;

    .line 4
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    const-string v0, "client_port"

    .line 5
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->CLIENT_PORT:Lio/netty/util/AsciiString;

    const-string v0, "clock"

    .line 6
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->CLOCK:Lio/netty/util/AsciiString;

    .line 7
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->CLOSE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->CLOSE:Lio/netty/util/AsciiString;

    .line 8
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->COMPRESS:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->COMPRESS:Lio/netty/util/AsciiString;

    .line 9
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->CONTINUE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->CONTINUE:Lio/netty/util/AsciiString;

    .line 10
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->DEFLATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->DEFLATE:Lio/netty/util/AsciiString;

    const-string v0, "destination"

    .line 11
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->DESTINATION:Lio/netty/util/AsciiString;

    .line 12
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->GZIP:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->GZIP:Lio/netty/util/AsciiString;

    .line 13
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->IDENTITY:Lio/netty/util/AsciiString;

    const-string v0, "interleaved"

    .line 14
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->INTERLEAVED:Lio/netty/util/AsciiString;

    .line 15
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    const-string v0, "layers"

    .line 16
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->LAYERS:Lio/netty/util/AsciiString;

    .line 17
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->MAX_AGE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->MAX_AGE:Lio/netty/util/AsciiString;

    .line 18
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->MAX_STALE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->MAX_STALE:Lio/netty/util/AsciiString;

    .line 19
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->MIN_FRESH:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->MIN_FRESH:Lio/netty/util/AsciiString;

    const-string v0, "mode"

    .line 20
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->MODE:Lio/netty/util/AsciiString;

    const-string v0, "multicast"

    .line 21
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->MULTICAST:Lio/netty/util/AsciiString;

    .line 22
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->MUST_REVALIDATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->MUST_REVALIDATE:Lio/netty/util/AsciiString;

    .line 23
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->NONE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->NONE:Lio/netty/util/AsciiString;

    .line 24
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->NO_CACHE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->NO_CACHE:Lio/netty/util/AsciiString;

    .line 25
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->NO_TRANSFORM:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->NO_TRANSFORM:Lio/netty/util/AsciiString;

    .line 26
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->ONLY_IF_CACHED:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->ONLY_IF_CACHED:Lio/netty/util/AsciiString;

    const-string v0, "port"

    .line 27
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->PORT:Lio/netty/util/AsciiString;

    .line 28
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->PRIVATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->PRIVATE:Lio/netty/util/AsciiString;

    .line 29
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->PROXY_REVALIDATE:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->PROXY_REVALIDATE:Lio/netty/util/AsciiString;

    .line 30
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderValues;->PUBLIC:Lio/netty/util/AsciiString;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->PUBLIC:Lio/netty/util/AsciiString;

    const-string v0, "RTP"

    .line 31
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->RTP:Lio/netty/util/AsciiString;

    const-string v0, "rtptime"

    .line 32
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->RTPTIME:Lio/netty/util/AsciiString;

    const-string v0, "seq"

    .line 33
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->SEQ:Lio/netty/util/AsciiString;

    const-string v0, "server_port"

    .line 34
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->SERVER_PORT:Lio/netty/util/AsciiString;

    const-string v0, "ssrc"

    .line 35
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->SSRC:Lio/netty/util/AsciiString;

    const-string v0, "TCP"

    .line 36
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->TCP:Lio/netty/util/AsciiString;

    const-string v0, "time"

    .line 37
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->TIME:Lio/netty/util/AsciiString;

    const-string v0, "timeout"

    .line 38
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->TIMEOUT:Lio/netty/util/AsciiString;

    const-string v0, "ttl"

    .line 39
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->TTL:Lio/netty/util/AsciiString;

    const-string v0, "UDP"

    .line 40
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->UDP:Lio/netty/util/AsciiString;

    const-string v0, "unicast"

    .line 41
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->UNICAST:Lio/netty/util/AsciiString;

    const-string v0, "url"

    .line 42
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspHeaderValues;->URL:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
