.class public final Lcom/wufan/friend/chat/protocol/g;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AllOnlineFriendNotification.java"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/wufan/friend/chat/protocol/g;",
        "Lcom/wufan/friend/chat/protocol/g$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/h;"
    }
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field private static final f:Lcom/wufan/friend/chat/protocol/g;

.field private static volatile g:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/g;",
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

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/g;

    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/g;-><init>()V

    sput-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

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

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static A3([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method private B3(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private C3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    return-void
.end method

.method private D3(ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private E3(ILcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic S2()Lcom/wufan/friend/chat/protocol/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    return-object v0
.end method

.method static synthetic T2(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->E3(ILcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method static synthetic U2(Lcom/wufan/friend/chat/protocol/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g;->C3(I)V

    return-void
.end method

.method static synthetic V2(Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->j3()V

    return-void
.end method

.method static synthetic W2(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->D3(ILcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method static synthetic X2(Lcom/wufan/friend/chat/protocol/g;Lcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g;->i3(Lcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method static synthetic Y2(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->g3(ILcom/wufan/friend/chat/protocol/r;)V

    return-void
.end method

.method static synthetic Z2(Lcom/wufan/friend/chat/protocol/g;Lcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g;->h3(Lcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method static synthetic a3(Lcom/wufan/friend/chat/protocol/g;ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/g;->f3(ILcom/wufan/friend/chat/protocol/r$b;)V

    return-void
.end method

.method static synthetic b3(Lcom/wufan/friend/chat/protocol/g;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g;->e3(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic c3(Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->k3()V

    return-void
.end method

.method static synthetic d3(Lcom/wufan/friend/chat/protocol/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/g;->B3(I)V

    return-void
.end method

.method private e3(Ljava/lang/Iterable;)V
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
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private f3(ILcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private g3(ILcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private h3(Lcom/wufan/friend/chat/protocol/r$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/r;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i3(Lcom/wufan/friend/chat/protocol/r;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/g;->l3()V

    .line 3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    return-void
.end method

.method private k3()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private l3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static m3()Lcom/wufan/friend/chat/protocol/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    return-object v0
.end method

.method public static p3()Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/g$b;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/g;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static q3(Lcom/wufan/friend/chat/protocol/g;)Lcom/wufan/friend/chat/protocol/g$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/g$b;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g$b;

    return-object p0
.end method

.method public static r3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static s3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static t3(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static u3(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static v3(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static w3(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static x3(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static y3(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method

.method public static z3([B)Lcom/wufan/friend/chat/protocol/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/g;

    return-object p0
.end method


# virtual methods
.method public F1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    return v0
.end method

.method public N0()Ljava/util/List;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public P1(I)Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/r;

    return-object p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/g$a;->a:[I

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/g;->g:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/wufan/friend/chat/protocol/g;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/wufan/friend/chat/protocol/g;->g:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/wufan/friend/chat/protocol/g;->g:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/wufan/friend/chat/protocol/g;->g:Lcom/google/protobuf/Parser;

    return-object p1

    .line 8
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/CodedInputStream;

    .line 9
    check-cast p3, Lcom/google/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 10
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

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

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 15
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 17
    invoke-static {}, Lcom/wufan/friend/chat/protocol/r;->parser()Lcom/google/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
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
    :cond_7
    :pswitch_2
    sget-object p1, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    return-object p1

    .line 24
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 25
    check-cast p3, Lcom/wufan/friend/chat/protocol/g;

    .line 26
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 27
    iget p1, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget v3, p3, Lcom/wufan/friend/chat/protocol/g;->c:I

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    .line 28
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 29
    iget p1, p0, Lcom/wufan/friend/chat/protocol/g;->a:I

    iget p2, p3, Lcom/wufan/friend/chat/protocol/g;->a:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/wufan/friend/chat/protocol/g;->a:I

    :cond_a
    return-object p0

    .line 30
    :pswitch_4
    new-instance p1, Lcom/wufan/friend/chat/protocol/g$b;

    invoke-direct {p1, v0}, Lcom/wufan/friend/chat/protocol/g$b;-><init>(Lcom/wufan/friend/chat/protocol/g$a;)V

    return-object p1

    .line 31
    :pswitch_5
    iget-object p1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 32
    :pswitch_6
    sget-object p1, Lcom/wufan/friend/chat/protocol/g;->f:Lcom/wufan/friend/chat/protocol/g;

    return-object p1

    .line 33
    :pswitch_7
    new-instance p1, Lcom/wufan/friend/chat/protocol/g;

    invoke-direct {p1}, Lcom/wufan/friend/chat/protocol/g;-><init>()V

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 7
    :cond_2
    iput v1, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v1
.end method

.method public n3(I)Lcom/wufan/friend/chat/protocol/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/b0;

    return-object p1
.end method

.method public o3()Ljava/util/List;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/g;->b:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/protocol/g;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method
