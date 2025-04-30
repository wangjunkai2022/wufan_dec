.class public Lcom/switfpass/pay/MainApplication;
.super Landroid/app/Application;


# static fields
.field public static A:Ljava/lang/String; = null

.field public static B:Ljava/lang/String; = null

.field private static a:Ljava/lang/String; = "https://pay.swiftpass.cn/"

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field protected static i:Lcom/switfpass/pay/MainApplication;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://pay.swiftpass.cn/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "pay/unifiedsdkpay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/MainApplication;->b:Ljava/lang/String;

    const-string v0, "https://statecheck.swiftpass.cn"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/switfpass/pay/MainApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "pay/gateway"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/MainApplication;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/switfpass/pay/MainApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/MainApplication;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/switfpass/pay/MainApplication;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "pay/unifiedCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/MainApplication;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/switfpass/pay/MainApplication;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "pay/qqpay?token_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/MainApplication;->g:Ljava/lang/String;

    const-string v0, "http://huangjun.dev.swiftpass.cn/"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->h:Ljava/lang/String;

    const-string v0, "pay.tenpay.native"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->j:Ljava/lang/String;

    const-string v0, "pay.weixin.native"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->k:Ljava/lang/String;

    const-string v0, "pay.weixin.app"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->l:Ljava/lang/String;

    const-string v0, "pay.alipay.native"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->m:Ljava/lang/String;

    const-string v0, "pay.alipay.nativev2"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->n:Ljava/lang/String;

    const-string v0, "pay.alipay.app"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->o:Ljava/lang/String;

    const-string v0, "pay.qq.proxy.micropay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->p:Ljava/lang/String;

    const-string v0, "pay.qq.micropay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->q:Ljava/lang/String;

    const-string v0, "pay.weixin.micropay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->r:Ljava/lang/String;

    const-string v0, "pay.alipay.micropay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->s:Ljava/lang/String;

    const-string v0, "pay.tenpay.wappay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->t:Ljava/lang/String;

    const-string v0, "pay.weixin.wappay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->u:Ljava/lang/String;

    const-string v0, "pay.alipay.wappay"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->v:Ljava/lang/String;

    const-string v0, "pay.alipay.native.towap"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->w:Ljava/lang/String;

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"

    sput-object v0, Lcom/switfpass/pay/MainApplication;->x:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/switfpass/pay/MainApplication;->y:Ljava/lang/String;

    sput-object v0, Lcom/switfpass/pay/MainApplication;->z:Ljava/lang/String;

    sput-object v0, Lcom/switfpass/pay/MainApplication;->A:Ljava/lang/String;

    sput-object v0, Lcom/switfpass/pay/MainApplication;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/switfpass/pay/MainApplication;->i:Lcom/switfpass/pay/MainApplication;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static getContext()Lcom/switfpass/pay/MainApplication;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/MainApplication;->i:Lcom/switfpass/pay/MainApplication;

    return-object v0
.end method
