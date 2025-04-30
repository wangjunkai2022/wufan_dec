.class final Lcom/switfpass/pay/service/e;
.super Lcom/switfpass/pay/thread/b;


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/switfpass/pay/thread/h;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/service/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/switfpass/pay/service/e;->c:Lcom/switfpass/pay/thread/h;

    invoke-direct {p0}, Lcom/switfpass/pay/thread/b;-><init>()V

    return-void
.end method

.method private d()Lcom/switfpass/pay/bean/OrderBena;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lcom/switfpass/pay/bean/OrderBena;

    invoke-direct {v6}, Lcom/switfpass/pay/bean/OrderBena;-><init>()V

    iget-object v0, p0, Lcom/switfpass/pay/service/e;->b:Ljava/lang/String;

    const-string v1, "openid"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/switfpass/pay/thread/d;->c()Lcom/switfpass/pay/thread/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/switfpass/pay/MainApplication;->h:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "spay/sendRedPack"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/switfpass/pay/thread/d;->d(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/switfpass/pay/thread/f;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/switfpass/pay/thread/f;->c()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/switfpass/pay/thread/f;->a:Lorg/json/JSONObject;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    return-object v1

    :catch_0
    iget-object v0, p0, Lcom/switfpass/pay/service/e;->c:Lcom/switfpass/pay/thread/h;

    const-string v2, "\u7ea2\u5305\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5.."

    invoke-virtual {v0, v2}, Lcom/switfpass/pay/thread/h;->onError(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/switfpass/pay/service/e;->d()Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    return-object v0
.end method
