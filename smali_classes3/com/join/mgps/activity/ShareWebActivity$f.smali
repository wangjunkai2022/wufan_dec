.class Lcom/join/mgps/activity/ShareWebActivity$f;
.super Ljava/lang/Object;
.source "ShareWebActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$f;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$f;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$f;->b:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity$f;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/ShareWebActivity;->A1(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
