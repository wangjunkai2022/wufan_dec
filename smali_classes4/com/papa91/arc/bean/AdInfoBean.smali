.class public Lcom/papa91/arc/bean/AdInfoBean;
.super Ljava/lang/Object;
.source "AdInfoBean.java"


# instance fields
.field private main:Lcom/papa91/arc/bean/MainBean;

.field private sub:Lcom/papa91/arc/bean/SubBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMain()Lcom/papa91/arc/bean/MainBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/AdInfoBean;->main:Lcom/papa91/arc/bean/MainBean;

    return-object v0
.end method

.method public getSub()Lcom/papa91/arc/bean/SubBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/AdInfoBean;->sub:Lcom/papa91/arc/bean/SubBean;

    return-object v0
.end method

.method public setMain(Lcom/papa91/arc/bean/MainBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/AdInfoBean;->main:Lcom/papa91/arc/bean/MainBean;

    return-void
.end method

.method public setSub(Lcom/papa91/arc/bean/SubBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/AdInfoBean;->sub:Lcom/papa91/arc/bean/SubBean;

    return-void
.end method
