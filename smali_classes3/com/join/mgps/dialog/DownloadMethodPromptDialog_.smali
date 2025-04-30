.class public final Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;
.super Lcom/join/mgps/dialog/DownloadMethodPromptDialog;
.source "DownloadMethodPromptDialog_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "ext"

.field public static final B:Ljava/lang/String; = "isForceShow"

.field public static final C:Ljava/lang/String; = "fromRecomDown"

.field public static final D:Ljava/lang/String; = "disableShowSpeedUpPrompt"

.field public static final E:Ljava/lang/String; = "data"

.field public static final F:Ljava/lang/String; = "_from"

.field public static final G:Ljava/lang/String; = "_from_type"

.field public static final z:Ljava/lang/String; = "gameId"


# instance fields
.field private final x:Li3/c;

.field private final y:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->x:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->y:Ljava/util/Map;

    return-void
.end method

.method static synthetic P0(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->E0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q0(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->I0()V

    return-void
.end method

.method public static S0(Landroid/content/Context;)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static T0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$l;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->k:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "gameId"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->l:Ljava/lang/String;

    :cond_0
    const-string v1, "ext"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->m:Ljava/lang/String;

    :cond_1
    const-string v1, "isForceShow"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->n:Z

    :cond_2
    const-string v1, "fromRecomDown"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->o:Z

    :cond_3
    const-string v1, "disableShowSpeedUpPrompt"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->p:Z

    :cond_4
    const-string v1, "data"

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    iput-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->q:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    :cond_5
    const-string v1, "_from"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->r:I

    :cond_6
    const-string v1, "_from_type"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->s:I

    :cond_7
    return-void
.end method


# virtual methods
.method E0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$k;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$k;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Ljava/lang/String;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$b;

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$b;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Ljava/lang/String;JLjava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->y:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->x:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c015f

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 6

    const v0, 0x7f090c72

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->a:Landroid/view/View;

    const v0, 0x7f090b19

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->b:Landroid/view/View;

    const v0, 0x7f090b18

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->c:Landroid/view/View;

    const v0, 0x7f09100f

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->d:Landroid/widget/TextView;

    const v0, 0x7f090acd

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->e:Landroid/widget/TextView;

    const v0, 0x7f0908dd

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->f:Landroid/widget/TextView;

    const v0, 0x7f0903b8

    .line 7
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->g:Landroid/widget/TextView;

    const v0, 0x7f090ef6

    .line 8
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->h:Landroid/widget/TextView;

    const v0, 0x7f09123c

    .line 9
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->i:Landroid/widget/TextView;

    const v0, 0x7f090c71

    .line 10
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->j:Landroid/widget/TextView;

    const v0, 0x7f0902df

    .line 11
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->u:Landroid/view/View;

    const v0, 0x7f090288

    .line 12
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b8c

    .line 13
    invoke-interface {p1, v1}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090d1f

    .line 14
    invoke-interface {p1, v2}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090c73

    .line 15
    invoke-interface {p1, v3}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090fad

    .line 16
    invoke-interface {p1, v4}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090b1a

    .line 17
    invoke-interface {p1, v5}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 18
    new-instance v5, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$c;

    invoke-direct {v5, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$c;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 19
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$d;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$d;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 21
    new-instance v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$e;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$e;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 23
    new-instance v1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$f;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 24
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$g;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$g;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 25
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$h;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$h;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v4, :cond_6

    .line 26
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$i;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$i;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 27
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$j;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$j;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->y:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->x:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->injectExtras_()V

    return-void
.end method

.method update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    const-string p1, ""

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method
