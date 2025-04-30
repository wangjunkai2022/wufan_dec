.class public Lcom/join/mgps/activity/GameDiscoverActivity;
.super Lcom/BaseFragmentActivity;
.source "GameDiscoverActivity.java"

# interfaces
.implements Lcom/join/mgps/pref/c;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c01b6
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field b:Lcom/join/mgps/rpc/d;

.field c:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private i:I

.field private j:Lcom/join/mgps/fragment/f;

.field private k:Lcom/join/android/app/common/manager/b;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static F0(Landroid/app/Activity;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private I0()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    :cond_0
    new-instance v0, Lcom/join/android/app/common/manager/b;

    invoke-direct {v0, p0}, Lcom/join/android/app/common/manager/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->k:Lcom/join/android/app/common/manager/b;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/manager/b;->m(Z)V

    return-void
.end method


# virtual methods
.method D0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->i:I

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->h:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/GameDiscoverActivity;->E0(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->b:Lcom/join/mgps/rpc/d;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->J0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GameDiscoverMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverMainBean;->getMessages()Lcom/join/mgps/dto/GameDiscoverMessageBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverMessageBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameDiscoverActivity;->K0(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->J0()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->J0()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->J0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->J0()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->J0()V

    :goto_0
    return-void
.end method

.method public E0(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameDiscoverRequestBean(IILcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object p1

    return-object p1
.end method

.method public G0()Lcom/join/android/app/common/manager/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->k:Lcom/join/android/app/common/manager/b;

    return-object v0
.end method

.method public H(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->f:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method H0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method K0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDiscoverBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->j:Lcom/join/mgps/fragment/f;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/fragment/f;->X()Lcom/join/mgps/fragment/f;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->j:Lcom/join/mgps/fragment/f;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->c:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->j:Lcom/join/mgps/fragment/f;

    invoke-virtual {v1, p1}, Lcom/join/mgps/fragment/f;->d0(Ljava/util/List;)V

    const p1, 0x7f09053e

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->j:Lcom/join/mgps/fragment/f;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->j:Lcom/join/mgps/fragment/f;

    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/f;->d0(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public O(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "CurrentPn"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->D0()V

    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->P1()Lcom/join/mgps/rpc/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->b:Lcom/join/mgps/rpc/d;

    .line 2
    iput-object p0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->a:Landroid/content/Context;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->i:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->showLoading()V

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->D0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->I0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->showLoading()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->i:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->D0()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->I0()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->I0()V

    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoading()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->c:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/high16 v0, 0x42380000    # 46.0f

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x40a00000    # 5.0f

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 8
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-static {p0}, Lcom/join/mgps/activity/GameDiscoverActivity;->F0(Landroid/app/Activity;)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->l:I

    .line 10
    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameDiscoverActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
