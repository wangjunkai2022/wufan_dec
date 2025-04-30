.class public final Lcom/wufan/friend/chat/protocol/w1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Response.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/z1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/w1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/w1;",
        "Lcom/wufan/friend/chat/protocol/w1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/z1;"
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5

.field public static final p:I = 0x6

.field public static final q:I = 0x7

.field public static final r:I = 0x8

.field public static final s:I = 0x9

.field public static final t:I = 0xa

.field private static final u:Lcom/wufan/friend/chat/protocol/w1;

.field private static volatile v:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/w1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/wufan/friend/chat/protocol/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/w1;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/w1;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    return-void
.end method

.method private A3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    return-void
.end method

.method private B3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    return-void
.end method

.method private C3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    return-void
.end method

.method public static D3()Lcom/wufan/friend/chat/protocol/w1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    return-object v0
.end method

.method private E3(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/x1;->r3()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/x1;->y3(Lcom/wufan/friend/chat/protocol/x1;)Lcom/wufan/friend/chat/protocol/x1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    :goto_0
    return-void
.end method

.method public static F3()Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1$b;

    return-object v0
.end method

.method public static G3(Lcom/wufan/friend/chat/protocol/w1;)Lcom/wufan/friend/chat/protocol/w1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/w1$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1$b;

    return-object p0
.end method

.method public static H3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static I3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static J3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static K3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static L3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static M3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static N3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static O3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static P3([B)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method public static Q3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/w1;

    return-object p0
.end method

.method private R3(Lcom/wufan/friend/chat/protocol/x1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/w1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    return-object v0
.end method

.method private S3(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    return-void
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/w1;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/w1;->setRequestId(J)V

    return-void
.end method

.method private T3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->B3()V

    return-void
.end method

.method private U3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/w1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->Y3(I)V

    return-void
.end method

.method private V3(Lcom/wufan/friend/chat/protocol/NotificationType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ServicePath;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->X3(Lcom/wufan/friend/chat/protocol/ServicePath;)V

    return-void
.end method

.method private W3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->z3()V

    return-void
.end method

.method private X3(Lcom/wufan/friend/chat/protocol/ServicePath;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/w1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->T3(Ljava/lang/String;)V

    return-void
.end method

.method private Y3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->x3()V

    return-void
.end method

.method private Z3(Lcom/wufan/friend/chat/protocol/ResponseType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/w1;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->U3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/w1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->e4(I)V

    return-void
.end method

.method private b4(Lcom/wufan/friend/chat/protocol/ServiceName;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ResponseStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->d4(Lcom/wufan/friend/chat/protocol/ResponseStatus;)V

    return-void
.end method

.method private c4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/w1;->D3()Lcom/wufan/friend/chat/protocol/w1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    return-void
.end method

.method private clearRequestId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->C3()V

    return-void
.end method

.method private d4(Lcom/wufan/friend/chat/protocol/ResponseStatus;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->clearRequestId()V

    return-void
.end method

.method private e4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/w1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->clearMessage()V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/w1;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/w1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->W3(I)V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/NotificationType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->V3(Lcom/wufan/friend/chat/protocol/NotificationType;)V

    return-void
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->y3()V

    return-void
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->S3(Lcom/wufan/friend/chat/protocol/x1;)V

    return-void
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/x1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->R3(Lcom/wufan/friend/chat/protocol/x1$b;)V

    return-void
.end method

.method static synthetic n3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->E3(Lcom/wufan/friend/chat/protocol/x1;)V

    return-void
.end method

.method static synthetic o3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->w3()V

    return-void
.end method

.method static synthetic p3(Lcom/wufan/friend/chat/protocol/w1;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/w1;->setTimestamp(J)V

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/w1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->clearTimestamp()V

    return-void
.end method

.method static synthetic r3(Lcom/wufan/friend/chat/protocol/w1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->a4(I)V

    return-void
.end method

.method static synthetic s3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ResponseType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->Z3(Lcom/wufan/friend/chat/protocol/ResponseType;)V

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    return-void
.end method

.method private setRequestId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    return-void
.end method

.method static synthetic t3(Lcom/wufan/friend/chat/protocol/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/w1;->A3()V

    return-void
.end method

.method static synthetic u3(Lcom/wufan/friend/chat/protocol/w1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->c4(I)V

    return-void
.end method

.method static synthetic v3(Lcom/wufan/friend/chat/protocol/w1;Lcom/wufan/friend/chat/protocol/ServiceName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/w1;->b4(Lcom/wufan/friend/chat/protocol/ServiceName;)V

    return-void
.end method

.method private w3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    return-void
.end method

.method private x3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/w1;->D3()Lcom/wufan/friend/chat/protocol/w1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/w1;->H()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    return-void
.end method

.method private y3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    return-void
.end method

.method private z3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    return-void
.end method


# virtual methods
.method public A()Lcom/wufan/friend/chat/protocol/ServiceName;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ServiceName;->forNumber(I)Lcom/wufan/friend/chat/protocol/ServiceName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServiceName;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServiceName;

    :cond_0
    return-object v0
.end method

.method public A1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    return v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public L()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/wufan/friend/chat/protocol/NotificationType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/NotificationType;->forNumber(I)Lcom/wufan/friend/chat/protocol/NotificationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/NotificationType;

    :cond_0
    return-object v0
.end method

.method public c1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/w1$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/w1;->v:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/w1;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/w1;->v:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/w1;->v:Lcom/google/protobuf/Parser;

    .line 6
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/w1;->v:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 12
    :sswitch_0
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x1$b;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/x1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/x1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    goto :goto_1

    .line 17
    :sswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 18
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    goto :goto_1

    .line 19
    :sswitch_2
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    goto :goto_1

    .line 21
    :sswitch_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 22
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    goto :goto_1

    .line 23
    :sswitch_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    goto :goto_1

    .line 25
    :sswitch_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 26
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    goto :goto_1

    .line 27
    :sswitch_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 28
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    goto :goto_1

    .line 29
    :sswitch_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 30
    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    goto :goto_1

    .line 31
    :sswitch_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    goto :goto_1

    .line 32
    :sswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_3
    :sswitch_a
    const/4 v1, 0x1

    goto :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :goto_5
    throw p1

    .line 37
    :cond_4
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    return-object p1

    .line 38
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 39
    check-cast p3, Lcom/wufan/friend/chat/protocol/w1;

    .line 40
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/w1;->a:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_6

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    const/4 v7, 0x0

    :goto_7
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    .line 41
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_7

    const/4 v4, 0x1

    goto :goto_8

    :cond_7
    const/4 v4, 0x0

    :goto_8
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/w1;->b:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_8

    const/4 v7, 0x1

    goto :goto_9

    :cond_8
    const/4 v7, 0x0

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    .line 42
    iget p1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget v3, p3, Lcom/wufan/friend/chat/protocol/w1;->c:I

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    .line 43
    iget p1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget v3, p3, Lcom/wufan/friend/chat/protocol/w1;->d:I

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    .line 44
    iget p1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget v3, p3, Lcom/wufan/friend/chat/protocol/w1;->e:I

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    .line 45
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    .line 47
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    .line 48
    iget p1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget v3, p3, Lcom/wufan/friend/chat/protocol/w1;->g:I

    if-eqz v3, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    .line 49
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    .line 51
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    .line 52
    iget p1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iget v3, p3, Lcom/wufan/friend/chat/protocol/w1;->i:I

    if-eqz v3, :cond_12

    const/4 v1, 0x1

    :cond_12
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    .line 53
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/x1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    .line 54
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 55
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/w1$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/w1$b;-><init>(Lcom/wufan/friend/chat/protocol/w1$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 56
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/w1;->u:Lcom/wufan/friend/chat/protocol/w1;

    return-object p1

    .line 57
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/w1;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/w1;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x38 -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public f1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    return v0
.end method

.method public getData()Lcom/wufan/friend/chat/protocol/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/x1;->r3()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ServicePath;->forNumber(I)Lcom/wufan/friend/chat/protocol/ServicePath;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServicePath;

    :cond_0
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 3
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ResponseType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/ServiceName;->UNDEFINED_SN:Lcom/wufan/friend/chat/protocol/ServiceName;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    .line 10
    iget v2, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    .line 11
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v2, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    .line 14
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/w1;->H()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x7

    .line 18
    iget v2, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    .line 19
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 21
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/w1;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/NotificationType;->UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/NotificationType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0x9

    .line 23
    iget v2, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    .line 24
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 26
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_a
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getStatus()Lcom/wufan/friend/chat/protocol/ResponseStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->forNumber(I)Lcom/wufan/friend/chat/protocol/ResponseStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    :cond_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q0()Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ResponseType;->forNumber(I)Lcom/wufan/friend/chat/protocol/ResponseType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

    :cond_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/w1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/w1;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ResponseType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->UNDEFINED_SN:Lcom/wufan/friend/chat/protocol/ServiceName;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 8
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/w1;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/ResponseStatus;->UNKNOWN_RS:Lcom/wufan/friend/chat/protocol/ResponseStatus;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ResponseStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 14
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/w1;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/NotificationType;->UNKNOWN_NT:Lcom/wufan/friend/chat/protocol/NotificationType;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/NotificationType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 18
    iget v1, p0, Lcom/wufan/friend/chat/protocol/w1;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/w1;->j:Lcom/wufan/friend/chat/protocol/x1;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/w1;->getData()Lcom/wufan/friend/chat/protocol/x1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_9
    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/w1;->d:I

    return v0
.end method
