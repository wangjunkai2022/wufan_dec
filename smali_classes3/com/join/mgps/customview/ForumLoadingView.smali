.class public Lcom/join/mgps/customview/ForumLoadingView;
.super Landroid/widget/RelativeLayout;
.source "ForumLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ForumLoadingView$e;,
        Lcom/join/mgps/customview/ForumLoadingView$HandleId;
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x4

.field public static final n:I = 0x9

.field public static final o:I = 0xa

.field public static final p:I = 0x10


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/Button;

.field protected h:I

.field private i:Landroid/os/Handler;

.field private j:Lcom/join/mgps/customview/ForumLoadingView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    .line 3
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    .line 6
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    .line 9
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ForumLoadingView;)Lcom/join/mgps/customview/ForumLoadingView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Lcom/join/mgps/customview/ForumLoadingView$e;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumLoadingView;->n()V

    return-void
.end method

.method static synthetic c(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumLoadingView;->o()V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/ForumLoadingView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->p(Z)V

    return-void
.end method

.method static synthetic e(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibilityP(I)V

    return-void
.end method

.method static synthetic f(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibilityP(I)V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgResP(I)V

    return-void
.end method

.method static synthetic h(Lcom/join/mgps/customview/ForumLoadingView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedReloadingResP(I)V

    return-void
.end method

.method static synthetic i(Lcom/join/mgps/customview/ForumLoadingView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsgP(Ljava/lang/String;)V

    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c03bd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0909b5

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->b:Landroid/view/View;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c01d5

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0909b0

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    const v1, 0x7f090d11

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/widget/ImageView;

    const v1, 0x7f090481

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->e:Landroid/widget/TextView;

    const v1, 0x7f0909ac

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->f:Landroid/view/View;

    const v1, 0x7f090e21

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 12
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/customview/ForumLoadingView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumLoadingView$a;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/join/mgps/customview/ForumLoadingView$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumLoadingView$b;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    new-instance v0, Lcom/join/mgps/customview/ForumLoadingView$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ForumLoadingView$c;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p1, Lcom/join/mgps/customview/ForumLoadingView$d;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/ForumLoadingView$d;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->p(Z)V

    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/ForumLoadingView;->p(Z)V

    return-void
.end method

.method private p(Z)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/join/mgps/customview/ForumLoadingView;->b:Landroid/view/View;

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/join/mgps/customview/ForumLoadingView;->c:Landroid/view/View;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Lcom/join/mgps/customview/ForumLoadingView$e;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->c(Z)V

    :cond_5
    return-void
.end method

.method private setFailedImgResP(I)V
    .locals 2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    const-string v0, "\u70b9\u51fb\u67e5\u770b\u76f8\u5173\u5e16\u5b50"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setFailedImgVisibilityP(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private setFailedMsgP(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setFailedReloadingResP(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setReloadingVisibilityP(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLoadingState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    return v0
.end method

.method public j(I)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 5
    iput v2, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    goto :goto_1

    :cond_2
    const/16 v3, 0x9

    if-ne p1, v3, :cond_3

    .line 6
    iput v3, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    const/16 v4, 0xa

    if-ne p1, v4, :cond_4

    .line 9
    iput v4, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    .line 10
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setReloadingVisibility(I)V

    .line 11
    invoke-virtual {p0, v4}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgRes(I)V

    goto :goto_1

    :cond_4
    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    goto :goto_0

    :cond_5
    or-int/2addr p1, v0

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    :goto_0
    const-string p1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedMsg(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v3}, Lcom/join/mgps/customview/ForumLoadingView;->setFailedImgVisibility(I)V

    .line 16
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    const/4 v0, 0x4

    if-ne p1, v2, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_7

    const/4 p1, 0x2

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    .line 17
    :goto_2
    iget-object v3, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    goto :goto_3

    .line 18
    :cond_8
    sget-object p1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_FAILED:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v3, Landroid/os/Message;->what:I

    goto :goto_3

    .line 19
    :cond_9
    sget-object p1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_SUCCESS:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v3, Landroid/os/Message;->what:I

    goto :goto_3

    .line 20
    :cond_a
    sget-object p1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v3, Landroid/os/Message;->what:I

    .line 21
    :goto_3
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcom/join/mgps/customview/ForumLoadingView;->h:I

    :cond_0
    return-void
.end method

.method public setFailedImgRes(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFailedImgVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFailedMsg(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_MSG:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFailedReloadingRes(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_RELOADING_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setListener(Lcom/join/mgps/customview/ForumLoadingView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView;->j:Lcom/join/mgps/customview/ForumLoadingView$e;

    return-void
.end method

.method public setReloadingVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_RELOADING_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
