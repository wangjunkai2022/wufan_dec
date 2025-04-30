.class public Lcom/switfpass/pay/service/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/switfpass/pay/enmu/LocalRetCode;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/switfpass/pay/enmu/LocalRetCode;->ERR_OTHER:Lcom/switfpass/pay/enmu/LocalRetCode;

    iput-object v0, p0, Lcom/switfpass/pay/service/a;->a:Lcom/switfpass/pay/enmu/LocalRetCode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "access_token"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/switfpass/pay/service/a;->b:Ljava/lang/String;

    const-string p1, "expires_in"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/switfpass/pay/service/a;->c:I

    sget-object p1, Lcom/switfpass/pay/enmu/LocalRetCode;->ERR_OK:Lcom/switfpass/pay/enmu/LocalRetCode;

    iput-object p1, p0, Lcom/switfpass/pay/service/a;->a:Lcom/switfpass/pay/enmu/LocalRetCode;

    return-void

    :cond_1
    const-string p1, "errcode"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/switfpass/pay/service/a;->d:I

    const-string p1, "errmsg"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/switfpass/pay/service/a;->e:Ljava/lang/String;

    sget-object p1, Lcom/switfpass/pay/enmu/LocalRetCode;->ERR_JSON:Lcom/switfpass/pay/enmu/LocalRetCode;

    iput-object p1, p0, Lcom/switfpass/pay/service/a;->a:Lcom/switfpass/pay/enmu/LocalRetCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_2
    :goto_0
    sget-object p1, Lcom/switfpass/pay/enmu/LocalRetCode;->ERR_JSON:Lcom/switfpass/pay/enmu/LocalRetCode;

    iput-object p1, p0, Lcom/switfpass/pay/service/a;->a:Lcom/switfpass/pay/enmu/LocalRetCode;

    return-void
.end method
