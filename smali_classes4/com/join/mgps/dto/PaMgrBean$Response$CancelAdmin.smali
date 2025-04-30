.class public Lcom/join/mgps/dto/PaMgrBean$Response$CancelAdmin;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelAdmin"
.end annotation


# instance fields
.field private res:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRes()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$CancelAdmin;->res:Z

    return v0
.end method

.method public setRes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$CancelAdmin;->res:Z

    return-void
.end method
