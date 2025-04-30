.class public Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;
.super Ljava/lang/Object;
.source "SearchAutoMessageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SearchAutoMessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAutoData"
.end annotation


# instance fields
.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private search_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/mgps/dto/SearchAutoMessageBean;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/SearchAutoMessageBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->this$0:Lcom/join/mgps/dto/SearchAutoMessageBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->game_list:Ljava/util/List;

    return-object v0
.end method

.method public getSearch_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->search_list:Ljava/util/List;

    return-object v0
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->game_list:Ljava/util/List;

    return-void
.end method

.method public setSearch_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchAutoMessageBean$SearchAutoData;->search_list:Ljava/util/List;

    return-void
.end method
