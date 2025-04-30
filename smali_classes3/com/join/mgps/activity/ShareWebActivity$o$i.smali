.class Lcom/join/mgps/activity/ShareWebActivity$o$i;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->shareToOneImageOrText(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->d:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->b:Ljava/lang/String;

    iput p4, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->d:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->a:I

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->b:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$i;->c:I

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/r;->q(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method
