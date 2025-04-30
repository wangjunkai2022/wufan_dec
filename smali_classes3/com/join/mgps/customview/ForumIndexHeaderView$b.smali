.class Lcom/join/mgps/customview/ForumIndexHeaderView$b;
.super Ljava/lang/Object;
.source "ForumIndexHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumIndexHeaderView;->c(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/RecommendLabelTag;

.field final synthetic b:Lcom/join/mgps/customview/ForumIndexHeaderView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->a:Lcom/join/mgps/dto/RecommendLabelTag;

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
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    invoke-virtual {v0}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object v0, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100fe

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object v0, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView$b;->b:Lcom/join/mgps/customview/ForumIndexHeaderView;

    iget-object p1, p1, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    return-void
.end method
