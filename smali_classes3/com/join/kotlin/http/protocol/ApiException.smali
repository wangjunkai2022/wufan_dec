.class public Lcom/join/kotlin/http/protocol/ApiException;
.super Ljava/lang/RuntimeException;
.source "ApiException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/http/protocol/ApiException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 \u00172\u00060\u0001j\u0002`\u0002:\u0001\u0017B%\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010\u0003R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/join/kotlin/http/protocol/ApiException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "T",
        "Lcom/join/mgps/dto/ResponseModel;",
        "toResponse",
        "",
        "cause",
        "Ljava/lang/Throwable;",
        "getCause",
        "()Ljava/lang/Throwable;",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "",
        "error",
        "I",
        "getError",
        "()I",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "Companion",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final CODE_AUTH_INVALID:I = 0x191

.field public static final CODE_JSON_PARSE_ERROR:I = 0xfaa

.field public static final CODE_NET_ERROR:I = 0xfa0

.field public static final CODE_SERVER_ERROR:I = 0x1388

.field public static final CODE_TIMEOUT:I = 0xff0

.field public static final Companion:Lcom/join/kotlin/http/protocol/ApiException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final error:I

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/http/protocol/ApiException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/http/protocol/ApiException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/http/protocol/ApiException;->Companion:Lcom/join/kotlin/http/protocol/ApiException$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/join/kotlin/http/protocol/ApiException;->error:I

    iput-object p2, p0, Lcom/join/kotlin/http/protocol/ApiException;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/kotlin/http/protocol/ApiException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/protocol/ApiException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/http/protocol/ApiException;->error:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/http/protocol/ApiException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final toResponse()Lcom/join/mgps/dto/ResponseModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/join/mgps/dto/ResponseModel<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ResponseModel;

    iget v1, p0, Lcom/join/kotlin/http/protocol/ApiException;->error:I

    invoke-virtual {p0}, Lcom/join/kotlin/http/protocol/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lcom/join/mgps/dto/ResponseModel;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
