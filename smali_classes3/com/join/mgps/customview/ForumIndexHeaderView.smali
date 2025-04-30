.class public Lcom/join/mgps/customview/ForumIndexHeaderView;
.super Landroid/widget/LinearLayout;
.source "ForumIndexHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ForumIndexHeaderView$c;
    }
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field

.field C:Landroid/view/animation/Animation;

.field D:Landroid/widget/LinearLayout$LayoutParams;

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field F:Landroid/view/View$OnClickListener;

.field G:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

.field a:Lcom/join/mgps/customview/ViewPagerWithADs;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Lcom/join/mgps/customview/WrapContentListView;

.field g:Landroid/widget/TextView;

.field h:Landroid/view/View;

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Lcom/join/mgps/customview/MyFlowLayout;

.field n:Landroid/view/View;

.field o:Landroid/view/View;

.field p:Landroid/widget/TextView;

.field q:Landroid/view/View;

.field r:Landroid/view/View;

.field s:Landroid/view/View;

.field t:Lcom/facebook/drawee/view/SimpleDraweeView;

.field u:Lcom/facebook/drawee/view/SimpleDraweeView;

.field v:Lcom/facebook/drawee/view/SimpleDraweeView;

.field w:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Landroid/view/View$OnClickListener;

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->a(Landroid/content/Context;)V

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Landroid/view/View$OnClickListener;

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->a(Landroid/content/Context;)V

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Landroid/view/View$OnClickListener;

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f0c0477

    .line 2
    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0900a0

    .line 3
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/ViewPagerWithADs;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    const p1, 0x7f090df7

    .line 4
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Landroid/view/View;

    const p1, 0x7f09100f

    .line 5
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->c:Landroid/widget/TextView;

    const p1, 0x7f090a7b

    .line 6
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->d:Landroid/view/View;

    const p1, 0x7f090a91

    .line 7
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->e:Landroid/widget/TextView;

    const p1, 0x7f0912de

    .line 8
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/WrapContentListView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->f:Lcom/join/mgps/customview/WrapContentListView;

    const p1, 0x7f09050c

    .line 9
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->g:Landroid/widget/TextView;

    const p1, 0x7f0908f5

    .line 10
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->h:Landroid/view/View;

    const p1, 0x7f090d4a

    .line 11
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->i:Landroid/widget/LinearLayout;

    const p1, 0x7f090d4b

    .line 12
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->j:Landroid/widget/LinearLayout;

    const p1, 0x7f0904f6

    .line 13
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->l:Landroid/view/View;

    const p1, 0x7f090d4c

    .line 14
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->k:Landroid/view/View;

    const p1, 0x7f0904e2

    .line 15
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/MyFlowLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Lcom/join/mgps/customview/MyFlowLayout;

    const p1, 0x7f090cfe

    .line 16
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Landroid/view/View;

    const p1, 0x7f0907d5

    .line 17
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->o:Landroid/view/View;

    const p1, 0x7f0904ff

    .line 18
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/widget/TextView;

    const p1, 0x7f090901

    .line 19
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->r:Landroid/view/View;

    const p1, 0x7f0908f7

    .line 20
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->s:Landroid/view/View;

    const p1, 0x7f090d43

    .line 21
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/view/View;

    const p1, 0x7f09088e

    .line 22
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->t:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09088f

    .line 23
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090890

    .line 24
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090891

    .line 25
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->w:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->r:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->s:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->f:Lcom/join/mgps/customview/WrapContentListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->g()V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f090f20

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-object v2

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v2, Lcom/join/mgps/customview/ForumIndexHeaderView$b;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView$b;-><init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/dto/RecommendLabelTag;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-object v0
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 4
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->c(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private f(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 4

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->y(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float v0, v0, v2

    const v2, 0x40047ae1    # 2.07f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 6
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 7
    iput-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/i0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v1, "forum"

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 14
    new-instance v0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/customview/ForumIndexHeaderView$a;-><init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/Util/IntentDateBean;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setBanner(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p1, 0x4

    new-array v0, p1, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->t:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->w:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 6
    iget-object v6, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/BannerBean;

    .line 7
    aget-object v7, v0, v1

    .line 8
    invoke-direct {p0, v7, v6, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->f(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V

    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_3

    .line 9
    :cond_2
    :try_start_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40c00000    # 6.0f

    .line 10
    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 12
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    const/16 v3, 0x8

    if-nez v1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_6

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_7

    .line 18
    aget-object p1, v0, v4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_7
    :goto_2
    return-void
.end method

.method private setBanner1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071146

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v3, p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v4, p1

    const/16 v5, 0xfa0

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/ViewPagerWithADs;->setAll(Landroid/content/Context;Ljava/util/List;IIII)V

    return-void

    .line 11
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method e()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    move-result v0

    const-string v1, "\u53d1\u73b0\u66f4\u591a\u5c0f\u7ec4"

    const-string v2, "\u5168\u90e8"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->c:Landroid/widget/TextView;

    const-string v3, "\u63a8\u8350\u5c0f\u7ec4"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->c:Landroid/widget/TextView;

    const-string v3, "\u6211\u7684\u5c0f\u7ec4"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setBanner(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedIds()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v2, ","

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSelectedLabel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Ljava/util/List;

    return-object v0
.end method

.method public getmOnMeasureHeight()Lcom/join/mgps/customview/ForumIndexHeaderView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    return-object v0
.end method

.method public h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, -0x3c4c0000    # -360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const p1, 0x7f0904f6

    if-ne v0, p1, :cond_1

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setLabelsTipVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->r0(Z)V

    goto :goto_0

    :cond_1
    const p1, 0x7f090a7b

    if-ne v0, p1, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f090901

    if-ne v0, p1, :cond_4

    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0908f5

    if-eq v0, p1, :cond_5

    const p1, 0x7f0908f7

    if-ne v0, p1, :cond_6

    .line 9
    :cond_5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    .line 7
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0, v8, p1, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 10
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 11
    instance-of v10, v9, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v10, :cond_1

    .line 12
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 15
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 16
    :cond_1
    instance-of v10, v9, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v10, :cond_2

    .line 17
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 19
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 20
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 21
    :cond_2
    instance-of v10, v9, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v10, :cond_3

    .line 22
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iget v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 24
    iget v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 25
    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 26
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v1, p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ne v3, p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v7

    .line 28
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    if-eqz p1, :cond_8

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_7

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 32
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    add-int/2addr v7, v5

    invoke-interface {p1, v7}, Lcom/join/mgps/customview/ForumIndexHeaderView$c;->g(I)V

    :cond_8
    return-void
.end method

.method public setBannerData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setBanner(Ljava/util/List;)V

    return-void
.end method

.method public setHeaderClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public declared-synchronized setHomepageRecommendGroup(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->e()V

    .line 11
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/RecommenGroup;

    .line 13
    new-instance v9, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    sget-object v10, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getIcon_src()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getName()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getToday_posts()I

    move-result v6

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getFid()I

    move-result v7

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    move-result v8

    move-object v1, v11

    move v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1$z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V

    invoke-direct {v9, v10, v11}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {v1, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e(Lcom/join/mgps/adapter/ForumBaseAdapter$n1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Lcom/join/mgps/adapter/ForumBaseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public setHomepageRecommendGroupMy(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    return-void
.end method

.method public setHomepageRecommendLabel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->d()V

    return-void
.end method

.method public setLabelsTipVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->k:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLabelsVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Lcom/join/mgps/customview/MyFlowLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setNoForumBanner()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->a:Lcom/join/mgps/customview/ViewPagerWithADs;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setmOnMeasureHeight(Lcom/join/mgps/customview/ForumIndexHeaderView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    return-void
.end method
