.class public Lapp/mgsim/arena/ProtobufferDecoder;
.super Lorg/jboss/netty/handler/codec/frame/a;
.source "ProtobufferDecoder.java"


# static fields
.field private static final HAS_PARSER:Z

.field private static final TAG:Ljava/lang/String; = "ArenaService"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lcom/google/protobuf/MessageLite;

    const-string v2, "getParserForType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 2
    :catchall_0
    sput-boolean v0, Lapp/mgsim/arena/ProtobufferDecoder;->HAS_PARSER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "ParseResponse failure length:"

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->g0()V

    .line 3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readInt()I

    move-result v1

    .line 4
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 5
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->n0()V

    return-object v0

    .line 6
    :cond_1
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/e;->o(I)Lorg/jboss/netty/buffer/e;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    sget-boolean v2, Lapp/mgsim/arena/ProtobufferDecoder;->HAS_PARSER:Z

    if-eqz v2, :cond_2

    .line 8
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->array()[B

    move-result-object p3

    invoke-interface {v2, p3}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/battle/protocol/Response;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->array()[B

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p3

    check-cast p3, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p3

    check-cast p3, Lcom/papa91/battle/protocol/Response;

    :goto_0
    if-nez p3, :cond_3

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object p3

    :catch_0
    move-exception p3

    .line 11
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p2}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    .line 13
    throw p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v0
.end method
