.class public Lcom/join/mgps/dto/PayCenterOrderResponse;
.super Ljava/lang/Object;
.source "PayCenterOrderResponse.java"


# instance fields
.field private action:Ljava/lang/String;

.field private json:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderResponse;->json:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/PayCenterOrderResponse;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderResponse;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayCenterOrderResponse;->json:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderResponse;->action:Ljava/lang/String;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayCenterOrderResponse;->json:Ljava/lang/String;

    return-void
.end method
