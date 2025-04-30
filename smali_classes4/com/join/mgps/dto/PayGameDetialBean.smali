.class public Lcom/join/mgps/dto/PayGameDetialBean;
.super Ljava/lang/Object;
.source "PayGameDetialBean.java"


# instance fields
.field private game_info:Lcom/join/mgps/dto/CollectionBeanSub;

.field private order_info:Lcom/join/mgps/dto/PayOrderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGameDetialBean;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    return-object v0
.end method

.method public getOrder_info()Lcom/join/mgps/dto/PayOrderInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayGameDetialBean;->order_info:Lcom/join/mgps/dto/PayOrderInfo;

    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGameDetialBean;->game_info:Lcom/join/mgps/dto/CollectionBeanSub;

    return-void
.end method

.method public setOrder_info(Lcom/join/mgps/dto/PayOrderInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayGameDetialBean;->order_info:Lcom/join/mgps/dto/PayOrderInfo;

    return-void
.end method
