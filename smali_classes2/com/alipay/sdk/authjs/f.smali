.class final Lcom/alipay/sdk/authjs/f;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/a;

.field final synthetic b:Lcom/alipay/sdk/authjs/d;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/authjs/f;->b:Lcom/alipay/sdk/authjs/d;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/f;->a:Lcom/alipay/sdk/authjs/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "toastCallBack"

    const-string v2, "true"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    new-instance v1, Lcom/alipay/sdk/authjs/a;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/alipay/sdk/authjs/f;->a:Lcom/alipay/sdk/authjs/a;

    iget-object v2, v2, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 6
    iget-object v0, p0, Lcom/alipay/sdk/authjs/f;->b:Lcom/alipay/sdk/authjs/d;

    iget-object v0, v0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/authjs/c;->a(Lcom/alipay/sdk/authjs/a;)V

    return-void
.end method
