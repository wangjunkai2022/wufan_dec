.class Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->onProgress(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$c;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iput-object p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->b:I

    iput-object p4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->P0()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->Q0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->R0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1102a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->i()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->b:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->S0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1102a6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->i()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$c$b;->d:Lcom/join/mgps/mod/activity/ModLoadingActivity$c;

    iget-object v4, v4, Lcom/join/mgps/mod/activity/ModLoadingActivity$c;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v4, v4, Lcom/join/mgps/mod/activity/ModLoadingActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
