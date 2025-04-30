.class public final Lcom/wufan/user/service/protobuf/n0;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UserLoginRequestParameters.java"

# interfaces
.implements Lcom/wufan/user/service/protobuf/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/n0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/user/service/protobuf/n0;",
        "Lcom/wufan/user/service/protobuf/n0$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/o0;"
    }
.end annotation


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field private static final i:Lcom/wufan/user/service/protobuf/n0;

.field private static volatile j:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/n0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/n0;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/n0;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/user/service/protobuf/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/user/service/protobuf/n0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->u3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/user/service/protobuf/n0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->w3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/user/service/protobuf/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/n0;->f3()V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/user/service/protobuf/n0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->x3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/user/service/protobuf/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/n0;->clearAccount()V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/user/service/protobuf/n0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->v3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/user/service/protobuf/n0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/user/service/protobuf/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/n0;->clearPassword()V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/user/service/protobuf/n0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->setPasswordBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/user/service/protobuf/n0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->y3(Ljava/lang/String;)V

    return-void
.end method

.method private clearAccount()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/n0;->h3()Lcom/wufan/user/service/protobuf/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/n0;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    return-void
.end method

.method private clearPassword()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/n0;->h3()Lcom/wufan/user/service/protobuf/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/n0;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic d3(Lcom/wufan/user/service/protobuf/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/n0;->g3()V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/user/service/protobuf/n0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/n0;->z3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private f3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/n0;->h3()Lcom/wufan/user/service/protobuf/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/n0;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    return-void
.end method

.method private g3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/n0;->h3()Lcom/wufan/user/service/protobuf/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/n0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    return-void
.end method

.method public static h3()Lcom/wufan/user/service/protobuf/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    return-object v0
.end method

.method public static i3()Lcom/wufan/user/service/protobuf/n0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/n0$b;

    return-object v0
.end method

.method public static j3(Lcom/wufan/user/service/protobuf/n0;)Lcom/wufan/user/service/protobuf/n0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/n0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0$b;

    return-object p0
.end method

.method public static k3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static l3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static m3(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static n3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static o3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static p3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/n0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static r3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method public static s3([B)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    return-void
.end method

.method private setPasswordBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    return-void
.end method

.method public static t3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/n0;

    return-object p0
.end method

.method private u3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    return-void
.end method

.method private v3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    return-void
.end method

.method private w3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    return-void
.end method

.method private x3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    return-void
.end method

.method private y3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    return-void
.end method

.method private z3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/n0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/wufan/user/service/protobuf/n0;->j:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/user/service/protobuf/n0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/user/service/protobuf/n0;->j:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/user/service/protobuf/n0;->j:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/user/service/protobuf/n0;->j:Lcom/google/protobuf/Parser;

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

    move-result p3

    if-eqz p3, :cond_7

    const/16 v0, 0xa

    if-eq p3, v0, :cond_6

    const/16 v0, 0x12

    if-eq p3, v0, :cond_5

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_4

    const/16 v0, 0x22

    if-eq p3, v0, :cond_3

    .line 11
    invoke-virtual {p2, p3}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p3

    .line 13
    iput-object p3, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p3

    .line 15
    iput-object p3, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p3

    .line 17
    iput-object p3, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p3

    .line 19
    iput-object p3, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 20
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :goto_3
    throw p1

    .line 24
    :cond_8
    :pswitch_2
    sget-object p1, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    return-object p1

    .line 25
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 26
    check-cast p3, Lcom/wufan/user/service/protobuf/n0;

    .line 27
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    iget-object v2, p3, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    .line 29
    invoke-interface {p2, p1, v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    .line 32
    invoke-interface {p2, p1, v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    iget-object v2, p3, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    .line 35
    invoke-interface {p2, p1, v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    iget-object v2, p3, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object p3, p3, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    .line 38
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    .line 39
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 40
    :pswitch_4
    new-instance p1, Lcom/wufan/user/service/protobuf/n0$b;

    invoke-direct {p1, v0}, Lcom/wufan/user/service/protobuf/n0$b;-><init>(Lcom/wufan/user/service/protobuf/n0$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 41
    :pswitch_6
    sget-object p1, Lcom/wufan/user/service/protobuf/n0;->i:Lcom/wufan/user/service/protobuf/n0;

    return-object p1

    .line 42
    :pswitch_7
    new-instance p1, Lcom/wufan/user/service/protobuf/n0;

    invoke-direct {p1}, Lcom/wufan/user/service/protobuf/n0;-><init>()V

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

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public k()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/n0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/n0;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
