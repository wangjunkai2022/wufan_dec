.class public Lcom/join/mgps/dto/FastEntry;
.super Ljava/lang/Object;
.source "FastEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public the_new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public topic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public will_play:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/FastEntry;->will_play:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/FastEntry;->the_new:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getThe_new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FastEntry;->the_new:Ljava/util/List;

    return-object v0
.end method

.method public getTopic()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FastEntry;->topic:Ljava/util/List;

    return-object v0
.end method

.method public getWill_play()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FastEntry;->will_play:Ljava/util/List;

    return-object v0
.end method

.method public setThe_new(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FastEntry;->the_new:Ljava/util/List;

    return-void
.end method

.method public setTopic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FastEntry;->topic:Ljava/util/List;

    return-void
.end method

.method public setWill_play(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FastEntry;->will_play:Ljava/util/List;

    return-void
.end method
