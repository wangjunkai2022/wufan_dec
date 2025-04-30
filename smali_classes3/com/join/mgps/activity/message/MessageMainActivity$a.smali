.class Lcom/join/mgps/activity/message/MessageMainActivity$a;
.super Ljava/lang/Object;
.source "MessageMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/MessageMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/message/MessageMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->a:Lcom/flyco/tablayout/SlidingTabLayout;

    iget v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->j:I

    invoke-virtual {v1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-boolean v1, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->k:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->h:Lcom/join/mgps/activity/message/a;

    invoke-virtual {v0}, Lcom/join/mgps/activity/message/a;->c0()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-boolean v1, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->k:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->i:Lcom/join/mgps/activity/message/c;

    invoke-virtual {v0}, Lcom/join/mgps/activity/message/c;->e0()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 9
    sget-object v0, Lcom/MApplication;->D:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setNotice_surplus_number(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/message/MessageMainActivity;->m:Lcom/join/mgps/Util/IntentDateBean;

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity$a;->a:Lcom/join/mgps/activity/message/MessageMainActivity;

    iget-object v2, v1, Lcom/join/mgps/activity/message/MessageMainActivity;->n:Landroid/content/Context;

    iget-object v1, v1, Lcom/join/mgps/activity/message/MessageMainActivity;->m:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_2
    :goto_0
    return-void
.end method
