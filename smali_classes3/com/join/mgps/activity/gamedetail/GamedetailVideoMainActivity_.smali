.class public final Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;
.super Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;
.source "GamedetailVideoMainActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final AUTODOWN_EXTRA:Ljava/lang/String; = "autodown"

.field public static final EXT_BEAN_EXTRA:Ljava/lang/String; = "extBean"

.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->hideLoadingDelay()V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->shakeAnim()V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->scroolToposition()V

    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->animFinish()V

    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->showLoding()V

    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->getDetialData()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->gameId:Ljava/lang/String;

    :cond_0
    const-string v1, "extBean"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ExtBean;

    iput-object v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    :cond_1
    const-string v1, "autodown"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->autodown:Z

    :cond_2
    const-string v1, "from"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->from:I

    :cond_3
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method animFinish()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$8;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$8;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x258

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getDetialData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$11;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$11;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method hideLoadingDelay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$4;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0xc8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0287

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f091280

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f090535

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->fragment:Landroid/widget/FrameLayout;

    const v0, 0x7f0907e0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    const v0, 0x7f0909ed

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->mainCover:Landroid/view/View;

    const v0, 0x7f090ee2

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->statuHVIew:Landroid/view/View;

    const v0, 0x7f0909b5

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_layout:Landroid/view/View;

    const v0, 0x7f0909b0

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->loding_faile:Landroid/view/View;

    const v0, 0x7f0909f5

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->main_content:Landroid/view/View;

    const v0, 0x7f090e21

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setNetwork:Landroid/view/View;

    const v0, 0x7f090d11

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setNetwork:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$1;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->iv_back:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$2;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$3;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->afterviews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method scroolToposition()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$7;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$7;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x4e2

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;->injectExtras_()V

    return-void
.end method

.method shakeAnim()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$6;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$6;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$10;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$10;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$9;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$9;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_$5;-><init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity_;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
