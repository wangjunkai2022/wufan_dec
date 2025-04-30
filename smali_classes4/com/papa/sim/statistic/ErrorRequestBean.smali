.class public Lcom/papa/sim/statistic/ErrorRequestBean;
.super Ljava/lang/Object;
.source "ErrorRequestBean.java"


# instance fields
.field private deviceid:Ljava/lang/String;

.field private messages:Lcom/papa/sim/statistic/ErrorRequestMessage;

.field private requesttype:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/ErrorRequestMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->version:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->deviceid:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->requesttype:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->sign:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->messages:Lcom/papa/sim/statistic/ErrorRequestMessage;

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Lcom/papa/sim/statistic/ErrorRequestMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->messages:Lcom/papa/sim/statistic/ErrorRequestMessage;

    return-object v0
.end method

.method public getRequesttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->requesttype:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setMessages(Lcom/papa/sim/statistic/ErrorRequestMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->messages:Lcom/papa/sim/statistic/ErrorRequestMessage;

    return-void
.end method

.method public setRequesttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->requesttype:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestBean;->version:Ljava/lang/String;

    return-void
.end method
