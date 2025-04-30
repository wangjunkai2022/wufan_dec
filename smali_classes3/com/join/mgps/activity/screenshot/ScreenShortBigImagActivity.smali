.class public Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;
.super Lcom/BaseAppCompatActivity;
.source "ScreenShortBigImagActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0565
.end annotation


# instance fields
.field adapter:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bottomLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field listItemBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field message:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nameAndDate:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pn:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field position:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field positionShow:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tintManager:Lcom/join/android/app/common/manager/b;

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
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method afterview()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "datas"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    .line 7
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->message:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;

    invoke-virtual {v1}, Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;->getDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 11
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

    invoke-direct {v0, p0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->position:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

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

.method loadListData(I)V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->gameId:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->typeId:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/d;->w(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->updateUi(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->pn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->pn:I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->listItemBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->adapter:Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;

    invoke-virtual {p1}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity$CarImagesBrowseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method viewPager()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->bottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->positionShow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->bottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
