.class public Lcom/join/mgps/activity/IntroductionActivity$e;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/IntroductionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$e;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/IntroductionActivity$e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public openImage([Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/activity/IntroductionActivity$e;->b:Lcom/join/mgps/activity/IntroductionActivity;

    const-class v2, Lcom/join/mgps/activity/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "image_index"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$e;->b:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
