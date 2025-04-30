.class public Lcom/join/mgps/dto/InWorldDataBean;
.super Ljava/lang/Object;
.source "InWorldDataBean.java"


# instance fields
.field in:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/InWorldDataBean;->in:Z

    return v0
.end method

.method public setIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/InWorldDataBean;->in:Z

    return-void
.end method
