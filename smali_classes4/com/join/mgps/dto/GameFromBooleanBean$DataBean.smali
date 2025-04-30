.class public Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;
.super Ljava/lang/Object;
.source "GameFromBooleanBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromBooleanBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private code:I

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->code:I

    return v0
.end method

.method public isState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->state:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->code:I

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameFromBooleanBean$DataBean;->state:Z

    return-void
.end method
