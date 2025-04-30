.class public Lcom/join/mgps/adapter/i2;
.super Lcom/join/mgps/adapter/a5;
.source "GameTransferListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/adapter/a5<",
        "Lcom/join/mgps/dto/GameTransferBean;",
        "Lcom/join/mgps/customview/GameTransferListItem;",
        ">;"
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "i2"


# instance fields
.field d:Landroid/content/Context;
    .annotation build Lorg/androidannotations/annotations/RootContext;
    .end annotation
.end field

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/a5;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/adapter/i2;->e:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/i2;->k(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferListItem;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/join/mgps/adapter/a5$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/adapter/a5$a<",
            "Lcom/join/mgps/customview/GameTransferListItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/a5$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/adapter/a5$a;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/GameTransferListItem;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    iget-boolean v1, p0, Lcom/join/mgps/adapter/i2;->e:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/join/mgps/customview/GameTransferListItem;->b(ILandroid/util/SparseArray;Z)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method protected k(Landroid/view/ViewGroup;I)Lcom/join/mgps/customview/GameTransferListItem;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/i2;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/customview/GameTransferListItem_;->d(Landroid/content/Context;)Lcom/join/mgps/customview/GameTransferListItem;

    move-result-object p1

    return-object p1
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/i2;->e:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/a5$a;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/i2;->j(Lcom/join/mgps/adapter/a5$a;I)V

    return-void
.end method
