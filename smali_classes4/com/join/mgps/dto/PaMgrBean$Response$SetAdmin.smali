.class public Lcom/join/mgps/dto/PaMgrBean$Response$SetAdmin;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetAdmin"
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private res:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SetAdmin;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isRes()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SetAdmin;->res:Z

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SetAdmin;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setRes(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$SetAdmin;->res:Z

    return-void
.end method
