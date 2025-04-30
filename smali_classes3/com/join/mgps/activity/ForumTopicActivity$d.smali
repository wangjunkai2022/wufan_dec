.class Lcom/join/mgps/activity/ForumTopicActivity$d;
.super Ljava/lang/Object;
.source "ForumTopicActivity.java"

# interfaces
.implements Lcom/join/android/app/component/video/MyVideoView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumTopicActivity;->e1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumTopicActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumTopicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$d;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "onScreenChanged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullscreen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$d;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumTopicActivity;->J0()V

    return v2
.end method
