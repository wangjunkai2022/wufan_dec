.class public Lcom/join/mgps/dto/GameDataBean;
.super Ljava/lang/Object;
.source "GameDataBean.java"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private is_success:Z

.field private msg_info:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameDataBean;->error_msg:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/dto/GameDataBean;->is_success:Z

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDataBean;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_info()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDataBean;->msg_info:I

    return v0
.end method

.method public isIs_success()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameDataBean;->is_success:Z

    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDataBean;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setIs_success(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameDataBean;->is_success:Z

    return-void
.end method

.method public setMsg_info(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDataBean;->msg_info:I

    return-void
.end method
