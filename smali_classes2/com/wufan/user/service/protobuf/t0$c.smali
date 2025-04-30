.class public final Lcom/wufan/user/service/protobuf/t0$c;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UserRegStatusResponseField.java"

# interfaces
.implements Lcom/wufan/user/service/protobuf/t0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/t0$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/user/service/protobuf/t0$c;",
        "Lcom/wufan/user/service/protobuf/t0$c$a;",
        ">;",
        "Lcom/wufan/user/service/protobuf/t0$d;"
    }
.end annotation


# static fields
.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field private static final g:Lcom/wufan/user/service/protobuf/t0$c;

.field private static volatile h:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/t0$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/t0$c;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/t0$c;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

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

.method static synthetic S2()Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/user/service/protobuf/t0$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/t0$c;->q3(Z)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/user/service/protobuf/t0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/t0$c;->a3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/user/service/protobuf/t0$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/t0$c;->r3(Z)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/user/service/protobuf/t0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/t0$c;->b3()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/user/service/protobuf/t0$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/t0$c;->p3(Z)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/user/service/protobuf/t0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/t0$c;->Z2()V

    return-void
.end method

.method private Z2()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    return-void
.end method

.method private a3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    return-void
.end method

.method private b3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    return-void
.end method

.method public static c3()Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    return-object v0
.end method

.method public static d3()Lcom/wufan/user/service/protobuf/t0$c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/t0$c$a;

    return-object v0
.end method

.method public static e3(Lcom/wufan/user/service/protobuf/t0$c;)Lcom/wufan/user/service/protobuf/t0$c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/t0$c$a;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c$a;

    return-object p0
.end method

.method public static f3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static g3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static h3(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static i3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static j3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static k3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static l3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static m3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static n3([B)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method public static o3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/t0$c;

    return-object p0
.end method

.method private p3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/t0$c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private q3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    return-void
.end method

.method private r3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    return-void
.end method


# virtual methods
.method public P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/t0$a;->a:[I

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
    sget-object p1, Lcom/wufan/user/service/protobuf/t0$c;->h:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/user/service/protobuf/t0$c;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/user/service/protobuf/t0$c;->h:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/user/service/protobuf/t0$c;->h:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/user/service/protobuf/t0$c;->h:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    const/16 v1, 0x20

    if-eq p3, v1, :cond_5

    const/16 v1, 0x28

    if-eq p3, v1, :cond_4

    const/16 v1, 0x30

    if-eq p3, v1, :cond_3

    .line 11
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p3

    iput-boolean p3, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :goto_3
    throw p1

    .line 19
    :cond_7
    :pswitch_2
    sget-object p1, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    return-object p1

    .line 20
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 21
    check-cast p3, Lcom/wufan/user/service/protobuf/t0$c;

    .line 22
    iget-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    iget-boolean v0, p3, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    .line 23
    iget-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    iget-boolean v0, p3, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    .line 24
    iget-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    iget-boolean p3, p3, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    .line 25
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 26
    :pswitch_4
    new-instance p1, Lcom/wufan/user/service/protobuf/t0$c$a;

    invoke-direct {p1, v0}, Lcom/wufan/user/service/protobuf/t0$c$a;-><init>(Lcom/wufan/user/service/protobuf/t0$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 27
    :pswitch_6
    sget-object p1, Lcom/wufan/user/service/protobuf/t0$c;->g:Lcom/wufan/user/service/protobuf/t0$c;

    return-object p1

    .line 28
    :pswitch_7
    new-instance p1, Lcom/wufan/user/service/protobuf/t0$c;

    invoke-direct {p1}, Lcom/wufan/user/service/protobuf/t0$c;-><init>()V

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
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    return v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

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
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->a:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->b:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/wufan/user/service/protobuf/t0$c;->c:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_2
    return-void
.end method
