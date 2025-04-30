.class Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/mod/activity/ModLoadingActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$e;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$e;

    iput p2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$e;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->Q0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$e;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->R0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$e;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$e;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1102a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$e$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
