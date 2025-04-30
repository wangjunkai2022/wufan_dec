.class Lcom/join/mgps/activity/ForumTopicActivity$a;
.super Ljava/lang/Object;
.source "ForumTopicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$a;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumTopicActivity$a;->a:Lcom/join/mgps/activity/ForumTopicActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ForumTopicActivity;->d1(Z)V

    return-void
.end method
