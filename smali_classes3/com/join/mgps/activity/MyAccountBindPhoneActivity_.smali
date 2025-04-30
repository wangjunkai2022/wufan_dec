.class public final Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;
.super Lcom/join/mgps/activity/MyAccountBindPhoneActivity;
.source "MyAccountBindPhoneActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String; = "accountBean"


# instance fields
.field private final r:Li3/c;

.field private final s:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->r:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->s:Ljava/util/Map;

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->M0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->I0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLoding()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->K0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->H0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->G0()V

    return-void
.end method

.method public static V0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static W0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;-><init>(Landroidx/fragment/app/Fragment;)V

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

    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->injectExtras_()V

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

    const-string v1, "accountBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->k:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    return-void
.end method


# virtual methods
.method G0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$b;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$a;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$a;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method I0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$g;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$k;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$k;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$f;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->s:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->r:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c009c

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f090abc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f090df8

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f090df9

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f09076a

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f090767

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f0905d7

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090e28

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->i:Landroid/widget/Button;

    const v0, 0x7f090131

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$c;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->i:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$d;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$e;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->r:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$i;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$j;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$h;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$h;-><init>(Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
