.class public Lcom/join/mgps/customview/ForumMyHeaderView;
.super Lcom/join/mgps/customview/ForumBaseHeaderView;
.source "ForumMyHeaderView.java"


# instance fields
.field c:Landroid/view/View;

.field d:Landroid/view/View;


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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->a(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0478

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090908

    .line 3
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumMyHeaderView;->c:Landroid/view/View;

    const p1, 0x7f0908f1

    .line 4
    invoke-static {p0, p1}, Lcom/join/mgps/Util/p2;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/ForumMyHeaderView;->d:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/ForumMyHeaderView;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/ForumMyHeaderView;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090908

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goForumMyPostsActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0908f1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goForumProfileCommentActivity(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
