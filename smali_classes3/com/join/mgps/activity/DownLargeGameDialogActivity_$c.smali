.class Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;
.super Ljava/lang/Object;
.source "DownLargeGameDialogActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DownLargeGameDialogActivity_;->G0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/DownLargeGameDialogActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DownLargeGameDialogActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;->c:Lcom/join/mgps/activity/DownLargeGameDialogActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;->c:Lcom/join/mgps/activity/DownLargeGameDialogActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/DownLargeGameDialogActivity_$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/DownLargeGameDialogActivity_;->H0(Lcom/join/mgps/activity/DownLargeGameDialogActivity_;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
