.class public Lcom/join/mgps/customview/ForumGroupHeaderView;
.super Lcom/join/mgps/customview/ForumBaseHeaderView;
.source "ForumGroupHeaderView.java"


# instance fields
.field c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;

.field i:Lcom/facebook/drawee/view/SimpleDraweeView;

.field j:Lcom/facebook/drawee/view/SimpleDraweeView;

.field k:Lcom/facebook/drawee/view/SimpleDraweeView;

.field l:Lcom/facebook/drawee/view/SimpleDraweeView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Lcom/join/mgps/customview/WrapContentListView;

.field p:Landroid/view/View;

.field q:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/ForumBaseHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/ForumBaseHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0476

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090687

    .line 3
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090acd

    .line 4
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->d:Landroid/widget/TextView;

    const p1, 0x7f090340

    .line 5
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->e:Landroid/widget/TextView;

    const p1, 0x7f090110

    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/view/View;

    const p1, 0x7f090114

    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    const p1, 0x7f09070a

    .line 8
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09070b

    .line 9
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09070c

    .line 10
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09070d

    .line 11
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09070e

    .line 12
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090304

    .line 13
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->m:Landroid/widget/TextView;

    const p1, 0x7f0904e7

    .line 14
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    const p1, 0x7f0912de

    .line 15
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/WrapContentListView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Lcom/join/mgps/customview/WrapContentListView;

    const p1, 0x7f090a21

    .line 16
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->p:Landroid/view/View;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->q:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->o:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090a21

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f090114

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setData(Lcom/join/mgps/dto/ForumData$ForumGroupIndex;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_icon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getForum_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->m:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getIs_joined()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setJoinState(Z)V

    const/4 v0, 0x5

    new-array v3, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object v4, v3, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 9
    aget-object v4, v3, v2

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getLast_joied()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getLast_joied()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/generic/a;

    new-instance v6, Lcom/facebook/drawee/drawable/n;

    const-string v7, "#FFFFFF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/facebook/drawee/drawable/n;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/facebook/drawee/generic/a;->y(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getLast_joied()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v5, 0x8

    .line 14
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->getTop_posts()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumGroupHeaderView;->setTopPosts(Ljava/util/List;)V

    return-void
.end method

.method public setJoinState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    const-string v1, "\u5df2\u52a0\u5165"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->n:Landroid/widget/TextView;

    const-string v1, "\u52a0\u5165\u5c0f\u7ec4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->s:Lcom/join/mgps/dto/ForumData$ForumGroupIndex;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumData$ForumGroupIndex;->setIs_joined(I)V

    :cond_2
    return-void
.end method

.method public setTopPosts(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Ljava/util/ArrayList;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->q:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 8
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v12, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getPid()I

    move-result v6

    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v7, v5

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getBest()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 12
    :goto_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_pic()Z

    move-result v9

    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->isAttach_video()Z

    move-result v10

    .line 14
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getTag_info()Ljava/util/List;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$x;-><init>(ILjava/lang/String;ZZZLjava/util/List;)V

    invoke-direct {v3, v4, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->q:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v2, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumGroupHeaderView;->q:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
