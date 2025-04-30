.class Lcom/join/mgps/activity/TagAddActivity$e;
.super Ljava/lang/Object;
.source "TagAddActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/TagAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$e;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$e;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$e;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity$e;->a:Lcom/join/mgps/activity/TagAddActivity;

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/TagAddActivity;->L0(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$e;->a:Lcom/join/mgps/activity/TagAddActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->q:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    :cond_1
    :goto_0
    return-void
.end method
