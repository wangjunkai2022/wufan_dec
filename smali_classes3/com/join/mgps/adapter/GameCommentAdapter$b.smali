.class Lcom/join/mgps/adapter/GameCommentAdapter$b;
.super Ljava/lang/Object;
.source "GameCommentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GameCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/GameCommentAdapter$i;

.field final synthetic b:Lcom/join/mgps/adapter/GameCommentAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GameCommentAdapter;Lcom/join/mgps/adapter/GameCommentAdapter$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapter$b;->b:Lcom/join/mgps/adapter/GameCommentAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapter$b;->a:Lcom/join/mgps/adapter/GameCommentAdapter$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$b;->a:Lcom/join/mgps/adapter/GameCommentAdapter$i;

    invoke-static {v0}, Lcom/join/mgps/adapter/GameCommentAdapter$i;->j(Lcom/join/mgps/adapter/GameCommentAdapter$i;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$b;->a:Lcom/join/mgps/adapter/GameCommentAdapter$i;

    iget-object v0, v0, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$b;->a:Lcom/join/mgps/adapter/GameCommentAdapter$i;

    iget-object v0, v0, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapter$b;->a:Lcom/join/mgps/adapter/GameCommentAdapter$i;

    iget-object v0, v0, Lcom/join/mgps/adapter/GameCommentAdapter$i;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
