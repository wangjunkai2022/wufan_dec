.class public final Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;
.super Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;
.source "MyAccountSettingPasswordActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "accountBean"


# instance fields
.field private final j:Li3/c;

.field private final k:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->j:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic J0(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->F0()V

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->H0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->G0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static N0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static O0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->injectExtras_()V

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

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->g:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    return-void
.end method


# virtual methods
.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$c;-><init>(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$f;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$f;-><init>(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$e;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$e;-><init>(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->k:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->j:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0583

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090e28

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->b:Landroid/widget/Button;

    const v0, 0x7f090886

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f090cdd

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f090be2

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f090d16

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f090131

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$a;-><init>(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$b;-><init>(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->injectExtras_()V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$d;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$d;-><init>(Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
