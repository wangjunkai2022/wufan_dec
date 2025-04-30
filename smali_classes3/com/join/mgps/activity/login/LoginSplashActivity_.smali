.class public final Lcom/join/mgps/activity/login/LoginSplashActivity_;
.super Lcom/join/mgps/activity/login/LoginSplashActivity;
.source "LoginSplashActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;
    }
.end annotation


# static fields
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
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/login/LoginSplashActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->toLogin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/login/LoginSplashActivity_;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/login/LoginSplashActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/login/LoginSplashActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->joinDevice()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->injectExtras_()V

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

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->gameId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_$5;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->beans_:Ljava/util/Map;

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

.method joinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginSplashActivity_$6;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginSplashActivity_$6;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$4;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_$4;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;Lcom/join/mgps/dto/AccountBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c05ff

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090288

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->close:Landroid/view/View;

    const v0, 0x7f0909b7

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->login:Landroid/view/View;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->close:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$1;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_$1;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity;->login:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$2;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_$2;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginSplashActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginSplashActivity_;->injectExtras_()V

    return-void
.end method

.method toLogin(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginSplashActivity_$3;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginSplashActivity_$3;-><init>(Lcom/join/mgps/activity/login/LoginSplashActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
