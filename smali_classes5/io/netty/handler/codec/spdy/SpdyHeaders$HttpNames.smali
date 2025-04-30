.class public final Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;
.super Ljava/lang/Object;
.source "SpdyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpNames"
.end annotation


# static fields
.field public static final HOST:Lio/netty/util/AsciiString;

.field public static final METHOD:Lio/netty/util/AsciiString;

.field public static final PATH:Lio/netty/util/AsciiString;

.field public static final SCHEME:Lio/netty/util/AsciiString;

.field public static final STATUS:Lio/netty/util/AsciiString;

.field public static final VERSION:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":host"

    .line 1
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->HOST:Lio/netty/util/AsciiString;

    const-string v0, ":method"

    .line 2
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->METHOD:Lio/netty/util/AsciiString;

    const-string v0, ":path"

    .line 3
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->PATH:Lio/netty/util/AsciiString;

    const-string v0, ":scheme"

    .line 4
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->SCHEME:Lio/netty/util/AsciiString;

    const-string v0, ":status"

    .line 5
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->STATUS:Lio/netty/util/AsciiString;

    const-string v0, ":version"

    .line 6
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaders$HttpNames;->VERSION:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
