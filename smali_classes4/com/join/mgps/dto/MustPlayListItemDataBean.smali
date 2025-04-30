.class public Lcom/join/mgps/dto/MustPlayListItemDataBean;
.super Ljava/lang/Object;
.source "MustPlayListItemDataBean.java"


# instance fields
.field private gamelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->title:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->gamelist:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGamelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->gamelist:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setGamelist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->gamelist:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MustPlayListItemDataBean;->title:Ljava/lang/String;

    return-void
.end method
