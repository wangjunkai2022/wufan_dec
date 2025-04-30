.class public Lcom/join/mgps/activity/InstallAppNoticeActivity$b;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "InstallAppNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/InstallAppNoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/join/mgps/activity/InstallAppNoticeActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->b:Lcom/join/mgps/activity/InstallAppNoticeActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->a:Ljava/util/List;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02c9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090092

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/generic/a;

    const v4, 0x7f0807b1

    invoke-virtual {v3, v4}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->b:Lcom/join/mgps/activity/InstallAppNoticeActivity;

    invoke-virtual {v4, p2}, Lcom/join/mgps/activity/InstallAppNoticeActivity;->isHomePopupAdLocalCached(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/join/mgps/Util/u;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p2}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-static {v4}, Lcom/join/mgps/Util/k0;->j(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 11
    :goto_0
    invoke-virtual {v3, p2}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 12
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 13
    new-instance p2, Lcom/join/mgps/activity/InstallAppNoticeActivity$b$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b$a;-><init>(Lcom/join/mgps/activity/InstallAppNoticeActivity$b;)V

    invoke-virtual {v3, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 14
    invoke-virtual {v3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    const/4 p2, 0x1

    .line 15
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 p2, -0x1

    .line 16
    :try_start_0
    invoke-virtual {p1, v1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 17
    new-instance p1, Lcom/join/mgps/activity/InstallAppNoticeActivity$b$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b$b;-><init>(Lcom/join/mgps/activity/InstallAppNoticeActivity$b;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
