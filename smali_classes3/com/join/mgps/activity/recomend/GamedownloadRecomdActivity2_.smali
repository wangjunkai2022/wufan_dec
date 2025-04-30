.class public final Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;
.super Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;
.source "GamedownloadRecomdActivity2_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final GAME_NAME_EXTRA:Ljava/lang/String; = "gameName"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->beans_:Ljava/util/Map;

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gameName"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->gameName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->beans_:Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0246

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f09100f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->title:Landroid/widget/TextView;

    const v0, 0x7f090687

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090ea0

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->speedLayout:Landroid/view/View;

    const v0, 0x7f0903b0

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->downNumber:Landroid/widget/TextView;

    const v0, 0x7f091001

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->tip:Landroid/widget/TextView;

    const v0, 0x7f090dfc

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->seetext:Landroid/widget/TextView;

    const v0, 0x7f090289

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->close2:Landroid/view/View;

    const v0, 0x7f0909eb

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->main:Landroid/view/View;

    const v0, 0x7f0900f9

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->appbar:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0903b9

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->close2:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$1;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$1;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->main:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$2;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$2;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 15
    new-instance v0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$3;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_$3;-><init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity2_;->injectExtras_()V

    return-void
.end method
