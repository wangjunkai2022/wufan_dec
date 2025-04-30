.class public final Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;
.super Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;
.source "GprsNoticeDialogAlphActivity_.java"

# interfaces
.implements Lg3/a;
.implements Li3/a;
.implements Li3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "downloadTask"

.field public static final o:Ljava/lang/String; = "showContent"

.field public static final p:Ljava/lang/String; = "apkTable"

.field public static final q:Ljava/lang/String; = "isUpdate"

.field public static final r:Ljava/lang/String; = "updateIntentDataBean"


# instance fields
.field private final l:Li3/c;

.field private final m:Ljava/util/Map;
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
    invoke-direct {p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;-><init>()V

    .line 2
    new-instance v0, Li3/c;

    invoke-direct {v0}, Li3/c;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->l:Li3/c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->m:Ljava/util/Map;

    return-void
.end method

.method public static G0(Landroid/content/Context;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static H0(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$c;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Li3/c;->b(Li3/b;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->injectExtras_()V

    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "downloadTask"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iput-object v1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    :cond_0
    const-string v1, "showContent"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->b:Ljava/lang/String;

    :cond_1
    const-string v1, "apkTable"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/db/tables/EMUApkTable;

    iput-object v1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    :cond_2
    const-string v1, "isUpdate"

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->d:Z

    :cond_3
    const-string v1, "updateIntentDataBean"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/UpdateIntentDataBean;

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->e:Lcom/join/mgps/dto/UpdateIntentDataBean;

    :cond_4
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
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->m:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->l:Li3/c;

    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->init_(Landroid/os/Bundle;)V

    .line 3
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v0}, Li3/c;->c(Li3/c;)Li3/c;

    const p1, 0x7f0c01db

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->setContentView(I)V

    return-void
.end method

.method public onViewChanged(Li3/a;)V
    .locals 1

    const v0, 0x7f090369

    .line 1
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->f:Landroid/widget/Button;

    const v0, 0x7f09100a

    .line 2
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f09036e

    .line 3
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f090f56

    .line 4
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f09036b

    .line 5
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->j:Landroid/widget/Button;

    const v0, 0x7f090365

    .line 6
    invoke-interface {p1, v0}, Li3/a;->internalFindViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->k:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$a;-><init>(Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->j:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 9
    new-instance v0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_$b;-><init>(Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->afterview()V

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
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->l:Li3/c;

    invoke-virtual {p1, p0}, Li3/c;->a(Li3/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity_;->injectExtras_()V

    return-void
.end method
