.class Lcom/join/mgps/activity/ShareWebActivity$o$f;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$o;->playVideo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$f;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$o$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$o$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    invoke-direct {v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->n(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->h(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$o$f;->c:Lcom/join/mgps/activity/ShareWebActivity$o;

    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$o;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/adapter/FullScreenActivity_;->G0(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
