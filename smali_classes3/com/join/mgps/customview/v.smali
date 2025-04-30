.class public Lcom/join/mgps/customview/v;
.super Lcom/join/mgps/customview/u;
.source "MyGameDeleteGamePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/v$a;
    }
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/TextView;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field f:Lcom/join/mgps/customview/v$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/u;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/v;->init()V

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/customview/v$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/v;->f:Lcom/join/mgps/customview/v$a;

    return-object v0
.end method

.method public b(Lcom/join/mgps/customview/v$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/v;->f:Lcom/join/mgps/customview/v$a;

    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/join/mgps/customview/u;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/v;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/v;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/customview/v;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u5220\u9664\u201c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u201d\uff1f"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/u;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c053c

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

    iput-object v0, p0, Lcom/join/mgps/customview/v;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090acd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/v;->b:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/v;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/u;->parentView:Landroid/view/View;

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/v;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/v;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/v;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090337

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/v;->f:Lcom/join/mgps/customview/v$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/v;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/v$a;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    goto :goto_0

    :cond_1
    const v0, 0x7f090210

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/u;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
