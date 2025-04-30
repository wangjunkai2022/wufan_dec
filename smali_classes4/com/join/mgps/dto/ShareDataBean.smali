.class public Lcom/join/mgps/dto/ShareDataBean;
.super Ljava/lang/Object;
.source "ShareDataBean.java"


# instance fields
.field private res:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private userIcon:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ShareDataBean;->type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ShareDataBean;->userId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ShareDataBean;->userName:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ShareDataBean;->res:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getRes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareDataBean;->res:Ljava/util/HashMap;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareDataBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareDataBean;->userIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareDataBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareDataBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setRes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareDataBean;->res:Ljava/util/HashMap;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareDataBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareDataBean;->userIcon:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareDataBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareDataBean;->userName:Ljava/lang/String;

    return-void
.end method
