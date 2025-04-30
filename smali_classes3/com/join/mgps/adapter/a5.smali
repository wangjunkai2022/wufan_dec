.class public abstract Lcom/join/mgps/adapter/a5;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/a5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/a5$a<",
        "TV;>;>;"
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "a5"


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        propagation = .enum Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    add-int v4, v0, v1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
        propagation = .enum Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public c()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public clear()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        propagation = .enum Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method protected abstract d(Landroid/view/ViewGroup;I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/a5$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/join/mgps/adapter/a5$a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/a5$a;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/a5;->d(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/join/mgps/adapter/a5$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public f(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
        propagation = .enum Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move p1, v2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/join/mgps/adapter/a5;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public g(I)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
        propagation = .enum Lorg/androidannotations/annotations/UiThread$Propagation;->REUSE:Lorg/androidannotations/annotations/UiThread$Propagation;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/a5;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/a5;->b:I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/a5;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/a5$a;

    move-result-object p1

    return-object p1
.end method
