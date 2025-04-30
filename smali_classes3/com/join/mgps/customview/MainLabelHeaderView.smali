.class public Lcom/join/mgps/customview/MainLabelHeaderView;
.super Lcom/join/mgps/customview/ForumBaseHeaderView;
.source "MainLabelHeaderView.java"


# instance fields
.field c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/RelativeLayout;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/view/View;

.field m:Landroid/view/View;

.field n:Landroid/widget/RelativeLayout;

.field private o:Landroid/view/View$OnClickListener;


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

.method public static synthetic b(Lcom/join/mgps/customview/MainLabelHeaderView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->e(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->o:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic e(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p1

    invoke-virtual {p0}, Lcom/join/mgps/dto/MainLabelBean;->getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->getUid()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/join/mgps/activity/CommentSelfListActivity_$r;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$r;

    move-result-object p0

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method


# virtual methods
.method public getPostsFilterSwitch()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c037d

    invoke-static {v0, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090808

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091124

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->d:Landroid/widget/TextView;

    const v0, 0x7f091123

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->e:Landroid/widget/TextView;

    const v0, 0x7f090807

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091122

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->g:Landroid/widget/TextView;

    const v0, 0x7f09115f

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->h:Landroid/widget/TextView;

    const v0, 0x7f090d70

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f091160

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->j:Landroid/widget/TextView;

    const v0, 0x7f09081e

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->k:Landroid/widget/ImageView;

    const v0, 0x7f090d64

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->l:Landroid/view/View;

    const v0, 0x7f090d69

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->m:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/join/mgps/customview/n;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/n;-><init>(Lcom/join/mgps/customview/MainLabelHeaderView;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090d7b

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->n:Landroid/widget/RelativeLayout;

    .line 17
    new-instance v1, Lcom/join/mgps/customview/MainLabelHeaderView$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/MainLabelHeaderView$a;-><init>(Lcom/join/mgps/customview/MainLabelHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFilterVisibility(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->j:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u663e\u793a\u5c0f\u7ec4\u201c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u201d\u5185\u5bb9"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->i:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->i:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->l:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->m:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRlOrderByVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->n:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setViewData(Lcom/join/mgps/dto/MainLabelBean;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_icon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getPosts()I

    move-result v2

    invoke-static {v2}, Lcom/join/mgps/Util/i0;->R(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5e16\u5b50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_desc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->getAvatar_src()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0603db

    const v4, 0x7f070b95

    const v5, 0x7f070b93

    invoke-static {v2, v3, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->B(Landroid/content/Context;III)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v0, Lcom/join/mgps/customview/o;

    invoke-direct {v0, p1}, Lcom/join/mgps/customview/o;-><init>(Lcom/join/mgps/dto/MainLabelBean;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/MainLabelHeaderView;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
