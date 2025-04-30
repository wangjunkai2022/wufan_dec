.class Lcom/join/mgps/fragment/o0$j;
.super Ljava/lang/Object;
.source "ForumGroupPostsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o0;->d0(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/join/mgps/fragment/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o0;Lcom/join/mgps/dto/RecommendLabelTag;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o0$j;->c:Lcom/join/mgps/fragment/o0;

    iput-object p2, p0, Lcom/join/mgps/fragment/o0$j;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    iput-object p3, p0, Lcom/join/mgps/fragment/o0$j;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o0$j;->c:Lcom/join/mgps/fragment/o0;

    iget-object p1, p1, Lcom/join/mgps/fragment/o0;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0$j;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/o0$j;->c:Lcom/join/mgps/fragment/o0;

    iget-object p1, p1, Lcom/join/mgps/fragment/o0;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0$j;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o0$j;->c:Lcom/join/mgps/fragment/o0;

    iget-object p1, p1, Lcom/join/mgps/fragment/o0;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/fragment/o0$j;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o0$j;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/o0$j;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
