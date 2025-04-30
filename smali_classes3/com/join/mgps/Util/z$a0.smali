.class Lcom/join/mgps/Util/z$a0;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->X(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/db/tables/EMUApkTable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/t;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Lcom/join/mgps/db/tables/EMUApkTable;

.field final synthetic g:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/customview/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/join/mgps/db/tables/EMUApkTable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$a0;->g:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$a0;->a:Lcom/join/mgps/customview/t;

    iput-object p3, p0, Lcom/join/mgps/Util/z$a0;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/join/mgps/Util/z$a0;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/Util/z$a0;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/join/mgps/Util/z$a0;->e:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/join/mgps/Util/z$a0;->f:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/z$a0;->a:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/z$a0;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/Util/z$a0;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/Util/z$a0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goGameMainActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/Util/z$a0;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/Util/z$a0;->f:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 5
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/Util/z$a0;->f:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1, v0}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
