.class public final Lcom/join/mgps/activity/CloudActivity_;
.super Lcom/join/mgps/activity/CloudActivity;
.source "CloudActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CloudActivity_$j;
    }
.end annotation


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
    invoke-direct {p0}, Lcom/join/mgps/activity/CloudActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity_;->s:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity_;->t:Ljava/util/Map;

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/activity/CloudActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity;->I0(II)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/activity/CloudActivity_;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity;->J0(II)V

    return-void
.end method

.method static synthetic S0(Lcom/join/mgps/activity/CloudActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CloudActivity;->K0()V

    return-void
.end method

.method static synthetic T0(Lcom/join/mgps/activity/CloudActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CloudActivity;->O0()V

    return-void
.end method

.method static synthetic U0(Lcom/join/mgps/activity/CloudActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CloudActivity;->P0()V

    return-void
.end method

.method static synthetic V0(Lcom/join/mgps/activity/CloudActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CloudActivity;->uploadSuccess()V

    return-void
.end method

.method static synthetic W0(Lcom/join/mgps/activity/CloudActivity_;Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CloudActivity;->M0(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V

    return-void
.end method

.method public static X0(Landroid/content/Context;)Lcom/join/mgps/activity/CloudActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity_$j;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static Y0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CloudActivity_$j;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity_$j;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method


# virtual methods
.method I0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity_$c;-><init>(Lcom/join/mgps/activity/CloudActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method J0(II)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CloudActivity_$d;-><init>(Lcom/join/mgps/activity/CloudActivity_;II)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$e;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity_$e;-><init>(Lcom/join/mgps/activity/CloudActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public M0(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/join/mgps/activity/CloudActivity_$i;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v9

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/CloudActivity_$i;-><init>(Lcom/join/mgps/activity/CloudActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V

    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method

.method O0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$f;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity_$f;-><init>(Lcom/join/mgps/activity/CloudActivity_;)V

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method P0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CloudActivity_$g;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CloudActivity_$g;-><init>(Lcom/join/mgps/activity/CloudActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_;->t:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_;->s:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CloudActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c00de

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f0908e7

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->a:Landroid/widget/ListView;

    const v0, 0x7f090ef4

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/CloudActivity;->f:Landroid/widget/Button;

    const v0, 0x7f090e06

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity_$a;-><init>(Lcom/join/mgps/activity/CloudActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity;->f:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lcom/join/mgps/activity/CloudActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CloudActivity_$b;-><init>(Lcom/join/mgps/activity/CloudActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudActivity;->afterView()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity_;->s:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method uploadSuccess()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CloudActivity_$h;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CloudActivity_$h;-><init>(Lcom/join/mgps/activity/CloudActivity_;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    return-void
.end method
