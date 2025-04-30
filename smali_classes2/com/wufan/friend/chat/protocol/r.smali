.class public final Lcom/wufan/friend/chat/protocol/r;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Friend.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/r;",
        "Lcom/wufan/friend/chat/protocol/r$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/b0;"
    }
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field private static final e:Lcom/wufan/friend/chat/protocol/r;

.field private static volatile f:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/wufan/friend/chat/protocol/a;

.field private b:Lcom/wufan/friend/chat/protocol/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/r;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/r;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

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

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/r;->r3(Lcom/wufan/friend/chat/protocol/a;)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/r;->q3(Lcom/wufan/friend/chat/protocol/a$b;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/r;->c3(Lcom/wufan/friend/chat/protocol/a;)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/r;->clearAccount()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/r;->t3(Lcom/wufan/friend/chat/protocol/d1;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/d1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/r;->s3(Lcom/wufan/friend/chat/protocol/d1$b;)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/r;Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/r;->d3(Lcom/wufan/friend/chat/protocol/d1;)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/r;->clearState()V

    return-void
.end method

.method public static b3()Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    return-object v0
.end method

.method private c3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/a;->p3(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    :goto_0
    return-void
.end method

.method private clearAccount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private clearState()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    return-void
.end method

.method private d3(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->h3()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/d1;->j3(Lcom/wufan/friend/chat/protocol/d1;)Lcom/wufan/friend/chat/protocol/d1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    :goto_0
    return-void
.end method

.method public static e3()Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/r$b;

    return-object v0
.end method

.method public static f3(Lcom/wufan/friend/chat/protocol/r;)Lcom/wufan/friend/chat/protocol/r$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/r$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r$b;

    return-object p0
.end method

.method public static g3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static h3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static i3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static j3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static k3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static l3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static m3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static n3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static o3([B)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static p3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/r;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private q3(Lcom/wufan/friend/chat/protocol/a$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private r3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    return-void
.end method

.method private s3(Lcom/wufan/friend/chat/protocol/d1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    return-void
.end method

.method private t3(Lcom/wufan/friend/chat/protocol/d1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    return-void
.end method


# virtual methods
.method public Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/r$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/friend/chat/protocol/r;->f:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/r;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/r;->f:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/r;->f:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/r;->f:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_8

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    .line 11
    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/d1$b;

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/d1;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    goto :goto_1

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/a$b;

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 19
    :goto_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/a;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/a;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_4
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 23
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    :goto_5
    throw p1

    .line 26
    :cond_8
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    return-object p1

    .line 27
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 28
    check-cast p3, Lcom/wufan/friend/chat/protocol/r;

    .line 29
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/a;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    .line 30
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/d1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    .line 31
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 32
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/r$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/r$b;-><init>(Lcom/wufan/friend/chat/protocol/r$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 33
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/r;->e:Lcom/wufan/friend/chat/protocol/r;

    return-object p1

    .line 34
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/r;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/r;-><init>()V

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

.method public getAccount()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

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
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/d1;->h3()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->a:Lcom/wufan/friend/chat/protocol/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/r;->getAccount()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/r;->b:Lcom/wufan/friend/chat/protocol/d1;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/r;->getState()Lcom/wufan/friend/chat/protocol/d1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    return-void
.end method
