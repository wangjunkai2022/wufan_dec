.class Lcom/join/mgps/activity/ShareWebActivity_$e0;
.super Ljava/lang/Object;
.source "ShareWebActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity_;->A1(Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_$e0;->c:Lcom/join/mgps/activity/ShareWebActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity_$e0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/ShareWebActivity_$e0;->b:Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_$e0;->c:Lcom/join/mgps/activity/ShareWebActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity_$e0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/ShareWebActivity_$e0;->b:Lcom/join/mgps/Util/IntentDateBean;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/ShareWebActivity_;->r2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
