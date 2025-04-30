.class public Lcom/join/mgps/adapter/g2;
.super Lcom/join/mgps/adapter/a5;
.source "GameTransferHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/adapter/a5<",
        "Lcom/join/mgps/dto/GameTransferBean;",
        "Lcom/join/mgps/customview/GameTransferHistoryListItem;",
        ">;"
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "g2"


# instance fields
.field d:Landroid/content/Context;
    .annotation build Lorg/androidannotations/annotations/RootContext;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/a5;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/g2;->k(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferHistoryListItem;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/join/mgps/adapter/a5$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/adapter/a5$a<",
            "Lcom/join/mgps/customview/GameTransferHistoryListItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/a5$a;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/adapter/a5$a;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/GameTransferHistoryListItem;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameTransferBean;

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/GameTransferHistoryListItem;->b(Lcom/join/mgps/dto/GameTransferBean;)V

    :cond_0
    return-void
.end method

.method protected k(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferHistoryListItem;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/g2;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/customview/GameTransferHistoryListItem_;->e(Landroid/content/Context;)Lcom/join/mgps/customview/GameTransferHistoryListItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/a5$a;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/g2;->j(Lcom/join/mgps/adapter/a5$a;I)V

    return-void
.end method
