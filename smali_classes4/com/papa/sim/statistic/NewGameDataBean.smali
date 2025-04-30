.class public Lcom/papa/sim/statistic/NewGameDataBean;
.super Ljava/lang/Object;
.source "NewGameDataBean.java"


# instance fields
.field error_msg:Ljava/lang/String;

.field is_success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/NewGameDataBean;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/sim/statistic/NewGameDataBean;->is_success:Z

    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/NewGameDataBean;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setIs_success(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/sim/statistic/NewGameDataBean;->is_success:Z

    return-void
.end method
