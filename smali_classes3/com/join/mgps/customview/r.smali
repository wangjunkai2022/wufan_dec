.class public Lcom/join/mgps/customview/r;
.super Lcom/join/mgps/customview/u;
.source "ModGameDeleteGamePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/r$a;
    }
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field o:Lcom/join/mgps/customview/r$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/r;->init()V

    return-void
.end method

.method private d(ZLandroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080613

    .line 1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f080612

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/r;->m:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/join/mgps/customview/r;->n:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/r;->e:Landroid/widget/TextView;

    const-string p2, "#FFB6B6B6"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/r;->e:Landroid/widget/TextView;

    const-string p2, "#FFFF4E4E"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/customview/r$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/r;->o:Lcom/join/mgps/customview/r$a;

    return-object v0
.end method

.method public b(Lcom/join/mgps/customview/r$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/r;->o:Lcom/join/mgps/customview/r$a;

    return-void
.end method

.method public c(Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {p1, p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p2, v0}, Lg1/f;->C([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    sget-object v0, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/r;->h:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/r;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/r;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/r;->g:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/r;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c053a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090acd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->c:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090692

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090ad1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->d:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f09080f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->i:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090829

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->j:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090d6a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/r;->k:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090d7c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/r;->l:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->e:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/r;->f:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/r;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/r;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/r;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090337

    if-ne p1, v0, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/join/mgps/customview/r;->m:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/customview/r;->n:Z

    if-eqz v0, :cond_5

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/r;->o:Lcom/join/mgps/customview/r$a;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/r;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/join/mgps/customview/r;->n:Z

    iget-object v3, p0, Lcom/join/mgps/customview/r;->g:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/join/mgps/customview/r$a;->a(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_2
    const v0, 0x7f090210

    if-ne p1, v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_3
    const v0, 0x7f090d6a

    if-ne p1, v0, :cond_4

    .line 7
    iget-boolean p1, p0, Lcom/join/mgps/customview/r;->m:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/join/mgps/customview/r;->m:Z

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/r;->i:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/r;->d(ZLandroid/widget/ImageView;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f090d7c

    if-ne p1, v0, :cond_5

    .line 9
    iget-boolean p1, p0, Lcom/join/mgps/customview/r;->n:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/join/mgps/customview/r;->n:Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/r;->j:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/r;->d(ZLandroid/widget/ImageView;)V

    :cond_5
    :goto_0
    return-void
.end method
