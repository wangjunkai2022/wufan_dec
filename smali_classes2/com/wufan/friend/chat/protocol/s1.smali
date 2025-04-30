.class public final Lcom/wufan/friend/chat/protocol/s1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Request.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/s1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/s1;",
        "Lcom/wufan/friend/chat/protocol/s1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/v1;"
    }
.end annotation


# static fields
.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7

.field private static final o:Lcom/wufan/friend/chat/protocol/s1;

.field private static volatile p:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/s1;",
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

.field private g:Lcom/wufan/friend/chat/protocol/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/s1;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/s1;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    return-void
.end method

.method public static A3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static B3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static C3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static D3([B)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static E3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method private F3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    return-void
.end method

.method private G3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    return-void
.end method

.method private H3(Lcom/wufan/friend/chat/protocol/t1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    return-void
.end method

.method private I3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    return-void
.end method

.method private J3(Lcom/wufan/friend/chat/protocol/ServicePath;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    return-void
.end method

.method private K3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    return-void
.end method

.method private L3(Lcom/wufan/friend/chat/protocol/Platform;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    return-void
.end method

.method private M3(Lcom/wufan/friend/chat/protocol/ServiceName;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    return-void
.end method

.method private N3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/s1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/s1;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/s1;->setRequestId(J)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->q3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/s1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->K3(I)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/ServicePath;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->J3(Lcom/wufan/friend/chat/protocol/ServicePath;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->p3()V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/s1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->F3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->n3()V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/s1;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->G3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->I3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/t1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->H3(Lcom/wufan/friend/chat/protocol/t1$b;)V

    return-void
.end method

.method private clearPlatform()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    return-void
.end method

.method private clearRequestId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->s3(Lcom/wufan/friend/chat/protocol/t1;)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->clearRequestId()V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->o3()V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/s1;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/s1;->setTimestamp(J)V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->clearTimestamp()V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/s1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->setPlatformValue(I)V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/Platform;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->L3(Lcom/wufan/friend/chat/protocol/Platform;)V

    return-void
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/s1;->clearPlatform()V

    return-void
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/s1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->N3(I)V

    return-void
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/s1;Lcom/wufan/friend/chat/protocol/ServiceName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/s1;->M3(Lcom/wufan/friend/chat/protocol/ServiceName;)V

    return-void
.end method

.method private n3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/s1;->r3()Lcom/wufan/friend/chat/protocol/s1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/s1;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    return-void
.end method

.method private o3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    return-void
.end method

.method private p3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/s1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private q3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    return-void
.end method

.method public static r3()Lcom/wufan/friend/chat/protocol/s1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    return-object v0
.end method

.method private s3(Lcom/wufan/friend/chat/protocol/t1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->R3()Lcom/wufan/friend/chat/protocol/t1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/t1;->d4(Lcom/wufan/friend/chat/protocol/t1;)Lcom/wufan/friend/chat/protocol/t1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    :goto_0
    return-void
.end method

.method private setPlatformValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    return-void
.end method

.method private setRequestId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    return-void
.end method

.method public static t3()Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1$b;

    return-object v0
.end method

.method public static u3(Lcom/wufan/friend/chat/protocol/s1;)Lcom/wufan/friend/chat/protocol/s1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/s1$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1$b;

    return-object p0
.end method

.method public static v3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static w3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static x3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static y3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method

.method public static z3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/s1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/s1;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/wufan/friend/chat/protocol/ServiceName;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ServiceName;->forNumber(I)Lcom/wufan/friend/chat/protocol/ServiceName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServiceName;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServiceName;

    :cond_0
    return-object v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    return v0
.end method

.method public a()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/s1$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/s1;->p:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/s1;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/s1;->p:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/s1;->p:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/s1;->p:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_c

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_b

    const/16 v3, 0x8

    if-eq p1, v3, :cond_a

    const/16 v3, 0x10

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_8

    const/16 v3, 0x20

    if-eq p1, v3, :cond_7

    const/16 v3, 0x28

    if-eq p1, v3, :cond_6

    const/16 v3, 0x32

    if-eq p1, v3, :cond_5

    const/16 v3, 0x3a

    if-eq p1, v3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1$b;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/t1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20
    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 22
    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    goto :goto_1

    .line 23
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 24
    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    goto :goto_1

    .line 25
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    goto :goto_1

    .line 26
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_b
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 27
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 28
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :goto_4
    throw p1

    .line 31
    :cond_c
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    return-object p1

    .line 32
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 33
    check-cast p3, Lcom/wufan/friend/chat/protocol/s1;

    .line 34
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/s1;->a:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :goto_6
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

    .line 35
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    :goto_7
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/s1;->b:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_10

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    :goto_8
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    .line 36
    iget p1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    :goto_9
    iget v3, p3, Lcom/wufan/friend/chat/protocol/s1;->c:I

    if-eqz v3, :cond_12

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    .line 37
    iget p1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    :goto_b
    iget v3, p3, Lcom/wufan/friend/chat/protocol/s1;->d:I

    if-eqz v3, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    .line 38
    iget p1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    :goto_d
    iget v3, p3, Lcom/wufan/friend/chat/protocol/s1;->e:I

    if-eqz v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    .line 39
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    iget-object v1, p3, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    .line 41
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/t1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    .line 43
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 44
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/s1$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/s1$b;-><init>(Lcom/wufan/friend/chat/protocol/s1$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 45
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/s1;->o:Lcom/wufan/friend/chat/protocol/s1;

    return-object p1

    .line 46
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/s1;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/s1;-><init>()V

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
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lcom/wufan/friend/chat/protocol/ServicePath;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ServicePath;->forNumber(I)Lcom/wufan/friend/chat/protocol/ServicePath;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/ServicePath;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ServicePath;

    :cond_0
    return-object v0
.end method

.method public getPlatform()Lcom/wufan/friend/chat/protocol/Platform;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/Platform;->forNumber(I)Lcom/wufan/friend/chat/protocol/Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/Platform;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/Platform;

    :cond_0
    return-object v0
.end method

.method public getPlatformValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    return v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

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
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

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
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/Platform;->UNDEFINED_PT:Lcom/wufan/friend/chat/protocol/Platform;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/Platform;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/ServiceName;->UNDEFINED_SN:Lcom/wufan/friend/chat/protocol/ServiceName;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    .line 10
    iget v2, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    .line 11
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 13
    iget v2, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    .line 14
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/s1;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 18
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/s1;->w1()Lcom/wufan/friend/chat/protocol/t1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    return-wide v0
.end method

.method public v1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w1()Lcom/wufan/friend/chat/protocol/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/t1;->R3()Lcom/wufan/friend/chat/protocol/t1;

    move-result-object v0

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
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/s1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/s1;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/Platform;->UNDEFINED_PT:Lcom/wufan/friend/chat/protocol/Platform;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Platform;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/wufan/friend/chat/protocol/s1;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->UNDEFINED_SN:Lcom/wufan/friend/chat/protocol/ServiceName;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServiceName;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 8
    iget v1, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->UNDEFINED_SP:Lcom/wufan/friend/chat/protocol/ServicePath;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/ServicePath;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, Lcom/wufan/friend/chat/protocol/s1;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/s1;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/s1;->g:Lcom/wufan/friend/chat/protocol/t1;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/s1;->w1()Lcom/wufan/friend/chat/protocol/t1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    return-void
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/s1;->d:I

    return v0
.end method
