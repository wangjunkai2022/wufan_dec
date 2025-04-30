.class public Lcom/join/mgps/dto/Top3bean;
.super Ljava/lang/Object;
.source "Top3bean.java"


# instance fields
.field private appTop1:Lcom/join/mgps/dto/AppBeanMain;

.field private appTop2:Lcom/join/mgps/dto/AppBeanMain;

.field private appTop3:Lcom/join/mgps/dto/AppBeanMain;

.field private intentType:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/dto/AppBeanMain;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/Top3bean;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/Top3bean;->intentType:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/Top3bean;->appTop1:Lcom/join/mgps/dto/AppBeanMain;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/Top3bean;->appTop2:Lcom/join/mgps/dto/AppBeanMain;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/Top3bean;->appTop3:Lcom/join/mgps/dto/AppBeanMain;

    return-void
.end method


# virtual methods
.method public getAppTop1()Lcom/join/mgps/dto/AppBeanMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Top3bean;->appTop1:Lcom/join/mgps/dto/AppBeanMain;

    return-object v0
.end method

.method public getAppTop2()Lcom/join/mgps/dto/AppBeanMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Top3bean;->appTop2:Lcom/join/mgps/dto/AppBeanMain;

    return-object v0
.end method

.method public getAppTop3()Lcom/join/mgps/dto/AppBeanMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Top3bean;->appTop3:Lcom/join/mgps/dto/AppBeanMain;

    return-object v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Top3bean;->intentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Top3bean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAppTop1(Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Top3bean;->appTop1:Lcom/join/mgps/dto/AppBeanMain;

    return-void
.end method

.method public setAppTop2(Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Top3bean;->appTop2:Lcom/join/mgps/dto/AppBeanMain;

    return-void
.end method

.method public setAppTop3(Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Top3bean;->appTop3:Lcom/join/mgps/dto/AppBeanMain;

    return-void
.end method

.method public setIntentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Top3bean;->intentType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Top3bean;->name:Ljava/lang/String;

    return-void
.end method
