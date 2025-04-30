.class public final Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;
.super Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;
.source "MyAccountMMSCodeGetpassbackFinish_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;
    }
.end annotation


# instance fields
.field private final q:Li3/c;

.field private final r:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->q:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->r:Ljava/util/Map;

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showLoding()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showLodingDismis()V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->M0()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->H0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->I0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->K0()V

    return-void
.end method

.method public static V0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static W0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$f;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$h;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$i;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method M0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$e;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$g;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->r:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->q:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c04c2

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090a5c

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->f:Landroid/widget/EditText;

    const v0, 0x7f090c0c

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->g:Landroid/widget/TextView;

    const v0, 0x7f090d21

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->i:Landroid/widget/TextView;

    const v0, 0x7f090e16

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->j:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$a;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$b;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/BaseAccountActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;->q:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$c;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingDismis()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_$d;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
