.class Lcom/join/mgps/activity/GameInformationActivityV2$n$a;
.super Ljava/lang/Object;
.source "GameInformationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2$n;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivityV2$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intentCommentList()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->I0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->I0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$b;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->I0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
