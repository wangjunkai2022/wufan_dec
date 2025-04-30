.class public final Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;
.super Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;
.source "ScreenShortUploadImagActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final IMAGEPATH_EXTRA:Ljava/lang/String; = "imagepath"

.field public static final TYPE_ID_EXTRA:Ljava/lang/String; = "typeId"


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadSuccess()V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->uploadImagData(Ljava/lang/String;)V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->gameId:Ljava/lang/String;

    :cond_0
    const-string v1, "imagepath"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imagepath:Ljava/lang/String;

    :cond_1
    const-string v1, "typeId"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->typeId:I

    :cond_2
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0568

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f09012c

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->back:Landroid/widget/ImageView;

    const v0, 0x7f0904bc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->finishButn:Landroid/widget/TextView;

    const v0, 0x7f091280

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090e12

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->selecter:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    const v0, 0x7f0902ca

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->commitMessage:Landroid/widget/EditText;

    const v0, 0x7f090717

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->finishButn:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->imgUpload:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$2;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->back:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 12
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$3;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity;->afterview()V

    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;->injectExtras_()V

    return-void
.end method

.method uploadFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$5;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method uploadImagData(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$6;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$6;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method uploadSuccess()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_$4;-><init>(Lcom/join/mgps/activity/screenshot/ScreenShortUploadImagActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
