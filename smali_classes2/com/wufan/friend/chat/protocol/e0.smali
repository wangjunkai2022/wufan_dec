.class public final Lcom/wufan/friend/chat/protocol/e0;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GameInviteArgs.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/e0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/e0;",
        "Lcom/wufan/friend/chat/protocol/e0$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/f0;"
    }
.end annotation


# static fields
.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field private static final m:Lcom/wufan/friend/chat/protocol/e0;

.field private static volatile n:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/e0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/e0;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/e0;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    return-void
.end method

.method private A3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    return-void
.end method

.method private B3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    return-void
.end method

.method private C3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    return-void
.end method

.method private D3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/e0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/e0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e0;->z3(I)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/e0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e0;->y3(Z)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e0;->g3()V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/e0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e0;->D3(Z)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e0;->k3()V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e0;->h3()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/e0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e0;->A3(J)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e0;->i3()V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/e0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e0;->setGameId(J)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e0;->clearGameId()V

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/e0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e0;->B3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e0;->j3()V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/e0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e0;->C3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private g3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    return-void
.end method

.method private h3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    return-void
.end method

.method private i3()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    return-void
.end method

.method private j3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/e0;->l3()Lcom/wufan/friend/chat/protocol/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/e0;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    return-void
.end method

.method private k3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    return-void
.end method

.method public static l3()Lcom/wufan/friend/chat/protocol/e0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    return-object v0
.end method

.method public static m3()Lcom/wufan/friend/chat/protocol/e0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/e0$b;

    return-object v0
.end method

.method public static n3(Lcom/wufan/friend/chat/protocol/e0;)Lcom/wufan/friend/chat/protocol/e0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/e0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0$b;

    return-object p0
.end method

.method public static o3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static p3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/e0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static r3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static s3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    return-void
.end method

.method public static t3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static u3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static v3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static w3([B)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method public static x3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e0;

    return-object p0
.end method

.method private y3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    return-void
.end method

.method private z3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    return v0
.end method

.method public I()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e0$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/e0;->n:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/e0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/e0;->n:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/e0;->n:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/e0;->n:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_8

    const/16 p3, 0x10

    if-eq p1, p3, :cond_7

    const/16 p3, 0x18

    if-eq p1, p3, :cond_6

    const/16 p3, 0x22

    if-eq p1, p3, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x30

    if-eq p1, p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 20
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :goto_3
    throw p1

    .line 23
    :cond_a
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    return-object p1

    .line 24
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 25
    check-cast p3, Lcom/wufan/friend/chat/protocol/e0;

    .line 26
    iget p1, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/friend/chat/protocol/e0;->a:I

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    .line 27
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_6
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/e0;->b:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_e

    const/4 v7, 0x1

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    :goto_7
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    .line 28
    iget-wide v5, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    iget-wide v8, p3, Lcom/wufan/friend/chat/protocol/e0;->c:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_10

    const/4 v7, 0x1

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    .line 29
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    iget-object v1, p3, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    .line 31
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    .line 32
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    .line 33
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    iget-boolean p3, p3, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    .line 34
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 35
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/e0$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/e0$b;-><init>(Lcom/wufan/friend/chat/protocol/e0$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 36
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/e0;->m:Lcom/wufan/friend/chat/protocol/e0;

    return-object p1

    .line 37
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/e0;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/e0;-><init>()V

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

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

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
    iget v1, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 5
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/e0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/e0;->a:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/e0;->c:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/e0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/e0;->e:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/e0;->f:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_5
    return-void
.end method
