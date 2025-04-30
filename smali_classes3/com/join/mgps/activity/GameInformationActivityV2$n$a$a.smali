.class Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;
.super Ljava/lang/Object;
.source "GameInformationActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->intentCommentList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->E0(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->n1(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n$a;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2$n;->a:Lcom/join/mgps/activity/GameInformationActivityV2;

    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivityV2;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
