.class public final Lcom/wufan/friend/chat/protocol/a;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccountInfo.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/a;",
        "Lcom/wufan/friend/chat/protocol/a$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/b;"
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

.field private static final o:Lcom/wufan/friend/chat/protocol/a;

.field private static volatile p:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/a;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/a;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    return-void
.end method

.method private A3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    return-void
.end method

.method private B3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

    return-void
.end method

.method private C3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    return-void
.end method

.method private D3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->B3(Z)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/a;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->setAvatarBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->D3(I)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->m3()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->setVip(Z)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->clearVip()V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->C3(Z)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->l3()V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->k3()V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->A3(I)V

    return-void
.end method

.method private clearAvatar()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    return-void
.end method

.method private clearNickname()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a;->n3()Lcom/wufan/friend/chat/protocol/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    return-void
.end method

.method private clearVip()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->j3()V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->setNickname(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->clearNickname()V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/a;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->setNicknameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/a;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/a;->clearAvatar()V

    return-void
.end method

.method private j3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    return-void
.end method

.method private k3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

    return-void
.end method

.method private l3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    return-void
.end method

.method private m3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    return-void
.end method

.method public static n3()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    return-object v0
.end method

.method public static o3()Lcom/wufan/friend/chat/protocol/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/a$b;

    return-object v0
.end method

.method public static p3(Lcom/wufan/friend/chat/protocol/a;)Lcom/wufan/friend/chat/protocol/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/a$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a$b;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static r3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static s3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    return-void
.end method

.method private setAvatarBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    return-void
.end method

.method private setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    return-void
.end method

.method private setNicknameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    return-void
.end method

.method private setVip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    return-void
.end method

.method public static t3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static u3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static v3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static w3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static x3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static y3([B)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method

.method public static z3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/a;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    return v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/a;->p:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/a;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/a;->p:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/a;->p:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/a;->p:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_b

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 p3, 0x8

    if-eq p1, p3, :cond_9

    const/16 p3, 0x10

    if-eq p1, p3, :cond_8

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_7

    const/16 p3, 0x22

    if-eq p1, p3, :cond_6

    const/16 p3, 0x28

    if-eq p1, p3, :cond_5

    const/16 p3, 0x30

    if-eq p1, p3, :cond_4

    const/16 p3, 0x38

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

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    goto :goto_1

    .line 15
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    goto :goto_1

    .line 19
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    goto :goto_1

    .line 20
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :goto_3
    throw p1

    .line 25
    :cond_b
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    return-object p1

    .line 26
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 27
    check-cast p3, Lcom/wufan/friend/chat/protocol/a;

    .line 28
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/a;->a:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

    .line 29
    iget p1, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/friend/chat/protocol/a;->b:I

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    .line 30
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    .line 32
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    iget-object v3, p3, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    .line 35
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    .line 36
    iget p1, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/wufan/friend/chat/protocol/a;->e:I

    if-eqz v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    .line 37
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    iget-boolean v0, p3, Lcom/wufan/friend/chat/protocol/a;->f:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    .line 38
    iget-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    iget-boolean p3, p3, Lcom/wufan/friend/chat/protocol/a;->g:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    .line 39
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 40
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/a$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/a$b;-><init>(Lcom/wufan/friend/chat/protocol/a$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 41
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/a;->o:Lcom/wufan/friend/chat/protocol/a;

    return-object p1

    .line 42
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/a;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/a;-><init>()V

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

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

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
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    return v0
.end method

.method public i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

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
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/protocol/a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/a;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/a;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/wufan/friend/chat/protocol/a;->e:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->f:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13
    :cond_5
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/a;->g:Z

    return v0
.end method
