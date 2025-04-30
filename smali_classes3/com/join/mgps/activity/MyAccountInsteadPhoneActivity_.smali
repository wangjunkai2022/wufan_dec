.class public final Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;
.super Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;
.source "MyAccountInsteadPhoneActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "accountBean"


# instance fields
.field private final h:Li3/c;

.field private final i:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->h:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->i:Ljava/util/Map;

    return-void
.end method

.method public static H0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static I0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->injectExtras_()V

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

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->e:Lcom/join/mgps/dto/AccountBean;

    :cond_0
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->i:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->h:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c02e1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 4

    const v0, 0x7f091023

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f090abc

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f09076a

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->c:Landroid/widget/EditText;

    const v1, 0x7f090774

    .line 4
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->d:Landroid/widget/Button;

    const v1, 0x7f090131

    .line 5
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->d:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$a;-><init>(Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    new-instance v2, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$b;-><init>(Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$c;-><init>(Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->h:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->h:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->h:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->injectExtras_()V

    return-void
.end method
