.class public Lcom/join/mgps/activity/login/LoginjiguangRequest;
.super Lcom/join/mgps/activity/login/LoginBase;
.source "LoginjiguangRequest.java"


# instance fields
.field private loginToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginjiguangRequest;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginjiguangRequest;->loginToken:Ljava/lang/String;

    return-void
.end method
