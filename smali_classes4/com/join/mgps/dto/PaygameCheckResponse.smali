.class public Lcom/join/mgps/dto/PaygameCheckResponse;
.super Ljava/lang/Object;
.source "PaygameCheckResponse.java"


# instance fields
.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaygameCheckResponse;->state:Z

    return v0
.end method

.method public setState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaygameCheckResponse;->state:Z

    return-void
.end method
