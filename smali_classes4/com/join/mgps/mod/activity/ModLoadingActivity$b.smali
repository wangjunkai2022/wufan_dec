.class Lcom/join/mgps/mod/activity/ModLoadingActivity$b;
.super Ljava/lang/Object;
.source "ModLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e;->b0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->G0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    .line 3
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->H0(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/join/mgps/va/overmind/e;->p()Lcom/join/mgps/va/overmind/e;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    iget-object v3, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->d:Ljava/lang/String;

    iget v6, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->e:I

    iget v0, v2, Lcom/join/mgps/mod/activity/ModLoadingActivity;->f:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/va/overmind/e;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_1
    return-void
.end method
