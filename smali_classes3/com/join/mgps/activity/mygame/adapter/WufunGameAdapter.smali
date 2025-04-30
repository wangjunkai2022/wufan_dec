.class public Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WufunGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$GuesslikeHolder;,
        Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;,
        Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;
    }
.end annotation


# instance fields
.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;->dataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;

    iget-object p1, p1, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$WufunMainItemData;->type:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    iget p1, p1, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->number:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
