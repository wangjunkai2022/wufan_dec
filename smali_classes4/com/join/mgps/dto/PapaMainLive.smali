.class public Lcom/join/mgps/dto/PapaMainLive;
.super Ljava/lang/Object;
.source "PapaMainLive.java"


# instance fields
.field private first:Lcom/join/mgps/dto/PapaMainLiveFirst;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapaMainLivelistItem;",
            ">;"
        }
    .end annotation
.end field

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirst()Lcom/join/mgps/dto/PapaMainLiveFirst;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLive;->first:Lcom/join/mgps/dto/PapaMainLiveFirst;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapaMainLivelistItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLive;->list:Ljava/util/List;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLive;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLive;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setFirst(Lcom/join/mgps/dto/PapaMainLiveFirst;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLive;->first:Lcom/join/mgps/dto/PapaMainLiveFirst;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PapaMainLivelistItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLive;->list:Ljava/util/List;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLive;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLive;->title:Ljava/lang/String;

    return-void
.end method
