.class public final Lcom/wufan/friend/chat/protocol/x;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FriendChangeStateNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/x$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/x;",
        "Lcom/wufan/friend/chat/protocol/x$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/y;"
    }
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field private static final g:Lcom/wufan/friend/chat/protocol/x;

.field private static volatile h:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/wufan/friend/chat/protocol/a;

.field private b:I

.field private c:Lcom/wufan/friend/chat/protocol/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/x;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/x;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

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

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->w3(Lcom/wufan/friend/chat/protocol/a;)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->i3(Lcom/wufan/friend/chat/protocol/d1;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x;->f3()V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->v3(Lcom/wufan/friend/chat/protocol/a$b;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->h3(Lcom/wufan/friend/chat/protocol/a;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x;->e3()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/x;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->setStateValue(I)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/OnlineState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->z3(Lcom/wufan/friend/chat/protocol/OnlineState;)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x;->clearState()V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->y3(Lcom/wufan/friend/chat/protocol/d1;)V

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/x;Lcom/wufan/friend/chat/protocol/d1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x;->x3(Lcom/wufan/friend/chat/protocol/d1$b;)V

    return-void
.end method

.method private e3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private f3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    return-void
.end method

.method public static g3()Lcom/wufan/friend/chat/protocol/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    return-object v0
.end method

.method private h3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/a;->p3(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    :goto_0
    return-void
.end method

.method private i3(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->h3()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/d1;->j3(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/d1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    :goto_0
    return-void
.end method

.method public static j3()Lcom/wufan/friend/chat/protocol/x$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/x$b;

    return-object v0
.end method

.method public static k3(Lcom/wufan/friend/chat/protocol/x;)Lcom/wufan/friend/chat/protocol/x$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/x$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x$b;

    return-object p0
.end method

.method public static l3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static m3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static n3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static o3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static p3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/x;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static r3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static s3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method private setStateValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    return-void
.end method

.method public static t3([B)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method public static u3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x;

    return-object p0
.end method

.method private v3(Lcom/wufan/friend/chat/protocol/a$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private w3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private x3(Lcom/wufan/friend/chat/protocol/d1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    return-void
.end method

.method private y3(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    return-void
.end method

.method private z3(Lcom/wufan/friend/chat/protocol/OnlineState;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/x;->h:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/x;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/x;->h:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/x;->h:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/x;->h:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0x10

    if-eq p1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1$b;

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/d1;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 18
    iput p1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    goto :goto_1

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a$b;

    goto :goto_3

    :cond_7
    move-object p1, v2

    .line 21
    :goto_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/wufan/friend/chat/protocol/a;

    iput-object v3, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 24
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :goto_5
    throw p1

    .line 28
    :cond_9
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    return-object p1

    .line 29
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 30
    check-cast p3, Lcom/wufan/friend/chat/protocol/x;

    .line 31
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    iget-object v2, p3, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    invoke-interface {p2, p1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    .line 32
    iget p1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    iget v3, p3, Lcom/wufan/friend/chat/protocol/x;->b:I

    if-eqz v3, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-interface {p2, v2, p1, v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    .line 33
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    .line 34
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 35
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/x$b;

    invoke-direct {p1, v2}, Lcom/wufan/friend/chat/protocol/x$b;-><init>(Lcom/wufan/friend/chat/protocol/x$a;)V

    return-object p1

    :pswitch_5
    return-object v2

    .line 36
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/x;->g:Lcom/wufan/friend/chat/protocol/x;

    return-object p1

    .line 37
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/x;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/x;-><init>()V

    return-object p1

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

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    sget-object v2, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 5
    iget v2, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/OnlineState;->forNumber(I)Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/OnlineState;

    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    return v0
.end method

.method public n()Lcom/wufan/friend/chat/protocol/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->h3()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x;->g()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    sget-object v1, Lcom/wufan/friend/chat/protocol/OnlineState;->ONLINE:Lcom/wufan/friend/chat/protocol/OnlineState;

    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/x;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x;->c:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x;->n()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_2
    return-void
.end method
