.class Lcom/join/mgps/activity/ShareWebActivity$o$k;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->shareFromJson(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$k;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$o$k;->b:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$k;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r;->s(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
