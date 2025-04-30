.class public Lcom/join/mgps/customview/a0;
.super Lcom/join/mgps/customview/u;
.source "MyGameGameOperatePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/a0$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field i:Lcom/join/mgps/customview/a0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/a0;->init()V

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/customview/a0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$a;

    return-object v0
.end method

.method public b(Lcom/join/mgps/customview/a0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$a;

    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    const-string v0, ".apk"

    const/16 v2, 0x8

    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidobb"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "46"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/join/mgps/Util/g;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTips()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u7f51\u6e38"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 15
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_6
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->E(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/mgps/Util/t1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 18
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_7
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->e:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p2, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :goto_2
    invoke-static {p1}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 23
    iget-object p2, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {p2, v0, p1, v3}, Lcom/join/android/app/common/utils/APKUtils;->d(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->f:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0540

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

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->b:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->e:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f0908be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->d:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f09117f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->f:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f091253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/a0;->g:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/a0;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09034a

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/a0$a;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_1
    const v0, 0x7f090337

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/a0$a;->c(Ljava/lang/String;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_3
    const v0, 0x7f090210

    if-ne p1, v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_4
    const v0, 0x7f0900a3

    if-ne p1, v0, :cond_6

    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$a;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/a0$a;->b(Ljava/lang/String;)V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_6
    const v0, 0x7f09117f

    if-ne p1, v0, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/a0;->i:Lcom/join/mgps/customview/a0$a;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/join/mgps/customview/a0;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/a0$a;->d(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
