.class final Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;
.super Ljava/lang/Object;
.source "RpcEventFactory.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/psk/eventmodule/net/api/RpcEventFactory;->initClient()Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\n \u0001*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lokhttp3/Interceptor$Chain;",
        "kotlin.jvm.PlatformType",
        "chain",
        "Lokhttp3/Response;",
        "intercept",
        "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;

    invoke-direct {v0}, Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;-><init>()V

    sput-object v0, Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;->INSTANCE:Lcom/psk/eventmodule/net/api/RpcEventFactory$initClient$interceptor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "charset"

    const-string v2, "UTF-8"

    .line 4
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
