.class Lcom/join/mgps/activity/ShareWebActivity$o$j;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->payByPapa(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->m:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->a:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->b:I

    iput-object p4, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->e:Ljava/lang/String;

    iput p7, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->f:I

    iput-object p8, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->k:Ljava/lang/String;

    iput-object p13, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/PapayOrder;

    invoke-direct {v0}, Lcom/join/mgps/dto/PapayOrder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->b:I

    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->f:I

    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    const-string v1, ""

    .line 9
    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    const/4 v1, 0x1

    .line 13
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 14
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->k:Ljava/lang/String;

    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->l:Ljava/lang/String;

    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 17
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$j;->m:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity;->l2(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
