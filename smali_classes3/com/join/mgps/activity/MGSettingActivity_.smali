.class public final Lcom/join/mgps/activity/MGSettingActivity_;
.super Lcom/join/mgps/activity/MGSettingActivity;
.source "MGSettingActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MGSettingActivity_$j;
    }
.end annotation


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
    invoke-direct {p0}, Lcom/join/mgps/activity/MGSettingActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_;->p:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_;->q:Ljava/util/Map;

    return-void
.end method

.method static synthetic K0(Lcom/join/mgps/activity/MGSettingActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGSettingActivity;->J0()V

    return-void
.end method

.method static synthetic L0(Lcom/join/mgps/activity/MGSettingActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/MGSettingActivity;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic M0(Lcom/join/mgps/activity/MGSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/MGSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    return-void
.end method

.method static synthetic N0(Lcom/join/mgps/activity/MGSettingActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/MGSettingActivity;->F0()V

    return-void
.end method

.method public static O0(Landroid/content/Context;)Lcom/join/mgps/activity/MGSettingActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static P0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/MGSettingActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity;->l:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method public F0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/MGSettingActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/MGSettingActivity_$i;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method J0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$f;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$g;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/MGSettingActivity_$g;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_;->q:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_;->p:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/MGSettingActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c0582

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGSettingActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f090255

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f090d26

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f090bba

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f091033

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f09013e

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->i:Landroid/widget/ImageView;

    const v0, 0x7f090bc8

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f090036

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f090e3b

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/join/mgps/activity/MGSettingActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MGSettingActivity_$a;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$b;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 13
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$c;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity;->g:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    .line 15
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$d;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity;->f:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 17
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGSettingActivity_$e;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MGSettingActivity;->D0()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGSettingActivity_;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity_;->p:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity_;->p:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/MGSettingActivity_;->p:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MGSettingActivity_$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/MGSettingActivity_$h;-><init>(Lcom/join/mgps/activity/MGSettingActivity_;Lcom/join/mgps/dto/VersionDto;Z)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
