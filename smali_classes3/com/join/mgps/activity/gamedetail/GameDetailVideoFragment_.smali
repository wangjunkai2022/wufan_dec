.class public final Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;
.super Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;
.source "GameDetailVideoFragment_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;
    }
.end annotation


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

.field private contentView_:Landroid/view/View;

.field private final onViewChangedNotifier_:Li3/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->delayCheckplay()V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updatePlayImg()V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->showInstallButn()V

    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateButn()V

    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V

    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->changeGameFollow(I)V

    return-void
.end method

.method public static builder()Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;

    invoke-direct {v0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$FragmentBuilder_;-><init>()V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method changeGameFollow(I)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$14;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$14;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Ljava/lang/String;JLjava/lang/String;I)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method delayCheckplay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$8;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$8;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x3e8

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0c0286

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->contentView_:Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->coverback:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameName:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->content:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playIcon:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 5

    const v0, 0x7f090311

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090314

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->coverback:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090687

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09126b

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->videoView:Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;

    const v0, 0x7f090e92

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    const v0, 0x7f09057f

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->gameName:Landroid/widget/TextView;

    const v0, 0x7f0902eb

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->content:Landroid/widget/TextView;

    const v0, 0x7f090ee2

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->statuHVIew:Landroid/view/View;

    const v0, 0x7f09076d

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    const v0, 0x7f090c6e

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->progressbarLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09076e

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalbutnLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090204

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butn_showdownload:Landroid/widget/ImageView;

    const v0, 0x7f090c02

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->percent:Landroid/widget/TextView;

    const v0, 0x7f090c1d

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->playIcon:Landroid/view/View;

    const v0, 0x7f090203

    .line 15
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->butnProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f090313

    .line 16
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090560

    .line 17
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0907e0

    .line 18
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090c6d

    .line 19
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090e21

    .line 20
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 21
    new-instance v4, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$1;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$1;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 22
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$2;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 23
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$3;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->sound:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 25
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$4;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$4;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->instalButtomButn:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 27
    new-instance v1, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$5;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$5;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 28
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$6;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$6;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 29
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$7;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$7;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment;->afterView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method showInstallButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$11;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$11;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showProgress()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$10;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$10;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateButn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$12;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$12;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updatePlayImg()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$9;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$9;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;)V

    const-string v1, ""

    const-wide/16 v2, 0x12c

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method updateTitleButn(Lcom/join/mgps/dto/ResultMainBean;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_$13;-><init>(Lcom/join/mgps/activity/gamedetail/GameDetailVideoFragment_;Lcom/join/mgps/dto/ResultMainBean;I)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
