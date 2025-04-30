.class public Lcom/join/mgps/dto/WelcomeInDataBean;
.super Ljava/lang/Object;
.source "WelcomeInDataBean.java"


# instance fields
.field is_success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/WelcomeInDataBean;->is_success:Z

    return v0
.end method

.method public setIs_success(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/WelcomeInDataBean;->is_success:Z

    return-void
.end method
