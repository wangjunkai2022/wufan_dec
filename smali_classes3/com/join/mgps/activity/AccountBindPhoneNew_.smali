.class public final Lcom/join/mgps/activity/AccountBindPhoneNew_;
.super Lcom/join/mgps/activity/AccountBindPhoneNew;
.source "AccountBindPhoneNew_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountBindPhoneNew_$t;
    }
.end annotation


# static fields
.field public static final E:Ljava/lang/String; = "thirdRequestbean"

.field public static final F:Ljava/lang/String; = "from"


# instance fields
.field private final C:Li3/c;

.field private final D:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->C:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->D:Ljava/util/Map;

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->phoneRegin()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->K0()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->thirdRegin()V

    return-void
.end method

.method static synthetic X0(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->L0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Y0(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->M0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Z0(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->showFinishPage(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method static synthetic a1(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->S0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    return-void
.end method

.method static synthetic b1(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->R0()V

    return-void
.end method

.method static synthetic c1(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->Q0()V

    return-void
.end method

.method static synthetic d1(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->I0()V

    return-void
.end method

.method static synthetic e1(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->O0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    return-void
.end method

.method static synthetic f1(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->joinDevice()V

    return-void
.end method

.method static synthetic g1(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->P0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    return-void
.end method

.method public static h1(Landroid/content/Context;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static i1(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/AccountBindPhoneNew_$t;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$t;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->injectExtras_()V

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

    const-string v1, "thirdRequestbean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    iput-object v1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->c:Lcom/join/mgps/dto/AccountRegisterThirdwaiRequestBean;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->d:I

    :cond_1
    return-void
.end method


# virtual methods
.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountBindPhoneNew_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountBindPhoneNew_$c;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$q;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/AccountBindPhoneNew_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/AccountBindPhoneNew_$i;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/AccountBindPhoneNew_$j;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/AccountBindPhoneNew_$j;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/AccountBindPhoneNew_$d;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/AccountBindPhoneNew_$d;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method P0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/AccountBindPhoneNew_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/AccountBindPhoneNew_$f;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method Q0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountBindPhoneNew_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountBindPhoneNew_$b;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method R0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$a;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method S0(Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$s;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$s;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountAnonymousReginRequest;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$p;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$p;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->D:Ljava/util/Map;

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

.method joinDevice()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountBindPhoneNew_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountBindPhoneNew_$e;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->C:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c009d

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090296

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    const v0, 0x7f09122b

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090657

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->g:Landroid/widget/TextView;

    const v0, 0x7f090c0d

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->h:Landroid/widget/TextView;

    const v0, 0x7f090c0c

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->i:Landroid/widget/EditText;

    const v0, 0x7f090be2

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->j:Landroid/widget/EditText;

    const v0, 0x7f090294

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->k:Landroid/widget/EditText;

    const v0, 0x7f090b06

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->l:Landroid/widget/EditText;

    const v0, 0x7f090e23

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0903fb

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f090242

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f090b04

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->p:Landroid/widget/TextView;

    const v0, 0x7f090b05

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->q:Landroid/widget/TextView;

    const v0, 0x7f090b07

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->r:Landroid/widget/TextView;

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 16
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$k;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 18
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$l;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 20
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$m;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p1, :cond_3

    .line 22
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$n;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$n;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 24
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$o;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_$o;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew;->afterview()V

    return-void
.end method

.method phoneRegin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountBindPhoneNew_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountBindPhoneNew_$g;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->D:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/BaseAccountActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew_;->C:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/AccountBindPhoneNew_;->injectExtras_()V

    return-void
.end method

.method showFinishPage(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AccountBindPhoneNew_$r;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AccountBindPhoneNew_$r;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Lcom/join/mgps/dto/AccountBean;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method thirdRegin()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/AccountBindPhoneNew_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/AccountBindPhoneNew_$h;-><init>(Lcom/join/mgps/activity/AccountBindPhoneNew_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
