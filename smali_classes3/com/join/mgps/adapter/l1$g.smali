.class Lcom/join/mgps/adapter/l1$g;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AbsHListView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$g;->d:Lcom/join/mgps/adapter/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AbsHListView;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$g;->d:Lcom/join/mgps/adapter/l1;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1;->n:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->g(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    :cond_0
    return-void
.end method

.method public b(Lit/sephiroth/android/library/widget/AbsHListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$g;->d:Lcom/join/mgps/adapter/l1;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1;->n:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->k(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    :cond_0
    return-void
.end method
