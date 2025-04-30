.class public final Lcom/wufan/friend/chat/protocol/e;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AllFriendNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/e;",
        "Lcom/wufan/friend/chat/protocol/e$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/f;"
    }
.end annotation


# static fields
.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field private static final h:Lcom/wufan/friend/chat/protocol/e;

.field private static volatile i:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/e;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/e;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private A3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private B3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static C3()Lcom/wufan/friend/chat/protocol/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    return-object v0
.end method

.method public static H3()Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/e$b;

    return-object v0
.end method

.method public static I3(Lcom/wufan/friend/chat/protocol/e;)Lcom/wufan/friend/chat/protocol/e$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/e$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e$b;

    return-object p0
.end method

.method public static J3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static K3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static L3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static M3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static N3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static O3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static P3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static Q3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method public static R3([B)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    return-object v0
.end method

.method public static S3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/e;

    return-object p0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->Z3(ILcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method private T3(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->X3(ILcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method private U3(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->W3(ILcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method private V3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->s3(Lcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method private W3(ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->q3(ILcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method private X3(ILcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->r3(Lcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method private Y3(ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->p3(ILcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method private Z3(ILcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/e;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->n3(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->y3()V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->T3(I)V

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->V3(I)V

    return-void
.end method

.method static synthetic e3(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->Y3(ILcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method static synthetic f3(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->x3()V

    return-void
.end method

.method static synthetic g3(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->w3(Lcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method static synthetic h3(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->u3(ILcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method static synthetic i3(Lcom/wufan/friend/chat/protocol/e;Lcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->v3(Lcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method static synthetic j3(Lcom/wufan/friend/chat/protocol/e;ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/e;->t3(ILcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method static synthetic k3(Lcom/wufan/friend/chat/protocol/e;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->o3(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic l3(Lcom/wufan/friend/chat/protocol/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->z3()V

    return-void
.end method

.method static synthetic m3(Lcom/wufan/friend/chat/protocol/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/e;->U3(I)V

    return-void
.end method

.method private n3(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private o3(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private p3(ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private q3(ILcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private r3(Lcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private s3(Lcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->A3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private t3(ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private u3(ILcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private v3(Lcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private w3(Lcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/e;->B3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private x3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    return-void
.end method

.method private y3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private z3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method


# virtual methods
.method public C1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public D3(I)Lcom/wufan/friend/chat/protocol/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/b0;

    return-object p1
.end method

.method public E3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/friend/chat/protocol/b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public F3(I)Lcom/wufan/friend/chat/protocol/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/b0;

    return-object p1
.end method

.method public G3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/friend/chat/protocol/b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    return v0
.end method

.method public Q0(I)Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/r;

    return-object p1
.end method

.method public S0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public Z1(I)Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/r;

    return-object p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/e$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/e;->i:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/e;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/e;->i:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/e;->i:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/e;->i:Lcom/google/protobuf/Parser;

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

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0x12

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    invoke-static {}, Lcom/wufan/friend/chat/protocol/r;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 23
    invoke-static {}, Lcom/wufan/friend/chat/protocol/r;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 25
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :goto_3
    throw p1

    .line 29
    :cond_9
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    return-object p1

    .line 30
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 31
    check-cast p3, Lcom/wufan/friend/chat/protocol/e;

    .line 32
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 33
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    .line 34
    iget p1, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/friend/chat/protocol/e;->d:I

    if-eqz v3, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    .line 35
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_c

    .line 36
    iget p1, p0, Lcom/wufan/friend/chat/protocol/e;->a:I

    iget p2, p3, Lcom/wufan/friend/chat/protocol/e;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/wufan/friend/chat/protocol/e;->a:I

    :cond_c
    return-object p0

    .line 37
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/e$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/e$b;-><init>(Lcom/wufan/friend/chat/protocol/e$a;)V

    return-object p1

    .line 38
    :pswitch_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 39
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 40
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/e;->h:Lcom/wufan/friend/chat/protocol/e;

    return-object p1

    .line 41
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/e;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/e;-><init>()V

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

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x2

    .line 6
    iget-object v3, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget v0, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 9
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    :cond_3
    iput v2, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v2
.end method

.method public u0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public u2()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/e;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/e;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/e;->d:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method
