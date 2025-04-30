.class Lcom/join/mgps/activity/posting/PostingActivity$g;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->D0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/q1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->D0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/q1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/q1;->d()V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    new-instance v0, Lcom/join/mgps/dialog/q1;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->F0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/q1;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V

    invoke-static {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->E0(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dialog/q1;)Lcom/join/mgps/dialog/q1;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->D0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/q1;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/posting/PostingActivity;->b:Lcom/join/mgps/Util/b;

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/posting/PostingActivity;->G0(Lcom/join/mgps/activity/posting/PostingActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dialog/q1;->g(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$g;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->D0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/q1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dialog/q1;->h()V

    return-void
.end method
