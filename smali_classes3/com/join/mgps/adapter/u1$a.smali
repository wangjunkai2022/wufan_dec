.class Lcom/join/mgps/adapter/u1$a;
.super Ljava/lang/Object;
.source "GameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/u1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/u1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/u1;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/u1$a;->c:Lcom/join/mgps/adapter/u1;

    iput-object p2, p0, Lcom/join/mgps/adapter/u1$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/join/mgps/adapter/u1$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/u1$a;->c:Lcom/join/mgps/adapter/u1;

    iget-object p1, p1, Lcom/join/mgps/adapter/u1;->d:Lcom/join/mgps/adapter/u1$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/u1$a;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v1, p0, Lcom/join/mgps/adapter/u1$a;->b:I

    invoke-interface {p1, v0, v1}, Lcom/join/mgps/adapter/u1$b;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method
