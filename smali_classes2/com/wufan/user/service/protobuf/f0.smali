.class public final Lcom/wufan/user/service/protobuf/f0;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SmsCodeRequestParameters.java"

# interfaces
.implements Lcom/wufan/user/service/protobuf/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/user/service/protobuf/f0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/user/service/protobuf/f0;",
        "Lcom/wufan/user/service/protobuf/f0$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/g0;"
    }
.end annotation


# static fields
.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field private static final m:Lcom/wufan/user/service/protobuf/f0;

.field private static volatile n:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/f0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/user/service/protobuf/f0;

    invoke-direct {v0}, Lcom/wufan/user/service/protobuf/f0;-><init>()V

    sput-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    return-void
.end method

.method public static A3([B)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static B3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method private C3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    return-void
.end method

.method private D3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    return-void
.end method

.method private E3(Lcom/wufan/user/service/protobuf/enumeration/ContentType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    return-void
.end method

.method private F3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    return-void
.end method

.method private G3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    return-void
.end method

.method private H3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    return-void
.end method

.method private I3(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    return-void
.end method

.method private J3(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    return-void
.end method

.method private K3(Lcom/wufan/user/service/protobuf/enumeration/SourceType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    return-void
.end method

.method private L3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    return-void
.end method

.method static synthetic S2()Lcom/wufan/user/service/protobuf/f0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/user/service/protobuf/f0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->setUid(I)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/user/service/protobuf/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/f0;->m3()V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/user/service/protobuf/f0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->H3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/user/service/protobuf/f0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->I3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/user/service/protobuf/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/f0;->n3()V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/user/service/protobuf/f0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->J3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/user/service/protobuf/f0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->C3(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/user/service/protobuf/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/f0;->k3()V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/user/service/protobuf/f0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->D3(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/user/service/protobuf/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/f0;->clearUid()V

    return-void
.end method

.method private clearUid()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    return-void
.end method

.method static synthetic d3(Lcom/wufan/user/service/protobuf/f0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->F3(I)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/user/service/protobuf/f0;Lcom/wufan/user/service/protobuf/enumeration/ContentType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->E3(Lcom/wufan/user/service/protobuf/enumeration/ContentType;)V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/user/service/protobuf/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/f0;->l3()V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/user/service/protobuf/f0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->L3(I)V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/user/service/protobuf/f0;Lcom/wufan/user/service/protobuf/enumeration/SourceType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->K3(Lcom/wufan/user/service/protobuf/enumeration/SourceType;)V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/user/service/protobuf/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/f0;->o3()V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/user/service/protobuf/f0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/f0;->G3(Ljava/lang/String;)V

    return-void
.end method

.method private k3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/f0;->p3()Lcom/wufan/user/service/protobuf/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/f0;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    return-void
.end method

.method private l3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    return-void
.end method

.method private m3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/f0;->p3()Lcom/wufan/user/service/protobuf/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/f0;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    return-void
.end method

.method private n3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/f0;->p3()Lcom/wufan/user/service/protobuf/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/f0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    return-void
.end method

.method private o3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    return-void
.end method

.method public static p3()Lcom/wufan/user/service/protobuf/f0;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/user/service/protobuf/f0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3()Lcom/wufan/user/service/protobuf/f0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/f0$b;

    return-object v0
.end method

.method public static r3(Lcom/wufan/user/service/protobuf/f0;)Lcom/wufan/user/service/protobuf/f0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/f0$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0$b;

    return-object p0
.end method

.method public static s3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method private setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    return-void
.end method

.method public static t3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static u3(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static v3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static w3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static x3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static y3(Ljava/io/InputStream;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method

.method public static z3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/user/service/protobuf/f0;

    return-object p0
.end method


# virtual methods
.method public F2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    return v0
.end method

.method public I2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    return v0
.end method

.method public N1()Lcom/wufan/user/service/protobuf/enumeration/SourceType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    invoke-static {v0}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    :cond_0
    return-object v0
.end method

.method public a()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lcom/wufan/user/service/protobuf/f0$a;->a:[I

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
    sget-object p1, Lcom/wufan/user/service/protobuf/f0;->n:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/user/service/protobuf/f0;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/user/service/protobuf/f0;->n:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/user/service/protobuf/f0;->n:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/user/service/protobuf/f0;->n:Lcom/google/protobuf/Parser;

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

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_4

    const/16 p3, 0x32

    if-eq p1, p3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 19
    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 21
    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    goto :goto_1

    .line 22
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->a:I
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

    .line 23
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 24
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :goto_3
    throw p1

    .line 27
    :cond_a
    :pswitch_2
    sget-object p1, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    return-object p1

    .line 28
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 29
    check-cast p3, Lcom/wufan/user/service/protobuf/f0;

    .line 30
    iget p1, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/user/service/protobuf/f0;->a:I

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    .line 31
    iget p1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/wufan/user/service/protobuf/f0;->b:I

    if-eqz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    .line 32
    iget p1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    :goto_8
    iget v3, p3, Lcom/wufan/user/service/protobuf/f0;->c:I

    if-eqz v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    .line 33
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    iget-object v1, p3, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    .line 35
    invoke-interface {p2, p1, v0, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    iget-object v1, p3, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v3, p3, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    .line 38
    invoke-interface {p2, p1, v0, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    iget-object v1, p3, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object p3, p3, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    .line 41
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    .line 42
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 43
    :pswitch_4
    new-instance p1, Lcom/wufan/user/service/protobuf/f0$b;

    invoke-direct {p1, v0}, Lcom/wufan/user/service/protobuf/f0$b;-><init>(Lcom/wufan/user/service/protobuf/f0$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 44
    :pswitch_6
    sget-object p1, Lcom/wufan/user/service/protobuf/f0;->m:Lcom/wufan/user/service/protobuf/f0;

    return-object p1

    .line 45
    :pswitch_7
    new-instance p1, Lcom/wufan/user/service/protobuf/f0;

    invoke-direct {p1}, Lcom/wufan/user/service/protobuf/f0;-><init>()V

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/wufan/user/service/protobuf/enumeration/ContentType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    invoke-static {v0}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->forNumber(I)Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

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
    iget v1, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    sget-object v2, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 5
    iget v2, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    sget-object v2, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->WORLD:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 8
    iget v2, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    .line 9
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/f0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 13
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/f0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 15
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/f0;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    return v0
.end method

.method public q()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->a:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->MOBILE_REG:Lcom/wufan/user/service/protobuf/enumeration/ContentType;

    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/enumeration/ContentType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lcom/wufan/user/service/protobuf/f0;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    sget-object v1, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->WORLD:Lcom/wufan/user/service/protobuf/enumeration/SourceType;

    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/enumeration/SourceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lcom/wufan/user/service/protobuf/f0;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/f0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/f0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/f0;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/f0;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
