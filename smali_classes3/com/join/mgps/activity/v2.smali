.class Lcom/join/mgps/activity/v2;
.super Lcom/BaseAppCompatActivity;
.source "SimulatorFastEntryActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c006e
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/ScrollTextViewLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method D0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    return-void
.end method

.method E0(Lcom/join/mgps/dto/SimulatorFastEntryBean;)V
    .locals 10
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getSearch_bar_hint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getSearch_bar_hint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getFast_entry()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getFast_entry()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getFast_entry()Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v5, 0x9

    .line 8
    div-int/lit8 v6, v6, 0xa

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    mul-int/lit8 v8, v7, 0xa

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v9, v7, 0xa

    .line 9
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-interface {v4, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 10
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v4, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07110f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    move-result-object v1

    const v4, 0x7f07117e

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 14
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getThe_new()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;->getGames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 17
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getWill_play()Lcom/join/mgps/dto/SimulatorFastEntryBean$WillPlay;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    move-result-object v1

    const v5, 0x7f07113b

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 20
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const-string v6, "\u6539\u7248\u6e38\u620f"

    invoke-direct {v1, v2, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const/4 v6, 0x4

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getChange_game()Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0712ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    .line 25
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorFastEntryBean;->getTag_game()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;

    .line 27
    new-instance v7, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v2, v8, v9}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v7, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v7, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    const/4 v8, 0x5

    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorFastEntryBean$TagGameBean;->getList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v6, Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/v2;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/v2;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/join/mgps/adapter/e6;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/adapter/e6;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->showLoding()V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->getData()V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    new-instance v1, Lcom/join/mgps/dto/RequestOnlineCouponArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestOnlineCouponArgs;-><init>()V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object v0

    invoke-interface {v1, v0}, Lq1/h;->S(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorFastEntryBean;

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->F0()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/v2;->E0(Lcom/join/mgps/dto/SimulatorFastEntryBean;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->showLodingFailed()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->showLoding()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/v2;->getData()V

    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 1
    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/v2;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method
