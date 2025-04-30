.class public Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;
.super Ljava/lang/Object;
.source "GameFromDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpTagInfoBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$DownResBean;,
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$ModelBean;
    }
.end annotation


# instance fields
.field private down_res:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$DownResBean;

.field private model:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$ModelBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDown_res()Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$DownResBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;->down_res:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$DownResBean;

    return-object v0
.end method

.method public getModel()Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$ModelBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;->model:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$ModelBean;

    return-object v0
.end method

.method public setDown_res(Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$DownResBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;->down_res:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$DownResBean;

    return-void
.end method

.method public setModel(Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$ModelBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;->model:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean$ModelBean;

    return-void
.end method
