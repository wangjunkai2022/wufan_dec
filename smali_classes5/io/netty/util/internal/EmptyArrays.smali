.class public final Lio/netty/util/internal/EmptyArrays;
.super Ljava/lang/Object;
.source "EmptyArrays.java"


# static fields
.field public static final EMPTY_ASCII_STRINGS:[Lio/netty/util/AsciiString;

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

.field public static final EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

.field public static final EMPTY_CHARS:[C

.field public static final EMPTY_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_INTS:[I

.field public static final EMPTY_JAVAX_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

.field public static final EMPTY_OBJECTS:[Ljava/lang/Object;

.field public static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_INTS:[I

    new-array v1, v0, [B

    .line 2
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    new-array v1, v0, [C

    .line 3
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_CHARS:[C

    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_CLASSES:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/String;

    .line 6
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    new-array v1, v0, [Lio/netty/util/AsciiString;

    .line 7
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_ASCII_STRINGS:[Lio/netty/util/AsciiString;

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    .line 8
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 9
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

    new-array v1, v0, [Ljava/security/cert/Certificate;

    .line 10
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    .line 11
    sput-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_X509_CERTIFICATES:[Ljava/security/cert/X509Certificate;

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    .line 12
    sput-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_JAVAX_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
