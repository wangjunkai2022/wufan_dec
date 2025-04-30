.class public final Lcom/papa91/battle/protocol/Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Request.java"

# interfaces
.implements Lcom/papa91/battle/protocol/RequestOrBuilder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Request$Builder;,
        Lcom/papa91/battle/protocol/Request$ProtoType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/papa91/battle/protocol/Request;",
        "Lcom/papa91/battle/protocol/Request$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/RequestOrBuilder;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

.field public static final PARAMS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUESTID_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private account_:Lcom/papa91/battle/protocol/Account;

.field private params_:Lcom/papa91/battle/protocol/Params;

.field private requestId_:J

.field private type_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Request;

    invoke-direct {v0}, Lcom/papa91/battle/protocol/Request;-><init>()V

    sput-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

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

.method static synthetic access$000()Lcom/papa91/battle/protocol/Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/papa91/battle/protocol/Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->mergeParams(Lcom/papa91/battle/protocol/Params;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Request;->clearParams()V

    return-void
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setAccount(Lcom/papa91/battle/protocol/Account;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Account$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setAccount(Lcom/papa91/battle/protocol/Account$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->mergeAccount(Lcom/papa91/battle/protocol/Account;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Request;->clearAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/battle/protocol/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Request;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/battle/protocol/Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Request$ProtoType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setType(Lcom/papa91/battle/protocol/Request$ProtoType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Request;->clearType()V

    return-void
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Request;->setRequestId(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Request;->clearRequestId()V

    return-void
.end method

.method static synthetic access$800(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setParams(Lcom/papa91/battle/protocol/Params;)V

    return-void
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/Request;Lcom/papa91/battle/protocol/Params$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Request;->setParams(Lcom/papa91/battle/protocol/Params$Builder;)V

    return-void
.end method

.method private clearAccount()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    return-void
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    return-void
.end method

.method private clearRequestId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    return-object v0
.end method

.method private mergeAccount(Lcom/papa91/battle/protocol/Account;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/Account;->newBuilder(Lcom/papa91/battle/protocol/Account;)Lcom/papa91/battle/protocol/Account$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    :goto_0
    return-void
.end method

.method private mergeParams(Lcom/papa91/battle/protocol/Params;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    .line 4
    invoke-static {v0}, Lcom/papa91/battle/protocol/Params;->newBuilder(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Request$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Request;)Lcom/papa91/battle/protocol/Request$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Request$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccount(Lcom/papa91/battle/protocol/Account$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    return-void
.end method

.method private setAccount(Lcom/papa91/battle/protocol/Account;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    return-void
.end method

.method private setParams(Lcom/papa91/battle/protocol/Params$Builder;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    return-void
.end method

.method private setParams(Lcom/papa91/battle/protocol/Params;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    return-void
.end method

.method private setRequestId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    return-void
.end method

.method private setType(Lcom/papa91/battle/protocol/Request$ProtoType;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Request$ProtoType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    return-void
.end method

.method private setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Request$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/papa91/battle/protocol/Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Lcom/papa91/battle/protocol/Request;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/papa91/battle/protocol/Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    invoke-direct {p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p2, Lcom/papa91/battle/protocol/Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/papa91/battle/protocol/Request;->PARSER:Lcom/google/protobuf/Parser;

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

    const/16 v3, 0x8

    if-eq p1, v3, :cond_9

    const/16 v3, 0x10

    if-eq p1, v3, :cond_8

    const/16 v3, 0x18

    if-eq p1, v3, :cond_7

    const/16 v3, 0x22

    if-eq p1, v3, :cond_5

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 14
    :goto_2
    invoke-static {}, Lcom/papa91/battle/protocol/Account;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Account;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    goto :goto_1

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 19
    :goto_3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Params;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1, v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    goto :goto_1

    .line 23
    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 24
    iput p1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    goto :goto_1

    .line 25
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Request;->version_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_a
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 26
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    :goto_5
    throw p1

    .line 30
    :cond_b
    :pswitch_2
    sget-object p1, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    return-object p1

    .line 31
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    .line 32
    check-cast p3, Lcom/papa91/battle/protocol/Request;

    .line 33
    iget p1, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget v3, p3, Lcom/papa91/battle/protocol/Request;->version_:I

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    .line 34
    iget p1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    iget v3, p3, Lcom/papa91/battle/protocol/Request;->type_:I

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    .line 35
    iget-wide v3, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_a

    :cond_10
    const/4 p1, 0x0

    :goto_a
    iget-wide v7, p3, Lcom/papa91/battle/protocol/Request;->requestId_:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    .line 36
    iget-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    iget-object v0, p3, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    .line 37
    iget-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    iget-object p3, p3, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    invoke-interface {p2, p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Account;

    iput-object p1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    .line 38
    sget-object p1, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 39
    :pswitch_4
    new-instance p1, Lcom/papa91/battle/protocol/Request$Builder;

    invoke-direct {p1, v0}, Lcom/papa91/battle/protocol/Request$Builder;-><init>(Lcom/papa91/battle/protocol/Request$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 40
    :pswitch_6
    sget-object p1, Lcom/papa91/battle/protocol/Request;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Request;

    return-object p1

    .line 41
    :pswitch_7
    new-instance p1, Lcom/papa91/battle/protocol/Request;

    invoke-direct {p1}, Lcom/papa91/battle/protocol/Request;-><init>()V

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

.method public getAccount()Lcom/papa91/battle/protocol/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/Account;->getDefaultInstance()Lcom/papa91/battle/protocol/Account;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParams()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    sget-object v2, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Request$ProtoType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 5
    iget v2, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v3, 0x3

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request;->getParams()Lcom/papa91/battle/protocol/Params;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request;->getAccount()Lcom/papa91/battle/protocol/Account;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iput v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return v0
.end method

.method public getType()Lcom/papa91/battle/protocol/Request$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    invoke-static {v0}, Lcom/papa91/battle/protocol/Request$ProtoType;->forNumber(I)Lcom/papa91/battle/protocol/Request$ProtoType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Request$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Request$ProtoType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    return v0
.end method

.method public hasAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Request;->version_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    sget-object v1, Lcom/papa91/battle/protocol/Request$ProtoType;->UNDEFINED_REQUEST:Lcom/papa91/battle/protocol/Request$ProtoType;

    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Request$ProtoType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lcom/papa91/battle/protocol/Request;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Request;->requestId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->params_:Lcom/papa91/battle/protocol/Params;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request;->getParams()Lcom/papa91/battle/protocol/Params;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Request;->account_:Lcom/papa91/battle/protocol/Account;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Request;->getAccount()Lcom/papa91/battle/protocol/Account;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    return-void
.end method
