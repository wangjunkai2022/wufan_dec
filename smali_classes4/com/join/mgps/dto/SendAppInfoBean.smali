.class public Lcom/join/mgps/dto/SendAppInfoBean;
.super Ljava/lang/Object;
.source "SendAppInfoBean.java"


# instance fields
.field private appname:Ljava/lang/String;

.field private apppackage:Ljava/lang/String;

.field private times:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/SendAppInfoBean;->appname:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/SendAppInfoBean;->apppackage:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/join/mgps/dto/SendAppInfoBean;->times:J

    return-void
.end method


# virtual methods
.method public getAppname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SendAppInfoBean;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getApppackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SendAppInfoBean;->apppackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SendAppInfoBean;->times:J

    return-wide v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SendAppInfoBean;->appname:Ljava/lang/String;

    return-void
.end method

.method public setApppackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SendAppInfoBean;->apppackage:Ljava/lang/String;

    return-void
.end method

.method public setTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SendAppInfoBean;->times:J

    return-void
.end method
