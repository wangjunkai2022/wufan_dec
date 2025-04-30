.class public Lcom/join/mgps/dto/PopupAdBean;
.super Ljava/lang/Object;
.source "PopupAdBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_switch:Ljava/lang/String;

.field private big_pic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private more:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private small_pic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private start_up_counts:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PopupAdBean;->ad_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getBig_pic()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PopupAdBean;->big_pic:Ljava/util/List;

    return-object v0
.end method

.method public getMore()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PopupAdBean;->more:Ljava/util/List;

    return-object v0
.end method

.method public getSmall_pic()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PopupAdBean;->small_pic:Ljava/util/List;

    return-object v0
.end method

.method public getStart_up_counts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PopupAdBean;->start_up_counts:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PopupAdBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PopupAdBean;->ad_switch:Ljava/lang/String;

    return-void
.end method

.method public setBig_pic(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PopupAdBean;->big_pic:Ljava/util/List;

    return-void
.end method

.method public setMore(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PopupAdBean;->more:Ljava/util/List;

    return-void
.end method

.method public setSmall_pic(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PopupAdBean;->small_pic:Ljava/util/List;

    return-void
.end method

.method public setStart_up_counts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PopupAdBean;->start_up_counts:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PopupAdBean;->tag:Ljava/lang/String;

    return-void
.end method
