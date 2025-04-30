.class public final Lcom/join/mgps/activity/TagReportActivity_;
.super Lcom/join/mgps/activity/TagReportActivity;
.source "TagReportActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/TagReportActivity_$m;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "gameId"

.field public static final r:Ljava/lang/String; = "reportTags"


# instance fields
.field private final o:Li3/c;

.field private final p:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/TagReportActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity_;->o:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity_;->p:Ljava/util/Map;

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/TagReportActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLoding()V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/TagReportActivity_;Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/TagReportActivity;->L0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

    return-void
.end method

.method static synthetic O0(Lcom/join/mgps/activity/TagReportActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagReportActivity;->H0()V

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/activity/TagReportActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagReportActivity;->showLodingFailed()V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/TagReportActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagReportActivity;->K0()V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/TagReportActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagReportActivity;->F0()V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/TagReportActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/TagReportActivity;->G0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/TagReportActivity_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/TagReportActivity;->J0(Ljava/lang/String;I)V

    return-void
.end method

.method public static U0(Landroid/content/Context;)Lcom/join/mgps/activity/TagReportActivity_$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static V0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/TagReportActivity_$m;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$m;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$m;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/TagReportActivity_;->injectExtras_()V

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

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/TagReportActivity;->b:Ljava/lang/String;

    :cond_0
    const-string v1, "reportTags"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->i:Lcom/join/mgps/dto/ListUserCustomGameTagBean;

    :cond_1
    return-void
.end method


# virtual methods
.method F0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$a;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method G0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/TagReportActivity_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/TagReportActivity_$b;-><init>(Lcom/join/mgps/activity/TagReportActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method H0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$j;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(Ljava/lang/String;I)V
    .locals 9

    .line 1
    new-instance v8, Lcom/join/mgps/activity/TagReportActivity_$c;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/TagReportActivity_$c;-><init>(Lcom/join/mgps/activity/TagReportActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$l;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method L0(Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/TagReportActivity_$i;-><init>(Lcom/join/mgps/activity/TagReportActivity_;Lcom/join/mgps/dto/ListUserCustomGameTagBean;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity_;->p:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity_;->o:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/TagReportActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0071

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/TagReportActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 3

    const v0, 0x7f0909b5

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0904d9

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    const v0, 0x7f0909cd

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->f:Landroid/widget/ListView;

    const v0, 0x7f090431

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f0901c6

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->h:Landroid/widget/Button;

    const v0, 0x7f091033

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f090d11

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09013e

    .line 9
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090e21

    .line 10
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 11
    new-instance v2, Lcom/join/mgps/activity/TagReportActivity_$d;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/TagReportActivity_$d;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity;->h:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 13
    new-instance v2, Lcom/join/mgps/activity/TagReportActivity_$e;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/TagReportActivity_$e;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 14
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$f;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 15
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$g;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/TagReportActivity;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity_;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity_;->o:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/TagReportActivity_;->injectExtras_()V

    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$h;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/TagReportActivity_$k;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/TagReportActivity_$k;-><init>(Lcom/join/mgps/activity/TagReportActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
