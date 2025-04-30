.class public Lcom/join/mgps/dto/GameTopicRequestBean;
.super Ljava/lang/Object;
.source "GameTopicRequestBean.java"


# instance fields
.field private pn:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/GameTopicRequestBean;->pn:I

    return-void
.end method


# virtual methods
.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameTopicRequestBean;->pn:I

    return v0
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameTopicRequestBean;->pn:I

    return-void
.end method
