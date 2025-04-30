.class Lcom/join/mgps/activity/HavenDownActivity$a$b;
.super Ljava/lang/Object;
.source "HavenDownActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HavenDownActivity$a;->c(Lcom/join/mgps/activity/HavenDownActivity$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/HavenForumListbean;

.field final synthetic b:Lcom/join/mgps/activity/HavenDownActivity$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HavenDownActivity$a;Lcom/join/mgps/dto/HavenForumListbean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->b:Lcom/join/mgps/activity/HavenDownActivity$a;

    iput-object p2, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->a:Lcom/join/mgps/dto/HavenForumListbean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->b:Lcom/join/mgps/activity/HavenDownActivity$a;

    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity$a;->a:Lcom/join/mgps/activity/HavenDownActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/HavenDownActivity;->o:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/HavenDownActivity$a$b;->a:Lcom/join/mgps/dto/HavenForumListbean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/HavenForumListbean;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goFormDetial(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
