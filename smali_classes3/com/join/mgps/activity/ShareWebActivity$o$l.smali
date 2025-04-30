.class Lcom/join/mgps/activity/ShareWebActivity$o$l;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->payByPapa(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->p:Lcom/join/mgps/activity/ShareWebActivity$o;

    move-object v1, p2

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->a:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->b:I

    move-object v1, p4

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->d:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->e:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->f:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->g:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->h:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->i:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->j:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->k:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->l:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->m:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->n:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->o:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->b:I

    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PA_OPEN_UID:I

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_NAME:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->MONEY_AMOUNT:Ljava/lang/String;

    const/4 v1, 0x1

    .line 14
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 15
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->k:Ljava/lang/String;

    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->l:Ljava/lang/String;

    iput-object v2, v0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 18
    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->PRIVATEKEY:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->o:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$l;->p:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity;->l2(Lcom/join/mgps/dto/PapayOrder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
