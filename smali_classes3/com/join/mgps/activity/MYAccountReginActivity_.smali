.class public final Lcom/join/mgps/activity/MYAccountReginActivity_;
.super Lcom/join/mgps/activity/MYAccountReginActivity;
.source "MYAccountReginActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MYAccountReginActivity_$h;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String; = "reginBean"


# instance fields
.field private final p:Li3/c;

.field private final q:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->p:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->q:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MYAccountReginActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLoding()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MYAccountReginActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->showLodingDismis()V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MYAccountReginActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MYAccountReginActivity;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MYAccountReginActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MYAccountReginActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/MYAccountReginActivity;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static R0(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountReginActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static S0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MYAccountReginActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginActivity_;->injectExtras_()V

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

    const-string v1, "reginBean"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountReginBean;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->n:Lcom/join/mgps/dto/AccountReginBean;

    :cond_0
    return-void
.end method


# virtual methods
.method I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/MYAccountReginActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/MYAccountReginActivity_$g;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/MYAccountReginActivity_$e;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 p2, 0x0

    invoke-static {p1, v0, p2, p3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$f;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity_$f;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->q:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->p:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c04c1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountReginActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090f37

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f090be2

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f091237

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0900af

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->e:Landroid/widget/CheckBox;

    const v0, 0x7f091023

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f090d01

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->h:Landroid/widget/Button;

    const v0, 0x7f090131

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginActivity_$a;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity;->h:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginActivity_$b;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountReginActivity;->afterView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->p:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->p:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountReginActivity_;->p:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountReginActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginActivity_$c;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MYAccountReginActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MYAccountReginActivity_$d;-><init>(Lcom/join/mgps/activity/MYAccountReginActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
