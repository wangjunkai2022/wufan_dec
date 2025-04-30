.class public final synthetic Lcom/join/mgps/activity/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/join/mgps/dialog/j$c;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/FriendActivity;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/u;->a:Lcom/join/mgps/activity/FriendActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/u;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    iget-object v0, p0, Lcom/join/mgps/activity/u;->a:Lcom/join/mgps/activity/FriendActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/u;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/FriendActivity;->O0(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method
