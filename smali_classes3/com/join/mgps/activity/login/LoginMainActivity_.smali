.class public final Lcom/join/mgps/activity/login/LoginMainActivity_;
.super Lcom/join/mgps/activity/login/LoginMainActivity;
.source "LoginMainActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;
    }
.end annotation


# static fields
.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final INTENT_FROM_EXTRA:Ljava/lang/String; = "intentFrom"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->beans_:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/login/LoginMainActivity_;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showKeyborad(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->delayFinish()V

    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLoding()V

    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity;->loginSuccess(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/login/LoginMainActivity_;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/join/mgps/activity/login/LoginMainActivity;->login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/login/LoginMainActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->joinDevice()V

    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "intentFrom"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->intentFrom:I

    :cond_0
    const-string v1, "gameId"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->gameId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;
    .locals 1

    .line 2
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$IntentBuilder_;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method delayFinish()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$14;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$14;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x12c

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$20;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$20;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method goRegin(Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$19;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$19;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

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

.method joinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$22;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/login/LoginMainActivity_$22;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method login(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .line 1
    new-instance v11, Lcom/join/mgps/activity/login/LoginMainActivity_$21;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v11

    move-object v1, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/activity/login/LoginMainActivity_$21;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v11}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method loginSuccess(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity_$18;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c03c1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 7

    const v0, 0x7f09100f

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->title:Landroid/widget/TextView;

    const v0, 0x7f090c0c

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->phoneNumber:Landroid/widget/EditText;

    const v0, 0x7f09027b

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    const v0, 0x7f090b88

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    const v0, 0x7f090217

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->cancleLogin:Landroid/view/View;

    const v0, 0x7f090b04

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    const v0, 0x7f0912e8

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->xieyi:Landroid/widget/TextView;

    const v0, 0x7f09024d

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->checkBox:Landroid/widget/CheckBox;

    const v0, 0x7f090e48

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09103e

    .line 10
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090216

    .line 11
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09012c

    .line 12
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0909ba

    .line 13
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0909bc

    .line 14
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0909be

    .line 15
    invoke-interface {p1, v6}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 16
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$1;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$1;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->otherLogin:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 18
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$2;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$2;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->xieyi:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 20
    new-instance v6, Lcom/join/mgps/activity/login/LoginMainActivity_$3;

    invoke-direct {v6, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$3;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 21
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$4;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$4;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 22
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$5;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$5;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->cancleLogin:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 24
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity_$6;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$6;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->clear:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 26
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity_$7;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$7;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 28
    new-instance v1, Lcom/join/mgps/activity/login/LoginMainActivity_$8;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$8;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 29
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$9;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$9;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v4, :cond_9

    .line 30
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$10;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$10;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 31
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$11;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$11;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 32
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$12;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$12;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/login/LoginMainActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->beans_:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_;->onViewChangedNotifier_:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/login/LoginMainActivity_;->injectExtras_()V

    return-void
.end method

.method showKeyborad(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$13;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$13;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Landroid/widget/EditText;)V

    const-string p1, ""

    const-wide/16 v1, 0x190

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$15;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$15;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$16;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/login/LoginMainActivity_$16;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/login/LoginMainActivity_$17;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity_$17;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
