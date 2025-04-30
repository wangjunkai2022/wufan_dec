.class public final Lcom/wufan/friend/chat/protocol/x1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ResponseData.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/y1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/x1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/x1;",
        "Lcom/wufan/friend/chat/protocol/x1$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/y1;"
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field private static final k:Lcom/wufan/friend/chat/protocol/x1;

.field private static volatile l:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/x1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/wufan/friend/chat/protocol/v0;

.field private b:Lcom/wufan/friend/chat/protocol/y0;

.field private c:Lcom/wufan/friend/chat/protocol/l1;

.field private d:Lcom/wufan/friend/chat/protocol/p0;

.field private e:Lcom/wufan/friend/chat/protocol/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/x1;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/x1;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

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

.method public static A3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static B3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static C3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static D3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static E3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static F3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static G3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static H3([B)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method public static I3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method

.method private J3(Lcom/wufan/friend/chat/protocol/k$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/k;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    return-void
.end method

.method private K3(Lcom/wufan/friend/chat/protocol/k;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    return-void
.end method

.method private L3(Lcom/wufan/friend/chat/protocol/p0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    return-void
.end method

.method private M3(Lcom/wufan/friend/chat/protocol/p0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    return-void
.end method

.method private N3(Lcom/wufan/friend/chat/protocol/v0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    return-void
.end method

.method private O3(Lcom/wufan/friend/chat/protocol/v0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    return-void
.end method

.method private P3(Lcom/wufan/friend/chat/protocol/y0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/y0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    return-void
.end method

.method private Q3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    return-void
.end method

.method private R3(Lcom/wufan/friend/chat/protocol/l1$b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/x1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    return-object v0
.end method

.method private S3(Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    return-void
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->O3(Lcom/wufan/friend/chat/protocol/v0;)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/l1$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->R3(Lcom/wufan/friend/chat/protocol/l1$b;)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->w3(Lcom/wufan/friend/chat/protocol/l1;)V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x1;->q3()V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->M3(Lcom/wufan/friend/chat/protocol/p0;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/p0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->L3(Lcom/wufan/friend/chat/protocol/p0$b;)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->t3(Lcom/wufan/friend/chat/protocol/p0;)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x1;->o3()V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->K3(Lcom/wufan/friend/chat/protocol/k;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/k$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->J3(Lcom/wufan/friend/chat/protocol/k$b;)V

    return-void
.end method

.method private clearNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->s3(Lcom/wufan/friend/chat/protocol/k;)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/v0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->N3(Lcom/wufan/friend/chat/protocol/v0$b;)V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x1;->n3()V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->u3(Lcom/wufan/friend/chat/protocol/v0;)V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x1;->p3()V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->Q3(Lcom/wufan/friend/chat/protocol/y0;)V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/y0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->P3(Lcom/wufan/friend/chat/protocol/y0$b;)V

    return-void
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->v3(Lcom/wufan/friend/chat/protocol/y0;)V

    return-void
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/x1;->clearNotification()V

    return-void
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/x1;Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/x1;->S3(Lcom/wufan/friend/chat/protocol/l1;)V

    return-void
.end method

.method private n3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    return-void
.end method

.method private o3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    return-void
.end method

.method private p3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/x1;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private q3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    return-void
.end method

.method public static r3()Lcom/wufan/friend/chat/protocol/x1;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    return-object v0
.end method

.method private s3(Lcom/wufan/friend/chat/protocol/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/k;->Z2()Lcom/wufan/friend/chat/protocol/k;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/k;->b3(Lcom/wufan/friend/chat/protocol/k;)Lcom/wufan/friend/chat/protocol/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/k$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/k;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    :goto_0
    return-void
.end method

.method private t3(Lcom/wufan/friend/chat/protocol/p0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/p0;->j3()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/p0;->n3(Lcom/wufan/friend/chat/protocol/p0;)Lcom/wufan/friend/chat/protocol/p0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    :goto_0
    return-void
.end method

.method private u3(Lcom/wufan/friend/chat/protocol/v0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/v0;->Z2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/v0;->b3(Lcom/wufan/friend/chat/protocol/v0;)Lcom/wufan/friend/chat/protocol/v0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    :goto_0
    return-void
.end method

.method private v3(Lcom/wufan/friend/chat/protocol/y0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/y0;->J4()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/y0;->c5(Lcom/wufan/friend/chat/protocol/y0;)Lcom/wufan/friend/chat/protocol/y0$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/y0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/y0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    :goto_0
    return-void
.end method

.method private w3(Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/l1;->j3()Lcom/wufan/friend/chat/protocol/l1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    .line 4
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/l1;->n3(Lcom/wufan/friend/chat/protocol/l1;)Lcom/wufan/friend/chat/protocol/l1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l1$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    :goto_0
    return-void
.end method

.method public static x3()Lcom/wufan/friend/chat/protocol/x1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/x1$b;

    return-object v0
.end method

.method public static y3(Lcom/wufan/friend/chat/protocol/x1;)Lcom/wufan/friend/chat/protocol/x1$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/x1$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1$b;

    return-object p0
.end method

.method public static z3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/x1;

    return-object p0
.end method


# virtual methods
.method public E1()Lcom/wufan/friend/chat/protocol/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/l1;->j3()Lcom/wufan/friend/chat/protocol/l1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public J0()Lcom/wufan/friend/chat/protocol/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/k;->Z2()Lcom/wufan/friend/chat/protocol/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public U0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V0()Lcom/wufan/friend/chat/protocol/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/p0;->j3()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/x1$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/x1;->l:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/x1;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/x1;->l:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/x1;->l:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/x1;->l:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_e

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    const/16 v3, 0xa

    if-eq v1, v3, :cond_b

    const/16 v3, 0x12

    if-eq v1, v3, :cond_9

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_7

    const/16 v3, 0x22

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_3

    .line 11
    invoke-virtual {p2, v1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_7

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/k$b;

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 14
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/k;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/k;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/k;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    goto :goto_1

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/p0$b;

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 19
    :goto_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/p0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/p0;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/p0;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    goto :goto_1

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-eqz v1, :cond_8

    .line 23
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/l1$b;

    goto :goto_4

    :cond_8
    move-object v1, v0

    .line 24
    :goto_4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/l1;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/l1;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/l1;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    goto/16 :goto_1

    .line 27
    :cond_9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-eqz v1, :cond_a

    .line 28
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/y0$b;

    goto :goto_5

    :cond_a
    move-object v1, v0

    .line 29
    :goto_5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/y0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/y0;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/y0;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    goto/16 :goto_1

    .line 32
    :cond_b
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    if-eqz v1, :cond_c

    .line 33
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/v0$b;

    goto :goto_6

    :cond_c
    move-object v1, v0

    .line 34
    :goto_6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/v0;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/v0;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/v0;

    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_7
    const/4 p1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 37
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 38
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :goto_8
    throw p1

    .line 41
    :cond_e
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    return-object p1

    .line 42
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 43
    check-cast p3, Lcom/wufan/friend/chat/protocol/x1;

    .line 44
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/v0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    .line 45
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/y0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    .line 46
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/l1;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    .line 47
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/p0;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    .line 48
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    iget-object p3, p3, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/k;

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    .line 49
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 50
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/x1$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/x1$b;-><init>(Lcom/wufan/friend/chat/protocol/x1$a;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 51
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/x1;->k:Lcom/wufan/friend/chat/protocol/x1;

    return-object p1

    .line 52
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/x1;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/x1;-><init>()V

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

.method public e1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotification()Lcom/wufan/friend/chat/protocol/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/y0;->J4()Lcom/wufan/friend/chat/protocol/y0;

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
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->E1()Lcom/wufan/friend/chat/protocol/l1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->V0()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->J0()Lcom/wufan/friend/chat/protocol/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public hasNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->x2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->b:Lcom/wufan/friend/chat/protocol/y0;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->getNotification()Lcom/wufan/friend/chat/protocol/y0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->c:Lcom/wufan/friend/chat/protocol/l1;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->E1()Lcom/wufan/friend/chat/protocol/l1;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->d:Lcom/wufan/friend/chat/protocol/p0;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->V0()Lcom/wufan/friend/chat/protocol/p0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->e:Lcom/wufan/friend/chat/protocol/k;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/x1;->J0()Lcom/wufan/friend/chat/protocol/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    return-void
.end method

.method public x2()Lcom/wufan/friend/chat/protocol/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/x1;->a:Lcom/wufan/friend/chat/protocol/v0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/v0;->Z2()Lcom/wufan/friend/chat/protocol/v0;

    move-result-object v0

    :cond_0
    return-object v0
.end method
