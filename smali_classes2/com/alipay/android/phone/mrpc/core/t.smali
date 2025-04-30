.class final Lcom/alipay/android/phone/mrpc/core/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/r;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/t;->a:Lcom/alipay/android/phone/mrpc/core/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 0

    const-wide/32 p1, 0x2bf20

    return-wide p1
.end method
