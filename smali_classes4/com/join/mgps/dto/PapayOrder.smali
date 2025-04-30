.class public Lcom/join/mgps/dto/PapayOrder;
.super Ljava/lang/Object;
.source "PapayOrder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public APPKEY:Ljava/lang/String;

.field public APP_DISTRICT:I

.field public APP_EXT1:Ljava/lang/String;

.field public APP_EXT2:Ljava/lang/String;

.field public APP_NAME:Ljava/lang/String;

.field public APP_ORDER_ID:Ljava/lang/String;

.field public APP_SERVER:I

.field public APP_USER_ID:Ljava/lang/String;

.field public APP_USER_NAME:Ljava/lang/String;

.field public MONEY_AMOUNT:Ljava/lang/String;

.field public NOTIFY_URI:Ljava/lang/String;

.field public ORDERTYPE:I

.field public PAYORRECHARGE:I

.field public PAYSHOWTYPE:I

.field public PAYTYPE:I

.field public PA_OPEN_UID:I

.field public PRIVATEKEY:Ljava/lang/String;

.field public PRODUCT_ID:Ljava/lang/String;

.field public PRODUCT_NAME:Ljava/lang/String;

.field public TOKEN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->PAYORRECHARGE:I

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->ORDERTYPE:I

    .line 4
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->PAYTYPE:I

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->PAYSHOWTYPE:I

    const-string v1, "qh97"

    .line 6
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->APPKEY:Ljava/lang/String;

    const-string v1, "Se+mLqD-mV@y6^Z+97"

    .line 7
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->PRIVATEKEY:Ljava/lang/String;

    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 8
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->APP_NAME:Ljava/lang/String;

    const-string v1, "100001"

    .line 9
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->PRODUCT_ID:Ljava/lang/String;

    const-string v2, "10001"

    .line 10
    iput-object v2, p0, Lcom/join/mgps/dto/PapayOrder;->APP_ORDER_ID:Ljava/lang/String;

    const-string v2, "\u609f\u996d\u7528\u6237"

    .line 11
    iput-object v2, p0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_NAME:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/join/mgps/dto/PapayOrder;->APP_USER_ID:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_DISTRICT:I

    .line 14
    iput v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_SERVER:I

    const-string v0, "http://testwallet.5fun.com"

    .line 15
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->NOTIFY_URI:Ljava/lang/String;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT1:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->APP_EXT2:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/join/mgps/dto/PapayOrder;->TOKEN:Ljava/lang/String;

    return-void
.end method
