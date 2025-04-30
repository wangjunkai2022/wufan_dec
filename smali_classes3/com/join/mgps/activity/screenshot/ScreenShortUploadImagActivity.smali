.class public Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;
.super Lcom/BaseActivity;
.source "ScreenShortUploadImagActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0568
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field commitMessage:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog:Lcom/join/mgps/dialog/x0;

.field filePath:Ljava/io/File;

.field finishButn:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field imagepath:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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

.field mContext:Landroid/content/Context;

.field private mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

.field private mPicChsDialog:Landroid/app/Dialog;

.field selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field typeId:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method

.method private ChangIcon()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f1204d0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

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
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    const v1, 0x7f090266

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    const v2, 0x7f090c13

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    new-instance v3, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$3;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$4;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$5;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPicChsDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)Lcom/join/mgps/Util/n1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    return-object p0
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->activity:Landroid/app/Activity;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/x0;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 9
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/n1;

    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/Util/n1;-><init>(Landroid/app/Activity;Lcom/join/mgps/Util/n1$a;Z)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "datas"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity$2;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->typeId:I

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setCurrentTab(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
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

.method finishButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->commitMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u70b9\u8bc4\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadImagData(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u622a\u56fe"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method imgUpload()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->ChangIcon()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/Util/n1;->a(IILandroid/content/Intent;)V

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

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    invoke-virtual {p1}, Lcom/join/mgps/Util/n1;->h()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mPhotoSelectUtils:Lcom/join/mgps/Util/n1;

    invoke-virtual {p1}, Lcom/join/mgps/Util/n1;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method uploadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method uploadImagData(Ljava/lang/String;)V
    .locals 11
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->typeId:I

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->listTables:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    invoke-virtual {v0}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    new-instance v3, Lcom/join/mgps/activity/screenshot/ImageFactory;

    invoke-direct {v3}, Lcom/join/mgps/activity/screenshot/ImageFactory;-><init>()V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/Util/u;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uploadFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    :try_start_1
    iget-object v5, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v3, v5, v4, v6, v2}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 12
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->gameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/join/mgps/Util/n0;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->filePath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->gameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/join/mgps/Util/n0;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 14
    :goto_3
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "flag"

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "code"

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    const/16 p1, 0x258

    if-ne v1, p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadSuccess()V

    goto :goto_4

    :cond_3
    const-string p1, "error_info"

    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadFailed(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 19
    :catch_1
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadFailed(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method uploadSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->dialog:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u56fe\u7247\u5ba1\u6838\u540e\u663e\u793a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
