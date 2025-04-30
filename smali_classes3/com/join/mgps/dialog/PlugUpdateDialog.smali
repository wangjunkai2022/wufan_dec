.class public Lcom/join/mgps/dialog/PlugUpdateDialog;
.super Lcom/BaseAppCompatActivity;
.source "PlugUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field g:Lcom/join/mgps/db/tables/EMUApkTable;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public E0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->D0()V

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->D0()V

    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApk_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer_info()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "_"

    const v2, 0x7f090365

    if-ne p1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->D0()V

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->h:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 6
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1, v0}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const v2, 0x7f09036b

    if-ne p1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugUpdateDialog;->D0()V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    iget-object v2, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->V0(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 12
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->g:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1, v0}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x22000000

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    .line 3
    iput-object p0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->a:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0531

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09100f

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f0902eb

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f090257

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->d:Landroid/widget/CheckBox;

    const v0, 0x7f09036b

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->e:Landroid/view/View;

    const v0, 0x7f090365

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->f:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugUpdateDialog;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/PlugUpdateDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    const/high16 p1, 0x22000000

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    return-void
.end method
