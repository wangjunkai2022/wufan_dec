.class public final Lcom/join/mgps/activity/VideoSettingActivity_;
.super Lcom/join/mgps/activity/VideoSettingActivity;
.source "VideoSettingActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/VideoSettingActivity_$h;
    }
.end annotation


# instance fields
.field private final n:Li3/c;

.field private final o:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->n:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->o:Ljava/util/Map;

    return-void
.end method

.method public static L0(Landroid/content/Context;)Lcom/join/mgps/activity/VideoSettingActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/VideoSettingActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static M0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/VideoSettingActivity_$h;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/VideoSettingActivity_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$h;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->o:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->n:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/VideoSettingActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c05de

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/VideoSettingActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 2

    const v0, 0x7f091033

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f091260

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->b:Landroid/view/View;

    const v0, 0x7f091267

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->c:Landroid/view/View;

    const v0, 0x7f091265

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->d:Landroid/view/View;

    const v0, 0x7f091261

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f091268

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f091266

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f090665

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->h:Landroid/view/View;

    const v0, 0x7f090669

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->i:Landroid/view/View;

    const v0, 0x7f090667

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->j:Landroid/view/View;

    const v0, 0x7f090666

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f09066a

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f090668

    .line 13
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    .line 14
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$a;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 18
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$b;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 20
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$c;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 22
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$d;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$d;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->i:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 24
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$e;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->j:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 26
    new-instance v1, Lcom/join/mgps/activity/VideoSettingActivity_$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$f;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 27
    new-instance v0, Lcom/join/mgps/activity/VideoSettingActivity_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/VideoSettingActivity_$g;-><init>(Lcom/join/mgps/activity/VideoSettingActivity_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->n:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->n:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/VideoSettingActivity_;->n:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method
