.class public Lru/alexbykov/nopermission/b;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# static fields
.field private static final j:I = 0x62

.field private static final k:I


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/app/AlertDialog$Builder;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 3
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lru/alexbykov/nopermission/b;->i:I

    .line 6
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic a(Lru/alexbykov/nopermission/b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->b([Ljava/lang/String;)V

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    const/16 v1, 0x62

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private e([Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->l([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->x([Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->b([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->h()[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lez v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lru/alexbykov/nopermission/b;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private g(II)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private h()[Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lru/alexbykov/nopermission/b;->c:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-direct {p0, v4}, Lru/alexbykov/nopermission/b;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private l([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-direct {p0, v3}, Lru/alexbykov/nopermission/b;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private m(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private t(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lru/alexbykov/nopermission/b;->k(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->u()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4
    :goto_0
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->z()V

    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->f()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private x([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lru/alexbykov/nopermission/b;->h:I

    new-instance v2, Lru/alexbykov/nopermission/b$a;

    invoke-direct {v2, p0, p1}, Lru/alexbykov/nopermission/b$a;-><init>(Lru/alexbykov/nopermission/b;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2
    iget-object p1, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 4
    iget v0, p0, Lru/alexbykov/nopermission/b;->i:I

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget v0, p0, Lru/alexbykov/nopermission/b;->i:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    .line 2
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    .line 3
    iget-object v1, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 4
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lru/alexbykov/nopermission/b;->h:I

    .line 6
    :cond_0
    iget-object v1, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 7
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->z()V

    return-void
.end method

.method public B(III)Lru/alexbykov/nopermission/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput p3, p0, Lru/alexbykov/nopermission/b;->h:I

    .line 2
    invoke-direct {p0, p1, p2}, Lru/alexbykov/nopermission/b;->g(II)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iput-object p1, p0, Lru/alexbykov/nopermission/b;->g:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lru/alexbykov/nopermission/b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iput-object v0, p0, Lru/alexbykov/nopermission/b;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs d([Ljava/lang/String;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method public o(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method public p(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method public q(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 p3, 0x62

    if-ne p1, p3, :cond_1

    .line 1
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget-object v0, p2, p3

    .line 2
    invoke-direct {p0, v0}, Lru/alexbykov/nopermission/b;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lru/alexbykov/nopermission/b;->t(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->z()V

    return-void
.end method

.method public r(Ljava/lang/Runnable;)Lru/alexbykov/nopermission/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/alexbykov/nopermission/b;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->v()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "permissionSuccessListener or permissionDeniedListener have null reference. You must realize onSuccess and onDenied methods"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w(I)Lru/alexbykov/nopermission/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/alexbykov/nopermission/b;->i:I

    return-object p0
.end method

.method public y()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lru/alexbykov/nopermission/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
