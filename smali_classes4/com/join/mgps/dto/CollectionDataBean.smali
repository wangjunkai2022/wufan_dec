.class public Lcom/join/mgps/dto/CollectionDataBean;
.super Ljava/lang/Object;
.source "CollectionDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_count:I

.field private comment_switch:I

.field private game_count:Ljava/lang/String;

.field private info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBeanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBeanInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBean;->tpl_type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/CollectionDataBean;->game_count:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/CollectionDataBean;->info:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getComment_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionDataBean;->comment_count:I

    return v0
.end method

.method public getComment_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionDataBean;->comment_switch:I

    return v0
.end method

.method public getGame_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionDataBean;->game_count:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBeanInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionDataBean;->info:Ljava/util/List;

    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionDataBean;->tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public setComment_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionDataBean;->comment_count:I

    return-void
.end method

.method public setComment_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionDataBean;->comment_switch:I

    return-void
.end method

.method public setGame_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBean;->game_count:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBeanInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBean;->info:Ljava/util/List;

    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionDataBean;->tpl_type:Ljava/lang/String;

    return-void
.end method
