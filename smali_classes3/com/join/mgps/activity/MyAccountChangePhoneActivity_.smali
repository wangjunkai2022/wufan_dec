.class public final Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;
.super Lcom/join/mgps/activity/MyAccountChangePhoneActivity;
.source "MyAccountChangePhoneActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;
    }
.end annotation


# static fields
.field public static final u:Ljava/lang/String; = "accountBean"

.field public static final v:Ljava/lang/String; = "newMobile"


# instance fields
.field private final s:Li3/c;

.field private final t:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->s:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->t:Ljava/util/Map;

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->Q0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->N0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->R0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLoding()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->J0()V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->O0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->I0()V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->H0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->G0()V

    return-void
.end method

.method public static d1(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static e1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$q;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    const v0, 0x7f110207

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->injectExtras_()V

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

    const-string v1, "accountBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->j:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    const-string v1, "newMobile"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->l:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method G0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$f;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$e;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$d;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$b;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method N0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$g;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$c;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$m;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method R0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$o;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$o;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->t:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->s:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00b2

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 5

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090abc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090b62

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090afb

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f090af9

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->f:Landroid/widget/EditText;

    const v1, 0x7f090b61

    .line 6
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->g:Landroid/widget/EditText;

    const v2, 0x7f0905d7

    .line 7
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    const v2, 0x7f090e28

    .line 8
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    const v2, 0x7f090131

    .line 9
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->i:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 11
    new-instance v4, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$h;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$h;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 13
    new-instance v4, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$i;

    invoke-direct {v4, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$i;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 14
    new-instance v3, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$j;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$j;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 16
    new-instance v2, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$k;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$k;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    :cond_3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 18
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$l;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$p;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$a;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyAccountChangePhoneActivity_$n;-><init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
