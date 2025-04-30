.class public final Lcom/join/mgps/dialog/PlugUpdateDialog_;
.super Lcom/join/mgps/dialog/PlugUpdateDialog;
.source "PlugUpdateDialog_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/PlugUpdateDialog_$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "table"

.field public static final m:Ljava/lang/String; = "from"

.field public static final n:Ljava/lang/String; = "gameId"


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
    invoke-direct {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->j:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->k:Ljava/util/Map;

    return-void
.end method

.method public static F0(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static G0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog_;->injectExtras_()V

    .line 2
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "table"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/EMUApkTable;

    iput-object v1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    :cond_0
    const-string v1, "from"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->h:Ljava/lang/String;

    :cond_1
    const-string v1, "gameId"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->i:Ljava/lang/String;

    :cond_2
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
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->k:Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->j:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/PlugUpdateDialog_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/PlugUpdateDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->afterViews()V

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
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/PlugUpdateDialog;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/PlugUpdateDialog;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog_;->j:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog_;->injectExtras_()V

    return-void
.end method
