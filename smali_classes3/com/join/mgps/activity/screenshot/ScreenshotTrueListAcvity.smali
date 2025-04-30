.class public Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;
.super Lcom/BaseFragmentActivity;
.source "ScreenshotTrueListAcvity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0564
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field client:Lcom/join/mgps/rpc/d;

.field context:Landroid/content/Context;

.field fromData:Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field listTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

.field private mPicChsDialog:Landroid/app/Dialog;

.field tableLayout:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field upload:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private ChangIcon()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    const v2, 0x7f1204d0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    const v1, 0x7f0c018d

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x50

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    const v2, 0x7f090c13

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    new-instance v3, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$3;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Lcom/join/mgps/Util/n1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    return-object p0
.end method


# virtual methods
.method afterView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->client:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 3
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->activity:Landroid/app/Activity;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->getTabdata()V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getTabdata()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->gameId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->client:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->h0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->listTables:Ljava/util/List;

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->updateTable(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/Util/n1;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method updateTable(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    .line 4
    new-instance v4, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment_;

    invoke-direct {v4}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment_;-><init>()V

    .line 5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v6, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->gameId:Ljava/lang/String;

    const-string v7, "gameId"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    move-result v6

    const-string v7, "typeId"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    new-instance v5, Lcom/join/mgps/adapter/x$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/join/mgps/adapter/x$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 10
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->fromData:Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    invoke-virtual {v4}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getId()I

    move-result v4

    invoke-virtual {v3}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    move-result v3

    if-ne v4, v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lcom/join/mgps/adapter/x;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/join/mgps/adapter/x;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/x;->d(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->tableLayout:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method upload()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/n1;

    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/Util/n1;-><init>(Landroid/app/Activity;Lcom/join/mgps/Util/n1$a;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->ChangIcon()V

    return-void
.end method
