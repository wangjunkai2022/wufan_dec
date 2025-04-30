.class final Lcom/alipay/android/phone/mrpc/core/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mrpc/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/p;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mrpc/core/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/p$a;->a:Lcom/alipay/android/phone/mrpc/core/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mrpc/core/p;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/p$a;-><init>(Lcom/alipay/android/phone/mrpc/core/p;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object p2, p0, Lcom/alipay/android/phone/mrpc/core/p$a;->a:Lcom/alipay/android/phone/mrpc/core/p;

    invoke-static {p2}, Lcom/alipay/android/phone/mrpc/core/p;->a(Lcom/alipay/android/phone/mrpc/core/p;)Lcom/alipay/android/phone/mrpc/core/p$b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alipay/android/phone/mrpc/core/p$b;->a:Ljava/lang/String;

    iget v1, p2, Lcom/alipay/android/phone/mrpc/core/p$b;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/p;->d(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object p1

    iget v0, p2, Lcom/alipay/android/phone/mrpc/core/p$b;->b:I

    iget-object p2, p2, Lcom/alipay/android/phone/mrpc/core/p$b;->a:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
