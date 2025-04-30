.class Lcom/join/mgps/adapter/r1$g;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/r1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/join/mgps/adapter/r1$r1;

.field final synthetic c:Lcom/join/mgps/adapter/r1$r1;

.field final synthetic d:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;Lcom/join/mgps/adapter/r1$r1;Lcom/join/mgps/adapter/r1$r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$g;->d:Lcom/join/mgps/adapter/r1;

    iput-object p2, p0, Lcom/join/mgps/adapter/r1$g;->b:Lcom/join/mgps/adapter/r1$r1;

    iput-object p3, p0, Lcom/join/mgps/adapter/r1$g;->c:Lcom/join/mgps/adapter/r1$r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/adapter/r1$g;->a:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/r1$g;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$g;->b:Lcom/join/mgps/adapter/r1$r1;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$r1;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$g;->c:Lcom/join/mgps/adapter/r1$r1;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$g;->c:Lcom/join/mgps/adapter/r1$r1;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$g;->c:Lcom/join/mgps/adapter/r1$r1;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/join/mgps/adapter/r1$g;->a:Z

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$g;->c:Lcom/join/mgps/adapter/r1$r1;

    iget-object v0, v0, Lcom/join/mgps/adapter/r1$r1;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
