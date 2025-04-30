.class public Lcom/join/mgps/dto/WebAccountDataBean;
.super Ljava/lang/Object;
.source "WebAccountDataBean.java"


# instance fields
.field private accountBean:Lcom/join/mgps/dto/AccountBean;

.field private hasLogin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountBean()Lcom/join/mgps/dto/AccountBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WebAccountDataBean;->accountBean:Lcom/join/mgps/dto/AccountBean;

    return-object v0
.end method

.method public isHasLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/WebAccountDataBean;->hasLogin:Z

    return v0
.end method

.method public setAccountBean(Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WebAccountDataBean;->accountBean:Lcom/join/mgps/dto/AccountBean;

    return-void
.end method

.method public setHasLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/WebAccountDataBean;->hasLogin:Z

    return-void
.end method
