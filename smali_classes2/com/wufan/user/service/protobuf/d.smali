.class public final Lcom/wufan/user/service/protobuf/d;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GameListPermission.java"

# interfaces
.implements Lcom/wufan/user/service/protobuf/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/user/service/protobuf/d;",
        "Lcom/wufan/user/service/protobuf/d$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/e;"
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field private static final k:Lcom/wufan/user/service/protobuf/d;

.field private static volatile l:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Z

.field private c:J

.field private d:Z

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/d;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/d;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic S2()Lcom/wufan/user/service/protobuf/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/user/service/protobuf/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/d;->setGameId(J)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/d;->d3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/d;->clearGameId()V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/user/service/protobuf/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/d;->w3(Z)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/d;->f3()V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/user/service/protobuf/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/d;->x3(J)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/d;->g3()V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/user/service/protobuf/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/d;->v3(Z)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/user/service/protobuf/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/d;->e3()V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/user/service/protobuf/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/user/service/protobuf/d;->u3(J)V

    return-void
.end method

.method private clearGameId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->a:J

    return-void
.end method

.method private d3()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    return-void
.end method

.method private e3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    return-void
.end method

.method private f3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    return-void
.end method

.method private g3()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    return-void
.end method

.method public static h3()Lcom/wufan/user/service/protobuf/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    return-object v0
.end method

.method public static i3()Lcom/wufan/user/service/protobuf/d$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/d$b;

    return-object v0
.end method

.method public static j3(Lcom/wufan/user/service/protobuf/d;)Lcom/wufan/user/service/protobuf/d$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/d$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d$b;

    return-object p0
.end method

.method public static k3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static l3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static m3(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static n3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static o3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static p3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static r3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method public static s3([B)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method private setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/d;->a:J

    return-void
.end method

.method public static t3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/d;

    return-object p0
.end method

.method private u3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    return-void
.end method

.method private v3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    return-void
.end method

.method private w3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    return-void
.end method

.method private x3(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    return-void
.end method


# virtual methods
.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/d$a;->a:[I

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
    sget-object p1, Lcom/wufan/user/service/protobuf/d;->l:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/user/service/protobuf/d;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/user/service/protobuf/d;->l:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/user/service/protobuf/d;->l:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/user/service/protobuf/d;->l:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 p3, 0x10

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/d;->a:J
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :goto_3
    throw p1

    .line 21
    :cond_9
    :pswitch_2
    sget-object p1, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    return-object p1

    .line 22
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 23
    check-cast p3, Lcom/wufan/user/service/protobuf/d;

    .line 24
    iget-wide v5, p0, Lcom/wufan/user/service/protobuf/d;->a:J

    const-wide/16 p1, 0x0

    cmp-long v3, v5, p1

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    iget-wide v8, p3, Lcom/wufan/user/service/protobuf/d;->a:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_b

    const/4 v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    :goto_5
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/d;->a:J

    .line 25
    iget-boolean v3, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    iget-boolean v4, p3, Lcom/wufan/user/service/protobuf/d;->b:Z

    invoke-interface {v0, v3, v3, v4, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    .line 26
    iget-wide v5, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    iget-wide v8, p3, Lcom/wufan/user/service/protobuf/d;->c:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_d

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    .line 27
    iget-boolean v3, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    iget-boolean v4, p3, Lcom/wufan/user/service/protobuf/d;->d:Z

    invoke-interface {v0, v3, v3, v4, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    .line 28
    iget-wide v3, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    iget-wide v6, p3, Lcom/wufan/user/service/protobuf/d;->e:J

    cmp-long p3, v6, p1

    if-eqz p3, :cond_f

    const/4 p1, 0x1

    goto :goto_9

    :cond_f
    const/4 p1, 0x0

    :goto_9
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    .line 29
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 30
    :pswitch_4
    new-instance p1, Lcom/wufan/user/service/protobuf/d$b;

    invoke-direct {p1, v0}, Lcom/wufan/user/service/protobuf/d$b;-><init>(Lcom/wufan/user/service/protobuf/d$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 31
    :pswitch_6
    sget-object p1, Lcom/wufan/user/service/protobuf/d;->k:Lcom/wufan/user/service/protobuf/d;

    return-object p1

    .line 32
    :pswitch_7
    new-instance p1, Lcom/wufan/user/service/protobuf/d;

    invoke-direct {p1}, Lcom/wufan/user/service/protobuf/d;-><init>()V

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

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->a:J

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
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/d;->a:J

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
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 7
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v3, 0x5

    .line 11
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public n2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    return v0
.end method

.method public r1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    return-wide v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/d;->b:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/d;->d:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->e:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v2, 0x5

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_4
    return-void
.end method

.method public x1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/d;->c:J

    return-wide v0
.end method
