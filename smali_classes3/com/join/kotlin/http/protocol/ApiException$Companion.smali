.class public final Lcom/join/kotlin/http/protocol/ApiException$Companion;
.super Ljava/lang/Object;
.source "ApiException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/http/protocol/ApiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\u00020\u00068\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0008R\u0016\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u0016\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\u00068\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/join/kotlin/http/protocol/ApiException$Companion;",
        "",
        "",
        "e",
        "Lcom/join/kotlin/http/protocol/ApiException;",
        "build",
        "",
        "CODE_AUTH_INVALID",
        "I",
        "CODE_JSON_PARSE_ERROR",
        "CODE_NET_ERROR",
        "CODE_SERVER_ERROR",
        "CODE_TIMEOUT",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/http/protocol/ApiException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/lang/Throwable;)Lcom/join/kotlin/http/protocol/ApiException;
    .locals 12
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    const/16 v2, 0xfa0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    const/16 v2, 0xfa0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u540e\u518d\u8bd5"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    const/16 v2, 0xfa0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 9
    :cond_3
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_5

    instance-of p1, p1, Lorg/json/JSONException;

    if-eqz p1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    const/16 v1, 0x1388

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "\u7cfb\u7edf\u9519\u8bef"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 11
    :cond_5
    :goto_0
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    const/16 v7, 0xfaa

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "\u6570\u636e\u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    .line 12
    :cond_6
    :goto_1
    new-instance p1, Lcom/join/kotlin/http/protocol/ApiException;

    const/16 v1, 0xff0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/http/protocol/ApiException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    return-object p1
.end method
