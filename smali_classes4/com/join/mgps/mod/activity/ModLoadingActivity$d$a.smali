.class Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->O0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->Q0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->S0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->R0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$d$a;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity$d;

    iget-object v2, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity$d;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1102a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0%"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
