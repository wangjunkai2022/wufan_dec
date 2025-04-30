.class Lcom/join/mgps/Util/g1$a;
.super Ljava/lang/Object;
.source "NotificationAdmain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g1;->f(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/g1;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g1$a;->a:Lcom/join/mgps/Util/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 1
    iget-object v3, p0, Lcom/join/mgps/Util/g1$a;->a:Lcom/join/mgps/Util/g1;

    invoke-static {v3}, Lcom/join/mgps/Util/g1;->a(Lcom/join/mgps/Util/g1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    iget-object v2, p0, Lcom/join/mgps/Util/g1$a;->a:Lcom/join/mgps/Util/g1;

    invoke-static {v2}, Lcom/join/mgps/Util/g1;->b(Lcom/join/mgps/Util/g1;)V

    const-wide/16 v2, 0x1f4

    .line 3
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/Util/g1$a;->a:Lcom/join/mgps/Util/g1;

    invoke-static {v1}, Lcom/join/mgps/Util/g1;->a(Lcom/join/mgps/Util/g1;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210~"

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/Util/g1$a;->a:Lcom/join/mgps/Util/g1;

    invoke-static {v0}, Lcom/join/mgps/Util/g1;->b(Lcom/join/mgps/Util/g1;)V

    return-void
.end method
