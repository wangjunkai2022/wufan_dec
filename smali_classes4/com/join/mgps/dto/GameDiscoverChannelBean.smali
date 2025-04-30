.class public Lcom/join/mgps/dto/GameDiscoverChannelBean;
.super Ljava/lang/Object;
.source "GameDiscoverChannelBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private broadcast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private d_discover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private s_channel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private the_new:Lcom/join/mgps/dto/GameDiscoverTheNewBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadcast()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->broadcast:Ljava/util/List;

    return-object v0
.end method

.method public getD_discover()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->d_discover:Ljava/util/List;

    return-object v0
.end method

.method public getS_channel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->s_channel:Ljava/util/List;

    return-object v0
.end method

.method public getThe_new()Lcom/join/mgps/dto/GameDiscoverTheNewBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->the_new:Lcom/join/mgps/dto/GameDiscoverTheNewBean;

    return-object v0
.end method

.method public setBroadcast(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->broadcast:Ljava/util/List;

    return-void
.end method

.method public setD_discover(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->d_discover:Ljava/util/List;

    return-void
.end method

.method public setS_channel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->s_channel:Ljava/util/List;

    return-void
.end method

.method public setThe_new(Lcom/join/mgps/dto/GameDiscoverTheNewBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDiscoverChannelBean;->the_new:Lcom/join/mgps/dto/GameDiscoverTheNewBean;

    return-void
.end method
